# 1. Open camera & loads YOLO model

#2. Detection every frame
# px, py = centroid of bounding box, normalized (0 = left/top, 1 = right/bottom)
# bw, bh = box width & height normalized to frame size; used as proxy for depth
# conf = confidence score and threshold can be adjusted

# 3. Match detections to existing tracks (simple ID tracking)
# centroid-based nearest-neighbour matching
# tracker keeps small dict of existing IDs, then for each new detection finds
# nearest previous track within a matching distance. If one close enough assign detection to that same ID, otherwise new ID created
# simple, fast, and easy to understand but can glitch out if people bigger people overlap with smaller people or people move out of frame

# 4. Compute speed
# signed horizontal and vertical speed and combined scalar speed
# speed = normalized position units per second
# if no previous time it carries previous speed values BUT this creates glitch in Max

# 5. Primary person snapshot for global OSC
# highest confidence as primary if no people are detected it zeroes so Max gets an absent notifier

# 6. OSC messages every frame
# 2 types: global addresses & per-ID addresses
# ‘tid = tid % 2’ = limits IDs to 0/1 for Max patch so no more people

# 7. Logging & visual feedback
# writes everything to CSV log with timestamps for any analysis after
# OpenCV window camera with all annotations
# simple counter which increments, just theatrics but can be used for further automation


import cv2
import csv
import math
import time
from datetime import datetime
from ultralytics import YOLO
from pythonosc import udp_client
from pythonosc import osc_message_builder

# OSC Setup
osc_ip = "127.0.0.1"
osc_port = 53000  # default QLab OSC port — Max should also listen on this port
client = udp_client.UDPClient(osc_ip, osc_port)

# Logging setup — writes a CSV file next to this script
log_filename = f"tracking_log_{datetime.now().strftime('%Y%m%d_%H%M%S')}.csv"
log_file = open(log_filename, "w", newline="")
csv_writer = csv.writer(log_file)
csv_writer.writerow(["timestamp", "num_people", "counter", "person_id",
                     "person_x", "person_y", "confidence", "bbox_w", "bbox_h",
                     "speed", "speed_x", "speed_y", "event"])

def log_frame(num_people, counter, tracked, event=""):
    ts = datetime.now().strftime("%Y-%m-%d %H:%M:%S.%f")[:-3]
    if tracked:
        for i, (tid, info) in enumerate(tracked.items()):
            csv_writer.writerow([ts, num_people, counter, tid,
                                 f"{info['x']:.4f}", f"{info['y']:.4f}", f"{info['conf']:.4f}",
                                 f"{info['bw']:.4f}", f"{info['bh']:.4f}",
                                 f"{info['speed']:.4f}", f"{info['speed_x']:.4f}", f"{info['speed_y']:.4f}",
                                 event if i == 0 else ""])
    else:
        csv_writer.writerow([ts, num_people, counter, "", "", "", "", "", "", "", "", "", event])
    log_file.flush()
    summary = " | ".join(
        f"id{tid}=({info['x']:.2f},{info['y']:.2f}) c={info['conf']:.2f} spd={info['speed']:.3f}"
        for tid, info in tracked.items()
    )
    if event:
        print(f"[{ts}] EVENT: {event} | people={num_people} counter={counter} | {summary}")
    else:
        print(f"[{ts}] people={num_people} counter={counter} | {summary}")

def send_osc(address, *args):
    msg = osc_message_builder.OscMessageBuilder(address=address)
    for arg in args:
        msg.add_arg(arg)
    client.send(msg.build())

# ---------------------------------------------------------------------------
# Person ID tracking  (centroid-based nearest-neighbour matching)
# ---------------------------------------------------------------------------
next_person_id: int = 0
tracked_people: dict = {}   # { id: {x, y, conf, bw, bh, time, speed_x, speed_y, speed} }
MATCH_DISTANCE: float = 0.15   # max normalised distance to keep the same ID

