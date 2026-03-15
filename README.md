# Bubbles of Interpersonal Interaction

## Description

This repository contains the Python tracking script for the "Bubbles of Interpersonal Interaction" project, an interactive sonification installation that maps interpersonal proximity and movement to real-time sound. The script captures live video from a webcam, performs real-time person detection using a YOLO-based model, tracks individuals across frames using centroid-based nearest-neighbour matching, and streams tracking data via OSC to a Max/MSP patch for sound synthesis.

The script detects people in each frame, computes normalized centroid positions and bounding box dimensions, assigns persistent IDs to tracked individuals, calculates horizontal, vertical, and scalar speeds, and sends this information as OSC messages on port 53000. It also logs all tracking data to a CSV file with timestamps for post-hoc analysis and displays an annotated video feed for debugging.

The system is designed to track up to two people simultaneously, with tracking data normalized to 0-1 ranges for easy mapping in Max/MSP. A "primary person" is selected based on highest confidence, and absence detection ensures OSC values reset appropriately when no one is in frame.

## Prerequisites

Before running the script, ensure you have the following dependencies installed:

- Python 3.7 or higher
- OpenCV (`pip install opencv-python`)
- Ultralytics YOLO (`pip install ultralytics`)
- Python-OSC (`pip install python-osc`)
- Pre-trained YOLO model (the script expects `yolo26x.pt` in the same directory)
- PyRealSense2 (`pip install pyrealsense2`) (optional, if using Intel RealSense cameras instead of webcam)

## Installation

1. Clone this repository:
   ```
   git clone https://github.com/yourusername/bubbles-interpersonal-interaction.git
   cd bubbles-interpersonal-interaction
   ```

2. Install the required Python packages:
   ```
   pip install opencv-python ultralytics python-osc
   ```

3. Download the pre-trained YOLO26x model file (`yolo26x.pt`) and place it in the same directory as `app.py`. This model is a version of YOLO optimized for person detection and is used as-is without additional training.

## Usage

Run the script using the following command:

```
python app.py
```

The webcam will activate, and you'll see a window showing the live video feed with bounding boxes and ID labels overlaid on detected people. The script will begin sending OSC messages immediately.

### OSC Output

The script sends the following OSC messages every frame:

**Global/primary addresses:**
- `/tracking/count` (int): number of people detected
- `/tracking/x` (float): normalized x-position of primary person (0-1)
- `/tracking/y` (float): normalized y-position of primary person (0-1)
- `/tracking/confidence` (float): detection confidence (0-1)
- `/tracking/bbox/w` (float): normalized bounding box width (0-1)
- `/tracking/bbox/h` (float): normalized bounding box height (0-1)
- `/tracking/speed` (float): scalar speed (normalized units/second)
- `/tracking/speed/x` (float): horizontal velocity
- `/tracking/speed/y` (float): vertical velocity
- `/tracking/present` (int): 1 if people detected, 0 otherwise

**Per-ID addresses** (for each tracked person):
- `/tracking/<id>/x` (float)
- `/tracking/<id>/y` (float)
- `/tracking/<id>/confidence` (float)
- `/tracking/<id>/speed` (float)
- `/tracking/<id>/bbox/w` (float)
- `/tracking/<id>/bbox/h` (float)

**Cue messages:**
- `/cue/40/go` (bang): sent when a person enters the frame
- `/cue/31/go` (bang): sent when all people leave the frame

### Controls

- Press `q` or `ESC` to exit the program
- The script automatically logs all tracking data to a CSV file named `tracking_log_YYYYMMDD_HHMMSS.csv`

## Customization

- **Confidence threshold**: Adjust the `conf >= 0.2` condition in the detection loop to change the minimum confidence for accepting detections.
- **Match distance**: Modify `MATCH_DISTANCE` (default 0.15) to control how close a detection must be to an existing track to maintain the same ID.
- **Reset threshold**: Change `position_reset_threshold` (default 10) to adjust how many frames of absence before primary values reset to zero.
- **ID limit**: The line `tid = tid % 2` forces IDs to 0 or 1 for compatibility with the Max patch. Remove or comment this line to allow more than two tracked IDs.

## Logging

The script creates a CSV log file with the following columns:
- timestamp: date and time with milliseconds
- num_people: number of people detected
- counter: frame counter
- person_id: tracked ID
- person_x, person_y: normalized centroid coordinates
- confidence: detection confidence
- bbox_w, bbox_h: normalized bounding box dimensions
- speed, speed_x, speed_y: velocity measurements
- event: ENTER/EXIT events when people appear or leave

## File Structure

- `app.py`: Main tracking script
- `yolo26x.pt`: Pre-trained YOLO model for person detection (not included, must be downloaded separately)
- `tracking_log_*.csv`: Automatically generated log files (created on each run)

## Troubleshooting

- **No camera feed**: Check webcam connection and ensure no other application is using the camera.
- **Model not found**: Verify that `yolo26x.pt` is in the same directory as `app.py`.
- **OSC not received**: Confirm that the Max patch is listening on port 53000 and that the IP address in the script (`127.0.0.1`) matches your setup.
- **Poor detection**: Adjust lighting in the room or modify the confidence threshold.

## Acknowledgments

- This script is based on Ultralytics' YOLO repository and uses their excellent object detection framework.
- Special thanks to the Ultralytics team for their work on YOLOv8 and other object detection models.
- The tracking approach is inspired by centroid-based nearest-neighbour tracking methods commonly used in computer vision applications.
- The OSC communication protocol follows the Open Sound Control specification, originally developed by Adrian Freed and Matt Wright.

## Additional Resources

- [Ultralytics YOLO Documentation](https://docs.ultralytics.com/)
- [Open Sound Control](http://opensoundcontrol.org/)
- For training custom YOLO models, refer to the [Ultralytics documentation](https://docs.ultralytics.com/modes/train/)
- Models and pre-trained weights: [Ultralytics Models](https://docs.ultralytics.com/tasks/detect/#models)

## License

This project is intended for academic and research purposes. Please cite the original YOLO authors and this repository if you use this code in your work.