def match_detections(people: list, current_time: float) -> dict:
    """Match new detections to existing tracks; assign new IDs to unmatched ones.
    Tracks with no matching detection this frame are dropped immediately."""
    global next_person_id, tracked_people
    new_tracked: dict = {}
    used: set = set()

    # Try to carry every existing track forward
    for tid, prev in tracked_people.items():
        best_idx, best_dist = None, float("inf")
        for det_idx, (px, py, c, bw, bh) in enumerate(people):
            if det_idx in used:
                continue
            dist = math.hypot(px - prev["x"], py - prev["y"])
            if dist < best_dist and dist < MATCH_DISTANCE:
                best_dist = dist
                best_idx = det_idx

        if best_idx is not None:
            px, py, c, bw, bh = people[best_idx]
            dt = current_time - prev["time"]
            if dt > 0:
                # v = Δposition / Δtime  (normalised units/second)
                speed_x = (px - prev["x"]) / dt
                speed_y = (py - prev["y"]) / dt
                speed   = math.hypot(speed_x, speed_y)
            else:
                speed_x, speed_y, speed = prev["speed_x"], prev["speed_y"], prev["speed"]
            new_tracked[tid] = dict(x=px, y=py, conf=c, bw=bw, bh=bh,
                                    time=current_time,
                                    speed_x=speed_x, speed_y=speed_y, speed=speed)
            used.add(best_idx)

    # Unmatched detections become brand-new tracks
    for det_idx, (px, py, c, bw, bh) in enumerate(people):
        if det_idx not in used:
            new_tracked[next_person_id] = dict(x=px, y=py, conf=c, bw=bw, bh=bh,
                                               time=current_time,
                                               speed_x=0.0, speed_y=0.0, speed=0.0)
            next_person_id += 1
    tracked_people = new_tracked
    return tracked_people

# ---------------------------------------------------------------------------
# Load model & camera
# ---------------------------------------------------------------------------
model = YOLO("yolo26x.pt")
webcamera = cv2.VideoCapture(0)
frame_w = webcamera.get(cv2.CAP_PROP_FRAME_WIDTH)
frame_h = webcamera.get(cv2.CAP_PROP_FRAME_HEIGHT)

counter                  = 0
absence_counter          = 0
person_present           = False
person_absent            = False
enter_threshold          = 3    # frames before triggering fade-up
exit_threshold           = 5    # frames before triggering QLab cues
position_reset_threshold = 10   # frames of absence before x/y/speed freeze back to 0

# "Last known" primary values — held across absence until reset threshold is hit
last_primary: dict = dict(x=0.0, y=0.0, conf=0.0, bw=0.0, bh=0.0,
                          speed=0.0, speed_x=0.0, speed_y=0.0)

#print("Starting detection... Press 'q' to quit")
#print(f"Sending OSC to {osc_ip}:{osc_port}")
#print(f"Logging to: {log_filename}\n")
#print("Confidence threshold : 0.2  (detections below this are ignored)")
#print(f"Position reset after : {position_reset_threshold} consecutive frames without a person\n")
#print("Max / QLab OSC addresses:")
#print("  /tracking/count         i  — number of people detected")
#print("  /tracking/x             f  — primary person X (0.0=left,  1.0=right)")
#print("  /tracking/y             f  — primary person Y (0.0=top,   1.0=bottom)")
#print("  /tracking/confidence    f  — detection confidence (0.0–1.0)")
#print("  /tracking/speed         f  — primary person speed (norm units/s)")
#print("  /tracking/speed/x       f  — primary person horizontal speed (signed)")
#print("  /tracking/speed/y       f  — primary person vertical   speed (signed)")
#print("  /tracking/bbox/w        f  — bounding box width  (normalised)")
#print("  /tracking/bbox/h        f  — bounding box height (normalised)")
#print("  /tracking/present       i  — 1 if confirmed present, 0 if absent")
#print("  /tracking/<id>/x        f  — X of person with persistent ID <id>")
#print("  /tracking/<id>/y        f  — Y of person with persistent ID <id>")
#print("  /tracking/<id>/confidence f — confidence of person <id>")
#print("  /tracking/<id>/speed    f  — speed of person <id>")
#print("  /tracking/<id>/bbox/w   f  — bbox width  of person <id>")
#print("  /tracking/<id>/bbox/h   f  — bbox height of person <id>\n")

while True:
    now     = time.time()
    success, frame = webcamera.read()
    if not success:
        print("Failed to read from webcam")
        break

    # --- Detect people (conf ≥ 0.2, class 0 = person) -----------------------
    results    = model(frame, classes=0, conf=0.2, imgsz=480)
    num_people = len(results[0].boxes)

    people = []
    if num_people > 0:
        boxes = results[0].boxes
        sorted_indices = boxes.conf.argsort(descending=True).tolist()
        for idx in sorted_indices:
            x1, y1, x2, y2 = boxes.xyxy[idx].tolist()
            px = ((x1 + x2) / 2) / frame_w
            py = ((y1 + y2) / 2) / frame_h
            bw = (x2 - x1) / frame_w
            bh = (y2 - y1) / frame_h
            c  = float(boxes.conf[idx])
            people.append((px, py, c, bw, bh))

    # --- Update persistent ID tracks -----------------------------------------
    current_tracked = match_detections(people, now)

    # --- Primary person (highest-confidence track) ----------------------------
    if current_tracked:
        primary      = max(current_tracked.values(), key=lambda d: d["conf"])
        last_primary = {k: primary[k] for k in
                        ("x", "y", "conf", "bw", "bh", "speed", "speed_x", "speed_y")}
        absence_counter = 0
    else:
        absence_counter += 1
        if absence_counter >= position_reset_threshold:
            last_primary = dict(x=0.0, y=0.0, conf=0.0, bw=0.0, bh=0.0,
                                speed=0.0, speed_x=0.0, speed_y=0.0)

    px0    = last_primary["x"]
    py0    = last_primary["y"]
    conf0  = last_primary["conf"]
    bw0    = last_primary["bw"]
    bh0    = last_primary["bh"]
    spd0   = last_primary["speed"]
    spd_x0 = last_primary["speed_x"]
    spd_y0 = last_primary["speed_y"]

    # --- Continuous OSC every frame ------------------------------------------
    send_osc("/tracking/count",       num_people)
    send_osc("/tracking/x",           float(px0))
    send_osc("/tracking/y",           float(py0))
    send_osc("/tracking/confidence",  float(conf0))
    send_osc("/tracking/speed",       float(spd0))
    send_osc("/tracking/speed/x",     float(spd_x0))
    send_osc("/tracking/speed/y",     float(spd_y0))
    send_osc("/tracking/bbox/w",      float(bw0))
    send_osc("/tracking/bbox/h",      float(bh0))
    send_osc("/tracking/present",     1 if person_present else 0)

    # Per-ID OSC messages (persistent IDs survive brief re-detections)
    for tid, info in current_tracked.items():
        #TOCHANGE FORCED TEST
        tid = tid%2
        send_osc(f"/tracking/{tid}/x",           float(info["x"]))
        send_osc(f"/tracking/{tid}/y",           float(info["y"]))
        send_osc(f"/tracking/{tid}/confidence",  float(info["conf"]))
        send_osc(f"/tracking/{tid}/speed",       float(info["speed"]))
        send_osc(f"/tracking/{tid}/bbox/w",      float(info["bw"]))
        send_osc(f"/tracking/{tid}/bbox/h",      float(info["bh"]))

    event = ""

    if num_people > 0:
        counter += 1
        person_absent = False

        if counter == enter_threshold:
            event = "ENTER (cue 40)"
            send_osc("/cue/40/go")
            person_present = True

        if counter == exit_threshold:
            event = "STAY (cue 31)"
            send_osc("/cue/31/go")

    else:
        if person_present and not person_absent:
            event = "EXIT (cue 39+41)"
            send_osc("/cue/39/go")
            send_osc("/cue/41/go")
            person_absent = True
            person_present = False
        counter = 0

    log_frame(num_people, counter, current_tracked, event)

    # --- Annotate and display ------------------------------------------------
    annotated = results[0].plot()
    info_text = (f"People: {num_people} | Counter: {counter} "
                 f"| X: {px0:.2f} Y: {py0:.2f} | Speed: {spd0:.3f}")
    cv2.putText(annotated, info_text, (10, 30),
                cv2.FONT_HERSHEY_SIMPLEX, 0.8, (0, 255, 0), 2)
    cv2.imshow("Live Camera", annotated)

    if cv2.waitKey(1) == ord("q"):
        break

webcamera.release()
cv2.destroyAllWindows()
log_file.close()
print(f"\nDetection stopped. Log saved to: {log_filename}")

# # pip install opencv-python

# import cv2
# from ultralytics import YOLO
# from pythonosc import udp_client

# # Load a model
# model = YOLO("yolo11x-seg.pt")  # load an official model

# webcamera = cv2.VideoCapture(0)
# counter = 0

# # So when person enters counter starts
# # When counter starts fade up (3) 32
# # When counter reaches a target number stop (5) we send qlab (1+2)
# # When counter stops fade down (4)
# # Threshold for changing should be a number of counts that we need to determine

# while True:
#     success, frame = webcamera.read()
    
#     results = model(frame, classes=0, conf=0.05, imgsz=480)
#     num_people = len(results[0].boxes)
#     print(num_people)
#     cv2.imshow("Live Camera", results[0].plot())

#     if cv2.waitKey(1) == ord('q'):
#         break

# webcamera.release()
# cv2.destroyAllWindows()


# Predict with the model
# results = model("https://ultralytics.com/images/boats.jpg")  # predict on an image

# Access the results
# for result in results:
#     xywhr = result.obb.xywhr  # center-x, center-y, width, height, angle (radians)
#     xyxyxyxy = result.obb.xyxyxyxy  # polygon format with 4-points
#     names = [result.names[cls.item()] for cls in result.obb.cls.int()]  # class name of each box
#     confs = result.obb.conf  # confidence score of each box

# For Realsense camera
   # def initialize_realsense():
    #    import pyrealsense2 as rs
    #    pipeline = rs.pipeline()
     #   camera_aconfig = rs.config()
      #  camera_aconfig.enable_stream(rs.stream.depth, *config.DEPTH_CAMERA_RESOLUTION, rs.format.z16, config.DEPTH_CAMERA_FPS)
     #   camera_aconfig.enable_stream(rs.stream.color, *config.COLOR_CAMERA_RESOLUTION, rs.format.bgr8, config.COLOR_CAMERA_FPS)
     #   pipeline.start(camera_aconfig)
      #  return pipeline
# try:
#     # Try to initialize RealSense Camera
#     camera = initialize_realsense()
#     get_frame = get_frame_realsense
# except Exception as e:
#     print("RealSense camera not found, using default webcam.")
#     camera = initialize_webcam()
#     get_frame = get_frame_webcam

# Function to get frames from RealSense
# def get_frame_realsense(pipeline):
#     import pyrealsense2 as rs
#     frames = pipeline.wait_for_frames()
#     depth_frame = frames.get_depth_frame()
#     color_frame = frames.get_color_frame()
#     if not depth_frame or not color_frame:
#         return None, None
#     depth_image = np.asanyarray(depth_frame.get_data())
#     color_image = np.asanyarray(color_frame.get_data())
#     return depth_image, color_image

# # Function to get frame from webcam
# def get_frame_webcam(cap):
#     ret, frame = cap.read()
#     return None, frame if ret else None
