{
    "patcher": {
        "fileversion": 1,
        "appversion": {
            "major": 9,
            "minor": 1,
            "revision": 2,
            "architecture": "x64",
            "modernui": 1
        },
        "classnamespace": "box",
        "rect": [ 34.0, 77.0, 1980.0, 1121.0 ],
        "boxes": [
            {
                "box": {
                    "id": "obj-143",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1513.0, 1302.8000195026398, 150.0, 34.0 ],
                    "text": "only change when value change avoid redundancy"
                }
            },
            {
                "box": {
                    "id": "obj-132",
                    "linecount": 3,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 396.0, 689.0, 150.0, 48.0 ],
                    "text": "multiply all objects by amp. envelopes / modulation signals"
                }
            },
            {
                "box": {
                    "id": "obj-122",
                    "linecount": 5,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1728.0379518270493, 1406.7825808525085, 150.0, 75.0 ],
                    "text": "bells here are hold in buffer and loaded via download, plays simple bells when close together, but due latency get issues"
                }
            },
            {
                "box": {
                    "id": "obj-118",
                    "linecount": 6,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1909.0, 880.0, 150.0, 89.0 ],
                    "text": "all abl.* are ABL from SDT for creating physically inspired textures, e.g. spectral resonators, ensembles, swarm-like textures, channel equaliz."
                }
            },
            {
                "box": {
                    "id": "obj-115",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1596.0, 278.4444580078125, 150.0, 34.0 ],
                    "text": "math. forms shaping values"
                }
            },
            {
                "box": {
                    "id": "obj-110",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 697.3037877082825, 534.8354358673096, 150.0, 34.0 ],
                    "text": "cycle = simple oscillator & oscbank = bank of oscillat."
                }
            },
            {
                "box": {
                    "id": "obj-106",
                    "linecount": 4,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 214.0, 557.7778053283691, 150.0, 62.0 ],
                    "text": "this means instead of instantly, you get a timed glide from current to new in 500 ms"
                }
            },
            {
                "box": {
                    "id": "obj-89",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 886.666708946228, 440.66668796539307, 150.0, 34.0 ],
                    "text": "mtof chains for harmonic mappings"
                }
            },
            {
                "box": {
                    "id": "obj-85",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 708.0, 366.0, 150.0, 34.0 ],
                    "text": "maps x (0-1) to MIDI note numbers 48-72 (C3-C5)"
                }
            },
            {
                "box": {
                    "id": "obj-75",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 652.0, 180.0, 150.0, 34.0 ],
                    "text": "scale remap number from one range to anotherc"
                }
            },
            {
                "box": {
                    "id": "obj-59",
                    "linecount": 3,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1337.5556240081787, 95.55556011199951, 150.0, 48.0 ],
                    "text": "split incoming OSC into separate outputs for listed addresses"
                }
            },
            {
                "box": {
                    "id": "obj-69",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 2008.6956689357758, 1273.9130541086197, 150.0, 20.0 ],
                    "text": "Click it"
                }
            },
            {
                "box": {
                    "id": "obj-55",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 537.6811639070511, 826.0869634151459, 150.0, 20.0 ],
                    "text": "Change to 440 here ->"
                }
            },
            {
                "box": {
                    "id": "obj-105",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 1168.0, 1649.0, 31.0, 22.0 ],
                    "text": "sig~"
                }
            },
            {
                "box": {
                    "id": "obj-103",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1255.5, 1656.0, 152.0, 22.0 ],
                    "text": "expr pow($f1\\,4) * ($f1>0.5)"
                }
            },
            {
                "box": {
                    "id": "obj-98",
                    "maxclass": "newobj",
                    "numinlets": 6,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1255.5, 1601.0, 103.0, 22.0 ],
                    "text": "scale 0. 537.4 1 0"
                }
            },
            {
                "box": {
                    "id": "obj-165",
                    "maxclass": "newobj",
                    "numinlets": 6,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 2112.790622115135, 1206.9767010211945, 114.0, 22.0 ],
                    "text": "scale 0 10000 -70 0"
                }
            },
            {
                "box": {
                    "id": "obj-159",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 2112.790622115135, 1166.279028058052, 41.0, 22.0 ],
                    "text": "pow 2"
                }
            },
            {
                "box": {
                    "id": "obj-141",
                    "maxclass": "newobj",
                    "numinlets": 6,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 2112.790622115135, 1110.4650765657425, 113.0, 22.0 ],
                    "text": "scale 0 537.4 0 100"
                }
            },
            {
                "box": {
                    "id": "obj-163",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1593.6000237464905, 1401.5, 31.0, 22.0 ],
                    "text": "stop"
                }
            },
            {
                "box": {
                    "id": "obj-136",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 3,
                    "outlettype": [ "bang", "bang", "" ],
                    "patching_rect": [ 1529.5, 1356.9130177497864, 44.0, 22.0 ],
                    "text": "sel 1 0"
                }
            },
            {
                "box": {
                    "id": "obj-129",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1529.5, 1401.5, 55.0, 22.0 ],
                    "text": "startloop"
                }
            },
            {
                "box": {
                    "id": "obj-35",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "int", "int" ],
                    "patching_rect": [ 1529.5, 1272.9412295818329, 48.0, 22.0 ],
                    "text": "change"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-232",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1472.6026326417923, 389.87341260910034, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-226",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 2,
                    "outlettype": [ "signal", "signal" ],
                    "patching_rect": [ 1529.3477969169617, 1459.7825808525085, 152.0, 22.0 ],
                    "text": "groove~ tubebells @loop 1"
                }
            },
            {
                "box": {
                    "id": "obj-218",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "patching_rect": [ 1529.5, 1219.0, 42.0, 22.0 ],
                    "text": "< 100."
                }
            },
            {
                "box": {
                    "id": "obj-213",
                    "maxclass": "ezdac~",
                    "numinlets": 2,
                    "numoutlets": 0,
                    "patching_rect": [ 966.0, 941.0, 45.0, 45.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-187",
                    "lastchannelcount": 0,
                    "maxclass": "live.gain~",
                    "numinlets": 2,
                    "numoutlets": 5,
                    "outlettype": [ "signal", "signal", "", "float", "list" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 1078.0000321269035, 1406.6667085886002, 48.0, 136.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_longname": "live.gain~[5]",
                            "parameter_mmax": 6.0,
                            "parameter_mmin": -70.0,
                            "parameter_modmode": 3,
                            "parameter_shortname": "live.gain~[4]",
                            "parameter_type": 0,
                            "parameter_unitstyle": 4
                        }
                    },
                    "varname": "live.gain~[5]"
                }
            },
            {
                "box": {
                    "id": "obj-186",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 1364.0000203251839, 1136.0000169277191, 29.5, 22.0 ],
                    "text": "/ 5."
                }
            },
            {
                "box": {
                    "attr": "freeze",
                    "id": "obj-176",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1416.0494958162308, 1613.3395349383354, 150.0, 22.0 ]
                }
            },
            {
                "box": {
                    "attr": "size",
                    "id": "obj-177",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1579.012471795082, 1540.5000229477882, 150.0, 22.0 ]
                }
            },
            {
                "box": {
                    "attr": "pitchshift",
                    "id": "obj-178",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1579.012471795082, 1517.0432309508324, 150.0, 22.0 ]
                }
            },
            {
                "box": {
                    "attr": "mod",
                    "id": "obj-179",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1416.0494958162308, 1588.6481749415398, 150.0, 22.0 ]
                }
            },
            {
                "box": {
                    "attr": "shimmer",
                    "id": "obj-180",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1579.012471795082, 1565.191382944584, 150.0, 22.0 ]
                }
            },
            {
                "box": {
                    "attr": "diffusion",
                    "id": "obj-181",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1416.0494958162308, 1565.191382944584, 150.0, 22.0 ]
                }
            },
            {
                "box": {
                    "attr": "decay",
                    "id": "obj-182",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1416.0494958162308, 1540.5000229477882, 150.0, 22.0 ]
                }
            },
            {
                "box": {
                    "attr": "mix",
                    "id": "obj-183",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1579.012471795082, 1597.0, 150.0, 22.0 ]
                }
            },
            {
                "box": {
                    "attr": "damping",
                    "id": "obj-184",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1416.0494958162308, 1517.0432309508324, 150.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-185",
                    "maxclass": "newobj",
                    "numinlets": 7,
                    "numoutlets": 2,
                    "outlettype": [ "signal", "signal" ],
                    "patching_rect": [ 1070.8010852336884, 1316.279022693634, 120.0, 22.0 ],
                    "text": "abl.dsp.shimmer~"
                }
            },
            {
                "box": {
                    "id": "obj-174",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1680.2778644561768, 1276.0000190138817, 300.0, 22.0 ],
                    "text": "read /Users/marti/Downloads/Campane_tubolari-2.wav"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-170",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1441.7531459331512, 1232.8000183701515, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-168",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 1443.2000215053558, 1124.800016760826, 29.5, 22.0 ],
                    "text": "/ 5."
                }
            },
            {
                "box": {
                    "id": "obj-167",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 1533.6000228524208, 977.6000145673752, 29.5, 22.0 ],
                    "text": "!- 5."
                }
            },
            {
                "box": {
                    "drawpeaks": 1,
                    "id": "obj-166",
                    "maxclass": "multislider",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1638.0379518270493, 1043.9024639129639, 225.0, 140.0 ],
                    "setminmax": [ 0.10000000149011612, 5.0 ],
                    "setstyle": 5
                }
            },
            {
                "box": {
                    "id": "obj-164",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 1228.0, 1534.8836660385132, 29.5, 22.0 ],
                    "text": "*~"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "id": "obj-145",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1268.9265393018723, 1212.3299940228462, 151.20000225305557, 21.0 ],
                    "style": "helpfile_label",
                    "text": "forward at normal speed"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "id": "obj-147",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1187.0, 1266.8836660385132, 32.00000047683716, 23.0 ],
                    "text": "1"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "id": "obj-153",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1268.9265393018723, 1267.8836660385132, 45.60000067949295, 21.0 ],
                    "style": "helpfile_label",
                    "text": "pause"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "id": "obj-156",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1228.0, 1266.8836660385132, 32.00000047683716, 23.0 ],
                    "text": "0"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "id": "obj-157",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 1228.0, 1314.8836660385132, 44.0, 23.0 ],
                    "text": "sig~ 1"
                }
            },
            {
                "box": {
                    "id": "obj-135",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 2,
                    "outlettype": [ "signal", "signal" ],
                    "patching_rect": [ 1228.0, 1417.8836660385132, 152.0, 22.0 ],
                    "text": "groove~ tubebells @loop 1"
                }
            },
            {
                "box": {
                    "id": "obj-134",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "float", "bang" ],
                    "patching_rect": [ 1680.2778644561768, 1308.8000195026398, 97.0, 22.0 ],
                    "text": "buffer~ tubebells"
                }
            },
            {
                "box": {
                    "data": {
                        "clips": [
                            {
                                "absolutepath": "Campane_tubolari-2.wav",
                                "filename": "Campane_tubolari-2.wav",
                                "filekind": "audiofile",
                                "id": "u780004353",
                                "selection": [ 0.0, 1.0 ],
                                "loop": 0,
                                "content_state": {                                }
                            }
                        ]
                    },
                    "id": "obj-133",
                    "maxclass": "playlist~",
                    "mode": "basic",
                    "numinlets": 1,
                    "numoutlets": 5,
                    "outlettype": [ "signal", "signal", "signal", "", "dictionary" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1743.0379518270493, 1348.9130177497864, 150.0, 30.0 ],
                    "quality": "basic",
                    "saved_attribute_attributes": {
                        "candicane2": {
                            "expression": ""
                        },
                        "candicane3": {
                            "expression": ""
                        },
                        "candicane4": {
                            "expression": ""
                        },
                        "candicane5": {
                            "expression": ""
                        },
                        "candicane6": {
                            "expression": ""
                        },
                        "candicane7": {
                            "expression": ""
                        },
                        "candicane8": {
                            "expression": ""
                        }
                    }
                }
            },
            {
                "box": {
                    "id": "obj-128",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "signal", "signal" ],
                    "patching_rect": [ 1680.2778644561768, 1245.1219809055328, 166.0, 22.0 ],
                    "text": "abl.device.spectralresonator~"
                }
            },
            {
                "box": {
                    "id": "obj-124",
                    "maxclass": "newobj",
                    "numinlets": 4,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 1680.2778644561768, 1217.073199748993, 60.0, 22.0 ],
                    "text": "oscbank~"
                }
            },
            {
                "box": {
                    "id": "obj-123",
                    "linecount": 2,
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1425.6000212430954, 1017.6000151634216, 50.0, 36.0 ],
                    "text": "415.304698"
                }
            },
            {
                "box": {
                    "id": "obj-117",
                    "lastchannelcount": 0,
                    "maxclass": "live.gain~",
                    "numinlets": 2,
                    "numoutlets": 5,
                    "outlettype": [ "signal", "signal", "", "float", "list" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 1063.8243412971497, 1170.0, 48.0, 136.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_longname": "live.gain~[4]",
                            "parameter_mmax": 6.0,
                            "parameter_mmin": -70.0,
                            "parameter_modmode": 3,
                            "parameter_shortname": "live.gain~[4]",
                            "parameter_type": 0,
                            "parameter_unitstyle": 4
                        }
                    },
                    "varname": "live.gain~[4]"
                }
            },
            {
                "box": {
                    "id": "obj-114",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1264.8305386304855, 652.2778091430664, 150.0, 34.0 ],
                    "text": "Intervals harmonious at idx 0 and idx 7 "
                }
            },
            {
                "box": {
                    "id": "obj-112",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1154.5556135177612, 405.600006043911, 270.0, 20.0 ],
                    "text": "distance is between all of them used also for midi"
                }
            },
            {
                "box": {
                    "id": "obj-111",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1155.2000172138214, 380.00000566244125, 150.0, 20.0 ],
                    "text": "x0 is midi of first person"
                }
            },
            {
                "box": {
                    "drawpeaks": 1,
                    "id": "obj-109",
                    "maxclass": "multislider",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1566.6708625555038, 763.7847993373871, 225.0, 140.0 ],
                    "setminmax": [ 0.10000000149011612, 5.0 ],
                    "setstyle": 5
                }
            },
            {
                "box": {
                    "id": "obj-100",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1435.5556240081787, 566.166690826416, 52.0, 22.0 ],
                    "text": "$1 100"
                }
            },
            {
                "box": {
                    "id": "obj-95",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "patching_rect": [ 1435.5556240081787, 598.166690826416, 40.0, 22.0 ],
                    "text": "line"
                }
            },
            {
                "box": {
                    "id": "obj-94",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1596.0, 688.0, 143.0, 20.0 ],
                    "text": "Line to make it more fluid"
                }
            },
            {
                "box": {
                    "id": "obj-88",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 0,
                    "patching_rect": [ 1064.0, 1580.0432309508324, 55.0, 22.0 ],
                    "text": "dac~ 4 7"
                }
            },
            {
                "box": {
                    "id": "obj-23",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 0,
                    "patching_rect": [ 1843.4782257080078, 2252.17387008667, 84.0, 22.0 ],
                    "text": "ambipanning~"
                }
            },
            {
                "box": {
                    "id": "obj-80",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 1843.4782257080078, 2321.739086151123, 141.0, 22.0 ],
                    "text": "abl.dsp.modalresonator~"
                }
            },
            {
                "box": {
                    "id": "obj-77",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 1743.1708625555038, 895.7442786693573, 120.0, 22.0 ],
                    "text": "abl.dsp.harmonicfm~"
                }
            },
            {
                "box": {
                    "id": "obj-73",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 1843.4782257080078, 2291.304304122925, 93.0, 22.0 ],
                    "text": "abl.dsp.swarm~"
                }
            },
            {
                "box": {
                    "id": "obj-54",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 2093.333433151245, 344.44446086883545, 50.0, 22.0 ],
                    "text": "0."
                }
            },
            {
                "box": {
                    "id": "obj-24",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 2093.333433151245, 295.5555696487427, 50.0, 22.0 ],
                    "text": "0."
                }
            },
            {
                "box": {
                    "id": "obj-130",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1751.1111946105957, 122.22222805023193, 32.0, 22.0 ],
                    "text": "print"
                }
            },
            {
                "box": {
                    "id": "obj-127",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1985.8695273399353, 2497.82603931427, 50.0, 22.0 ],
                    "text": "/speed"
                }
            },
            {
                "box": {
                    "id": "obj-125",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 2127.1738724708557, 2421.7390842437744, 153.0, 22.0 ],
                    "text": "/tracking/present"
                }
            },
            {
                "box": {
                    "id": "obj-121",
                    "linecount": 3,
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 2045.6521348953247, 2395.6521282196045, 50.0, 50.0 ],
                    "text": "/tracking/163/bbox/h"
                }
            },
            {
                "box": {
                    "id": "obj-119",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "float" ],
                    "patching_rect": [ 1847.8260517120361, 2366.3043026924133, 63.0, 22.0 ],
                    "text": "unpack s f"
                }
            },
            {
                "box": {
                    "id": "obj-107",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 5,
                    "outlettype": [ "", "", "", "", "" ],
                    "patching_rect": [ 1847.8260517120361, 2408.6956062316895, 182.0, 22.0 ],
                    "saved_object_attributes": {
                        "legacyoutputorder": 0
                    },
                    "text": "regexp ^(/tracking/)([^/]+)(/[^/]+)$"
                }
            },
            {
                "box": {
                    "id": "obj-104",
                    "linecount": 2,
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1790.217357158661, 2644.565166950226, 50.0, 36.0 ],
                    "text": "/tracking/0/h"
                }
            },
            {
                "box": {
                    "id": "obj-102",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 1822.8260521888733, 2602.1738634109497, 194.0, 22.0 ],
                    "text": "combine /tracking/ 0 /x @triggers 1"
                }
            },
            {
                "box": {
                    "id": "obj-101",
                    "linecount": 2,
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 2083.6956124305725, 2530.4347343444824, 50.0, 36.0 ],
                    "text": "/tracking/25/x"
                }
            },
            {
                "box": {
                    "id": "obj-99",
                    "maxclass": "number",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 2201.086914539337, 2470.652126789093, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-97",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 2114.1303944587708, 2502.1738653182983, 194.0, 22.0 ],
                    "text": "combine /tracking/ 0 /x @triggers 1"
                }
            },
            {
                "box": {
                    "id": "obj-96",
                    "maxclass": "number",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1907.6086592674255, 2564.130385875702, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-92",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 4,
                    "outlettype": [ "", "int", "", "" ],
                    "patching_rect": [ 1888.043442249298, 2453.2608227729797, 81.0, 22.0 ],
                    "text": "unpack s i s s"
                }
            },
            {
                "box": {
                    "id": "obj-90",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "patching_rect": [ 1907.6086592674255, 2526.086908340454, 29.5, 22.0 ],
                    "text": "% 2"
                }
            },
            {
                "box": {
                    "id": "obj-26",
                    "linecount": 10,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1333.333396911621, 506.666690826416, 69.8630086183548, 144.0 ],
                    "text": "Coll index\n\n0, 0;\n1, 7;\n2, 4;\n3, 5;\n4, 9;\n5, 2;\n6, 11;\n7, 6;"
                }
            },
            {
                "box": {
                    "id": "obj-44",
                    "maxclass": "newobj",
                    "numinlets": 6,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 2451.111227989197, 171.1111192703247, 107.0, 22.0 ],
                    "text": "scale 0. 2. -15. 15."
                }
            },
            {
                "box": {
                    "id": "obj-45",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 2455.555672645569, 106.66667175292969, 41.0, 22.0 ],
                    "text": "abs 0."
                }
            },
            {
                "box": {
                    "id": "obj-46",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 2451.111227989197, 237.77778911590576, 101.0, 22.0 ],
                    "text": "prepend highgain"
                }
            },
            {
                "box": {
                    "id": "obj-27",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 2311.1112213134766, 577.7778053283691, 29.5, 22.0 ],
                    "text": "*~"
                }
            },
            {
                "box": {
                    "id": "obj-30",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 2242.2223291397095, 577.7778053283691, 29.5, 22.0 ],
                    "text": "*~"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "format": 6,
                    "id": "obj-37",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 2411.111226081848, 733.3333683013916, 50.0, 23.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-40",
                    "lastchannelcount": 0,
                    "maxclass": "live.gain~",
                    "numinlets": 2,
                    "numoutlets": 5,
                    "outlettype": [ "signal", "signal", "", "float", "list" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 2320.0001106262207, 664.4444761276245, 48.0, 136.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_longname": "live.gain~[3]",
                            "parameter_mmax": 6.0,
                            "parameter_mmin": -70.0,
                            "parameter_modmode": 3,
                            "parameter_shortname": "live.gain~",
                            "parameter_type": 0,
                            "parameter_unitstyle": 4
                        }
                    },
                    "varname": "live.gain~[3]"
                }
            },
            {
                "box": {
                    "id": "obj-43",
                    "maxclass": "ezdac~",
                    "numinlets": 2,
                    "numoutlets": 0,
                    "patching_rect": [ 2320.0001106262207, 871.1111526489258, 46.63312602043152, 46.63312602043152 ]
                }
            },
            {
                "box": {
                    "id": "obj-14",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 2393.33344745636, 226.6666774749756, 41.0, 22.0 ],
                    "text": "abs 0."
                }
            },
            {
                "box": {
                    "id": "obj-11",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 2120.0001010894775, 208.8888988494873, 41.0, 22.0 ],
                    "text": "abs 0."
                }
            },
            {
                "box": {
                    "id": "obj-212",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 2086.666766166687, 577.7778053283691, 29.5, 22.0 ],
                    "text": "*~"
                }
            },
            {
                "box": {
                    "id": "obj-211",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 2017.77787399292, 577.7778053283691, 29.5, 22.0 ],
                    "text": "*~"
                }
            },
            {
                "box": {
                    "id": "obj-210",
                    "maxclass": "newobj",
                    "numinlets": 6,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1824.0506089925766, 338.31225657463074, 107.0, 22.0 ],
                    "text": "scale 0. 2. -15. 15."
                }
            },
            {
                "box": {
                    "id": "obj-209",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 1824.0506089925766, 276.28694093227386, 41.0, 22.0 ],
                    "text": "abs 0."
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "format": 6,
                    "id": "obj-189",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 2184.4445486068726, 733.3333683013916, 50.0, 23.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-162",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1824.0506089925766, 406.66668605804443, 101.0, 22.0 ],
                    "text": "prepend highgain"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "format": 6,
                    "id": "obj-158",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 2262.222330093384, 311.1111259460449, 50.0, 23.0 ]
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-131",
                    "maxclass": "number~",
                    "mode": 2,
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "signal", "float" ],
                    "patching_rect": [ 2115.5556564331055, 406.66668605804443, 70.88607501983643, 22.0 ],
                    "sig": 0.0
                }
            },
            {
                "box": {
                    "id": "obj-137",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 2200.000104904175, 311.1111259460449, 45.0, 22.0 ],
                    "text": "$1 500"
                }
            },
            {
                "box": {
                    "id": "obj-138",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "signal", "bang" ],
                    "patching_rect": [ 2200.000104904175, 348.8889055252075, 34.0, 22.0 ],
                    "text": "line~"
                }
            },
            {
                "box": {
                    "id": "obj-139",
                    "maxclass": "newobj",
                    "numinlets": 6,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 2200.000104904175, 257.7777900695801, 100.0, 22.0 ],
                    "text": "scale 0. 2. 0. 0.1."
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-140",
                    "maxclass": "number~",
                    "mode": 2,
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "signal", "float" ],
                    "patching_rect": [ 1951.1112041473389, 406.66668605804443, 70.88607501983643, 22.0 ],
                    "sig": 0.0
                }
            },
            {
                "box": {
                    "id": "obj-144",
                    "maxclass": "newobj",
                    "numinlets": 6,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1951.1112041473389, 257.7777900695801, 90.0, 22.0 ],
                    "text": "scale 0. 2. 0. 1."
                }
            },
            {
                "box": {
                    "fontsize": 12.0,
                    "format": 6,
                    "id": "obj-146",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 2200.000104904175, 211.11112117767334, 80.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 307.24997198581696, 485.17854076623917, 238.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-148",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 2200.000104904175, 157.7777853012085, 131.0, 22.0 ],
                    "text": "route /tracking/1/speed"
                }
            },
            {
                "box": {
                    "fontsize": 12.0,
                    "format": 6,
                    "id": "obj-149",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1951.1112041473389, 211.11112117767334, 80.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 308.74997198581696, 426.8749607205391, 235.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-150",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 1951.1112041473389, 157.7777853012085, 131.0, 22.0 ],
                    "text": "route /tracking/0/speed"
                }
            },
            {
                "box": {
                    "id": "obj-154",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1951.1112041473389, 311.1111259460449, 45.0, 22.0 ],
                    "text": "$1 500"
                }
            },
            {
                "box": {
                    "id": "obj-155",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "signal", "bang" ],
                    "patching_rect": [ 1951.1112041473389, 348.8889055252075, 34.0, 22.0 ],
                    "text": "line~"
                }
            },
            {
                "box": {
                    "args": [ "@module", 3, "@loop", 1, "@file", "drumLoop.aif", "@vol", 0 ],
                    "bgmode": 0,
                    "border": 0,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-28",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "demosound.maxpat",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 2362.2223348617554, 288.88890266418457, 225.0, 98.0 ],
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "id": "obj-32",
                    "logfreq": 1,
                    "maxclass": "spectroscope~",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1777.7778625488281, 551.1111373901367, 207.0, 72.0 ]
                }
            },
            {
                "box": {
                    "attr": "highgain",
                    "id": "obj-15",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 2362.2223348617554, 422.2222423553467, 150.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-58",
                    "maxclass": "newobj",
                    "numinlets": 6,
                    "numoutlets": 2,
                    "outlettype": [ "signal", "signal" ],
                    "patching_rect": [ 2102.2223224639893, 497.7778015136719, 128.0, 22.0 ],
                    "text": "abl.device.channeleq~"
                }
            },
            {
                "box": {
                    "id": "obj-6",
                    "lastchannelcount": 0,
                    "maxclass": "live.gain~",
                    "numinlets": 2,
                    "numoutlets": 5,
                    "outlettype": [ "signal", "signal", "", "float", "list" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 2094.872218489647, 664.4444761276245, 48.0, 136.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_longname": "live.gain~[2]",
                            "parameter_mmax": 6.0,
                            "parameter_mmin": -70.0,
                            "parameter_modmode": 3,
                            "parameter_shortname": "live.gain~",
                            "parameter_type": 0,
                            "parameter_unitstyle": 4
                        }
                    },
                    "varname": "live.gain~[2]"
                }
            },
            {
                "box": {
                    "id": "obj-7",
                    "maxclass": "ezdac~",
                    "numinlets": 2,
                    "numoutlets": 0,
                    "patching_rect": [ 2095.555655479431, 871.1111526489258, 46.63312602043152, 46.63312602043152 ]
                }
            },
            {
                "box": {
                    "id": "obj-5",
                    "maxclass": "newobj",
                    "numinlets": 6,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 851.166708946228, 726.6667013168335, 103.0, 22.0 ],
                    "text": "scale 0 380 1. 10."
                }
            },
            {
                "box": {
                    "id": "obj-255",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 1077.777829170227, 657.7778091430664, 43.0, 22.0 ],
                    "text": "cycle~"
                }
            },
            {
                "box": {
                    "id": "obj-161",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1517.0, 658.0, 95.0, 22.0 ],
                    "text": "prepend warmth"
                }
            },
            {
                "box": {
                    "attr": "rate",
                    "id": "obj-160",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1582.222297668457, 593.6708782911301, 150.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-152",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1435.5556240081787, 657.7778091430664, 77.0, 22.0 ],
                    "text": "prepend rate"
                }
            },
            {
                "box": {
                    "id": "obj-151",
                    "maxclass": "newobj",
                    "numinlets": 6,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1419.4691407680511, 522.6666879653931, 117.0, 22.0 ],
                    "text": "scale 0. 537.4 0.1 5."
                }
            },
            {
                "box": {
                    "attr": "warmth",
                    "id": "obj-62",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1582.222297668457, 631.111141204834, 150.0, 22.0 ]
                }
            },
            {
                "box": {
                    "args": [ "@module", 1, "@vol", 0 ],
                    "bgmode": 0,
                    "border": 0,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-84",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "demosound.maxpat",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 1544.4445180892944, 446.66668796539307, 225.0, 98.0 ],
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "id": "obj-87",
                    "lastchannelcount": 0,
                    "maxclass": "live.gain~",
                    "numinlets": 2,
                    "numoutlets": 5,
                    "orientation": 1,
                    "outlettype": [ "signal", "signal", "", "float", "list" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 1435.5556240081787, 748.8889245986938, 136.0, 47.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_initial": [ -12 ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "live.gain~[1]",
                            "parameter_mmax": 6.0,
                            "parameter_mmin": -70.0,
                            "parameter_modmode": 0,
                            "parameter_shortname": "live.gain~",
                            "parameter_type": 0,
                            "parameter_unitstyle": 4
                        }
                    },
                    "varname": "live.gain~[1]"
                }
            },
            {
                "box": {
                    "id": "obj-91",
                    "maxclass": "newobj",
                    "numinlets": 5,
                    "numoutlets": 2,
                    "outlettype": [ "signal", "signal" ],
                    "patching_rect": [ 1435.5556240081787, 695.555588722229, 136.0, 22.0 ],
                    "text": "abl.dsp.ensemble~",
                    "varname": "abl.dsp.ensemble~_AA"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-57",
                    "maxclass": "number~",
                    "mode": 2,
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "signal", "float" ],
                    "patching_rect": [ 1251.1111707687378, 325.0, 70.88607501983643, 22.0 ],
                    "sig": 0.0
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-56",
                    "maxclass": "number~",
                    "mode": 2,
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "signal", "float" ],
                    "patching_rect": [ 1142.0, 325.0, 70.88607501983643, 22.0 ],
                    "sig": 0.0
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-53",
                    "maxclass": "number~",
                    "mode": 2,
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "signal", "float" ],
                    "patching_rect": [ 1004.4444923400879, 319.0, 70.88607501983643, 22.0 ],
                    "sig": 0.0
                }
            },
            {
                "box": {
                    "id": "obj-47",
                    "maxclass": "newobj",
                    "numinlets": 4,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1386.0, 342.2222385406494, 268.0, 22.0 ],
                    "text": "expr sqrt(($f1-$f3)*($f1-$f3) + ($f2-$f4)*($f2-$f4))"
                }
            },
            {
                "box": {
                    "id": "obj-20",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1251.1111707687378, 246.6666784286499, 45.0, 22.0 ],
                    "text": "$1 500"
                }
            },
            {
                "box": {
                    "id": "obj-38",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "signal", "bang" ],
                    "patching_rect": [ 1251.1111707687378, 284.4444580078125, 34.0, 22.0 ],
                    "text": "line~"
                }
            },
            {
                "box": {
                    "id": "obj-39",
                    "maxclass": "newobj",
                    "numinlets": 6,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1246.6667261123657, 193.33334255218506, 103.0, 22.0 ],
                    "text": "scale 0. 1. 60 440"
                }
            },
            {
                "box": {
                    "id": "obj-10",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1142.222276687622, 246.6666784286499, 45.0, 22.0 ],
                    "text": "$1 500"
                }
            },
            {
                "box": {
                    "id": "obj-12",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "signal", "bang" ],
                    "patching_rect": [ 1142.222276687622, 284.4444580078125, 34.0, 22.0 ],
                    "text": "line~"
                }
            },
            {
                "box": {
                    "id": "obj-13",
                    "maxclass": "newobj",
                    "numinlets": 6,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1137.77783203125, 193.33334255218506, 103.0, 22.0 ],
                    "text": "scale 0. 1. 60 440"
                }
            },
            {
                "box": {
                    "id": "obj-3",
                    "maxclass": "newobj",
                    "numinlets": 6,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 791.1111488342285, 625.666690826416, 107.0, 22.0 ],
                    "text": "scale 0 537.4 0. 6."
                }
            },
            {
                "box": {
                    "id": "obj-83",
                    "maxclass": "spectroscope~",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 720.0000343322754, 1026.5822650194168, 242.0, 85.0 ]
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-81",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 691.1392314434052, 840.6701349020004, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-79",
                    "maxclass": "number~",
                    "mode": 2,
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "signal", "float" ],
                    "patching_rect": [ 744.3037877082825, 946.666711807251, 56.0, 22.0 ],
                    "sig": 0.0
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-78",
                    "maxclass": "number~",
                    "mode": 2,
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "signal", "float" ],
                    "patching_rect": [ 791.1111488342285, 851.1111516952515, 56.0, 22.0 ],
                    "sig": 0.0
                }
            },
            {
                "box": {
                    "id": "obj-72",
                    "maxclass": "scope~",
                    "numinlets": 2,
                    "numoutlets": 0,
                    "patching_rect": [ 393.00588524341583, 763.7847993373871, 105.47512245178223, 103.17647397518158 ],
                    "range": [ -10.0, 10.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-70",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 718.9873323440552, 898.5654466152191, 29.5, 22.0 ],
                    "text": "+~"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-68",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 851.166708946228, 770.6666896343231, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-64",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 791.1111488342285, 793.3333711624146, 29.5, 22.0 ],
                    "text": "*~"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-63",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 791.1111488342285, 674.6835354566574, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-61",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 791.1111488342285, 726.6667013168335, 43.0, 22.0 ],
                    "text": "cycle~"
                }
            },
            {
                "box": {
                    "id": "obj-60",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 718.9873323440552, 984.6413948535919, 43.0, 22.0 ],
                    "text": "cycle~"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-52",
                    "maxclass": "number~",
                    "mode": 2,
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "signal", "float" ],
                    "patching_rect": [ 806.5, 319.0, 70.88607501983643, 22.0 ],
                    "sig": 0.0
                }
            },
            {
                "box": {
                    "id": "obj-50",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1004.4444923400879, 246.6666784286499, 45.0, 22.0 ],
                    "text": "$1 500"
                }
            },
            {
                "box": {
                    "id": "obj-51",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "signal", "bang" ],
                    "patching_rect": [ 1004.4444923400879, 284.4444580078125, 34.0, 22.0 ],
                    "text": "line~"
                }
            },
            {
                "box": {
                    "id": "obj-49",
                    "maxclass": "newobj",
                    "numinlets": 6,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1004.4444923400879, 193.33334255218506, 103.0, 22.0 ],
                    "text": "scale 0. 1. 60 440"
                }
            },
            {
                "box": {
                    "id": "obj-48",
                    "maxclass": "newobj",
                    "numinlets": 6,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 886.666708946228, 193.33334255218506, 103.0, 22.0 ],
                    "text": "scale 0. 1. 60 440"
                }
            },
            {
                "box": {
                    "fontsize": 12.0,
                    "format": 6,
                    "id": "obj-17",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1246.6667261123657, 146.66667366027832, 80.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 538.571441411972, 470.17854076623917, 238.0, 22.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 12.0,
                    "format": 6,
                    "id": "obj-22",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1137.77783203125, 146.66667366027832, 80.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 292.24997198581696, 470.17854076623917, 238.0, 22.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 12.0,
                    "format": 6,
                    "id": "obj-16",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1004.4444923400879, 146.66667366027832, 94.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 546.7857273221016, 411.8749607205391, 235.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-9",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "" ],
                    "patching_rect": [ 1124.4444980621338, 95.55556011199951, 172.0, 22.0 ],
                    "text": "route /tracking/1/x /tracking/1/y"
                }
            },
            {
                "box": {
                    "fontsize": 12.0,
                    "format": 6,
                    "id": "obj-8",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 886.666708946228, 146.66667366027832, 80.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 293.74997198581696, 411.8749607205391, 235.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-4",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "" ],
                    "patching_rect": [ 926.6667108535767, 95.55556011199951, 172.0, 22.0 ],
                    "text": "route /tracking/0/x /tracking/0/y"
                }
            },
            {
                "box": {
                    "id": "obj-2",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1544.4445180892944, 37.7777795791626, 104.0, 22.0 ],
                    "text": "udpreceive 53000"
                }
            },
            {
                "box": {
                    "id": "obj-76",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 806.5, 251.0, 45.0, 22.0 ],
                    "text": "$1 500"
                }
            },
            {
                "box": {
                    "id": "obj-74",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "signal", "bang" ],
                    "patching_rect": [ 806.5, 284.4444580078125, 34.0, 22.0 ],
                    "text": "line~"
                }
            },
            {
                "box": {
                    "id": "obj-66",
                    "lastchannelcount": 0,
                    "maxclass": "live.gain~",
                    "numinlets": 2,
                    "numoutlets": 5,
                    "outlettype": [ "signal", "signal", "", "float", "list" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 1066.1499226093292, 960.4650819301605, 47.0, 117.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_longname": "live.gain~",
                            "parameter_mmax": 6.0,
                            "parameter_mmin": -70.0,
                            "parameter_modmode": 3,
                            "parameter_shortname": "live.gain~",
                            "parameter_type": 0,
                            "parameter_unitstyle": 4
                        }
                    },
                    "varname": "live.gain~"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-65",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1268.5556135177612, 695.555588722229, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "format": 6,
                    "id": "obj-1",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 2017.77787399292, 311.1111259460449, 50.0, 23.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-42",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 1005.4444923400879, 657.7778091430664, 43.0, 22.0 ],
                    "text": "cycle~"
                }
            },
            {
                "box": {
                    "id": "obj-41",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1047.0014548301697, 446.66668796539307, 32.0, 22.0 ],
                    "text": "mtof"
                }
            },
            {
                "box": {
                    "id": "obj-36",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "patching_rect": [ 1215.5556135177612, 649.6000096797943, 29.5, 22.0 ],
                    "text": "+"
                }
            },
            {
                "box": {
                    "id": "obj-34",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 1135.555609703064, 882.222264289856, 40.0, 22.0 ],
                    "text": "*~ 0.5"
                }
            },
            {
                "box": {
                    "id": "obj-33",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 1135.555609703064, 844.4444847106934, 29.5, 22.0 ],
                    "text": "+~"
                }
            },
            {
                "box": {
                    "id": "obj-31",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 1215.5556135177612, 740.0000352859497, 43.0, 22.0 ],
                    "text": "cycle~"
                }
            },
            {
                "box": {
                    "id": "obj-29",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1215.5556135177612, 700.0000333786011, 32.0, 22.0 ],
                    "text": "mtof"
                }
            },
            {
                "box": {
                    "id": "obj-21",
                    "maxclass": "newobj",
                    "numinlets": 6,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1215.5556135177612, 576.1111373901367, 100.0, 22.0 ],
                    "text": "scale 0 537.4 0 7"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "format": 6,
                    "id": "obj-19",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1246.6667261123657, 528.8889141082764, 50.0, 23.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-18",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "patching_rect": [ 1215.5556135177612, 473.1645884513855, 28.0, 22.0 ],
                    "text": "abs"
                }
            },
            {
                "box": {
                    "id": "obj-300",
                    "maxclass": "newobj",
                    "numinlets": 6,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 886.666708946228, 372.0, 110.0, 22.0 ],
                    "text": "scale 0. 1. 48 72"
                }
            },
            {
                "box": {
                    "id": "obj-301",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "patching_rect": [ 1047.0014548301697, 389.87341260910034, 32.0, 22.0 ],
                    "text": "int"
                }
            },
            {
                "box": {
                    "id": "obj-302",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 4,
                    "outlettype": [ "", "", "", "" ],
                    "patching_rect": [ 1215.5556135177612, 613.3333625793457, 90.0, 22.0 ],
                    "saved_object_attributes": {
                        "embed": 0,
                        "precision": 6
                    },
                    "text": "coll intervals"
                }
            },
            {
                "box": {
                    "id": "obj-305",
                    "maxclass": "newobj",
                    "numinlets": 6,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 378.607589840889, 389.87341260910034, 120.0, 22.0 ],
                    "text": "scale 0 380 0.35 0."
                }
            },
            {
                "box": {
                    "id": "obj-307",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 378.607589840889, 432.91138672828674, 45.0, 22.0 ],
                    "text": "$1 500"
                }
            },
            {
                "box": {
                    "id": "obj-306",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "signal", "bang" ],
                    "patching_rect": [ 378.48100769519806, 473.1645884513855, 120.0, 22.0 ],
                    "text": "line~"
                }
            },
            {
                "box": {
                    "id": "obj-304",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 522.4523054361343, 362.6666774749756, 120.0, 22.0 ],
                    "text": "*~ 1.498"
                }
            },
            {
                "box": {
                    "id": "obj-308",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 522.4523054361343, 421.51898181438446, 120.0, 22.0 ],
                    "text": "cycle~"
                }
            },
            {
                "box": {
                    "id": "obj-309",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 522.4523054361343, 473.1645884513855, 120.0, 22.0 ],
                    "text": "*~"
                }
            },
            {
                "box": {
                    "id": "obj-310",
                    "maxclass": "newobj",
                    "numinlets": 6,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 372.15189385414124, 546.8354358673096, 110.0, 22.0 ],
                    "text": "scale 0 380 0.22 0."
                }
            },
            {
                "box": {
                    "id": "obj-312",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 372.15189385414124, 577.7778053283691, 45.0, 22.0 ],
                    "text": "$1 500"
                }
            },
            {
                "box": {
                    "id": "obj-311",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "signal", "bang" ],
                    "patching_rect": [ 372.15189385414124, 613.5021421909332, 120.0, 22.0 ],
                    "text": "line~"
                }
            },
            {
                "box": {
                    "id": "obj-314",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 522.4523054361343, 546.8354358673096, 40.0, 22.0 ],
                    "text": "*~ 1.2"
                }
            },
            {
                "box": {
                    "id": "obj-313",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 522.4523054361343, 613.9240425825119, 120.0, 22.0 ],
                    "text": "cycle~"
                }
            },
            {
                "box": {
                    "id": "obj-315",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 522.4523054361343, 667.0885988473892, 120.0, 22.0 ],
                    "text": "*~"
                }
            },
            {
                "box": {
                    "id": "obj-316",
                    "maxclass": "newobj",
                    "numinlets": 6,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1793.6708625555038, 735.4430283308029, 120.0, 22.0 ],
                    "text": "scale 0 380 0.8 0.02"
                }
            },
            {
                "box": {
                    "id": "obj-317",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1793.6708625555038, 781.012647986412, 100.0, 22.0 ],
                    "text": "$1 800"
                }
            },
            {
                "box": {
                    "id": "obj-318",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "signal", "bang" ],
                    "patching_rect": [ 1793.6708625555038, 822.7847993373871, 120.0, 22.0 ],
                    "text": "line~"
                }
            },
            {
                "box": {
                    "id": "obj-319",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 1743.0379518270493, 933.3333611488342, 120.0, 22.0 ],
                    "text": "*~ 0.15"
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "obj-12", 0 ],
                    "source": [ "obj-10", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-95", 0 ],
                    "source": [ "obj-100", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-104", 1 ],
                    "source": [ "obj-102", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-105", 0 ],
                    "source": [ "obj-103", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-92", 0 ],
                    "source": [ "obj-107", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-144", 0 ],
                    "order": 1,
                    "source": [ "obj-11", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-24", 1 ],
                    "order": 0,
                    "source": [ "obj-11", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-185", 1 ],
                    "source": [ "obj-117", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-185", 0 ],
                    "source": [ "obj-117", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-107", 0 ],
                    "order": 1,
                    "source": [ "obj-119", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-125", 1 ],
                    "order": 0,
                    "source": [ "obj-119", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-56", 0 ],
                    "source": [ "obj-12", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-226", 0 ],
                    "source": [ "obj-129", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-10", 0 ],
                    "order": 1,
                    "source": [ "obj-13", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-47", 2 ],
                    "order": 0,
                    "source": [ "obj-13", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-164", 0 ],
                    "source": [ "obj-135", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-129", 0 ],
                    "source": [ "obj-136", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-163", 0 ],
                    "source": [ "obj-136", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-138", 0 ],
                    "source": [ "obj-137", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-131", 0 ],
                    "order": 2,
                    "source": [ "obj-138", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-27", 1 ],
                    "order": 0,
                    "source": [ "obj-138", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-30", 1 ],
                    "order": 1,
                    "source": [ "obj-138", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-137", 0 ],
                    "order": 1,
                    "source": [ "obj-139", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-158", 0 ],
                    "order": 0,
                    "source": [ "obj-139", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-139", 0 ],
                    "order": 0,
                    "source": [ "obj-14", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-54", 1 ],
                    "order": 1,
                    "source": [ "obj-14", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-159", 0 ],
                    "source": [ "obj-141", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "order": 0,
                    "source": [ "obj-144", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-154", 0 ],
                    "order": 1,
                    "source": [ "obj-144", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-14", 0 ],
                    "order": 1,
                    "source": [ "obj-146", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-45", 0 ],
                    "order": 0,
                    "source": [ "obj-146", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-157", 0 ],
                    "source": [ "obj-147", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-146", 0 ],
                    "source": [ "obj-148", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-11", 0 ],
                    "order": 0,
                    "source": [ "obj-149", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-209", 0 ],
                    "order": 1,
                    "source": [ "obj-149", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-58", 0 ],
                    "source": [ "obj-15", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-149", 0 ],
                    "source": [ "obj-150", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-100", 0 ],
                    "source": [ "obj-151", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-91", 0 ],
                    "source": [ "obj-152", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-155", 0 ],
                    "source": [ "obj-154", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-140", 0 ],
                    "order": 2,
                    "source": [ "obj-155", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-211", 1 ],
                    "order": 1,
                    "source": [ "obj-155", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-212", 1 ],
                    "order": 0,
                    "source": [ "obj-155", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-157", 0 ],
                    "source": [ "obj-156", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-135", 0 ],
                    "source": [ "obj-157", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-165", 0 ],
                    "source": [ "obj-159", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-49", 0 ],
                    "source": [ "obj-16", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-91", 0 ],
                    "source": [ "obj-160", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-91", 0 ],
                    "source": [ "obj-161", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-58", 0 ],
                    "source": [ "obj-162", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-226", 0 ],
                    "source": [ "obj-163", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-117", 0 ],
                    "source": [ "obj-165", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-166", 0 ],
                    "order": 0,
                    "source": [ "obj-167", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-168", 0 ],
                    "order": 1,
                    "source": [ "obj-167", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-170", 0 ],
                    "source": [ "obj-168", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-39", 0 ],
                    "source": [ "obj-17", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-164", 1 ],
                    "source": [ "obj-170", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-134", 0 ],
                    "source": [ "obj-174", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-185", 0 ],
                    "midpoints": [ 1425.5494958162308, 1845.400027692318, 1080.3010852336884, 1845.400027692318 ],
                    "source": [ "obj-176", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-185", 0 ],
                    "midpoints": [ 1588.512471795082, 1731.400027692318, 1399.6000145673752, 1731.400027692318, 1399.6000145673752, 1845.400027692318, 1080.3010852336884, 1845.400027692318 ],
                    "source": [ "obj-177", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-185", 0 ],
                    "midpoints": [ 1588.512471795082, 1707.400027692318, 1399.6000145673752, 1707.400027692318, 1399.6000145673752, 1845.400027692318, 1080.3010852336884, 1845.400027692318 ],
                    "source": [ "obj-178", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-185", 0 ],
                    "midpoints": [ 1425.5494958162308, 1779.400027692318, 1213.6000145673752, 1779.400027692318, 1213.6000145673752, 1845.400027692318, 1080.3010852336884, 1845.400027692318 ],
                    "source": [ "obj-179", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-19", 0 ],
                    "order": 2,
                    "source": [ "obj-18", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-21", 0 ],
                    "order": 3,
                    "source": [ "obj-18", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-218", 0 ],
                    "order": 1,
                    "source": [ "obj-18", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-3", 0 ],
                    "order": 5,
                    "source": [ "obj-18", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-305", 0 ],
                    "order": 6,
                    "source": [ "obj-18", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-310", 0 ],
                    "order": 7,
                    "source": [ "obj-18", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-316", 0 ],
                    "order": 0,
                    "source": [ "obj-18", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-5", 0 ],
                    "order": 4,
                    "source": [ "obj-18", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-185", 0 ],
                    "midpoints": [ 1588.512471795082, 1755.400027692318, 1399.6000145673752, 1755.400027692318, 1399.6000145673752, 1845.400027692318, 1080.3010852336884, 1845.400027692318 ],
                    "source": [ "obj-180", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-185", 0 ],
                    "midpoints": [ 1425.5494958162308, 1755.400027692318, 1213.6000145673752, 1755.400027692318, 1213.6000145673752, 1845.400027692318, 1080.3010852336884, 1845.400027692318 ],
                    "source": [ "obj-181", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-185", 0 ],
                    "midpoints": [ 1425.5494958162308, 1731.400027692318, 1213.6000145673752, 1731.400027692318, 1213.6000145673752, 1845.400027692318, 1080.3010852336884, 1845.400027692318 ],
                    "source": [ "obj-182", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-185", 0 ],
                    "midpoints": [ 1588.512471795082, 1845.400027692318, 1080.3010852336884, 1845.400027692318 ],
                    "source": [ "obj-183", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-185", 0 ],
                    "midpoints": [ 1425.5494958162308, 1707.400027692318, 1213.6000145673752, 1707.400027692318, 1213.6000145673752, 1845.400027692318, 1080.3010852336884, 1845.400027692318 ],
                    "source": [ "obj-184", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-187", 1 ],
                    "source": [ "obj-185", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-187", 0 ],
                    "source": [ "obj-185", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-183", 0 ],
                    "source": [ "obj-186", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-213", 1 ],
                    "order": 1,
                    "source": [ "obj-187", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-213", 0 ],
                    "order": 1,
                    "source": [ "obj-187", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-88", 1 ],
                    "order": 0,
                    "source": [ "obj-187", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-88", 0 ],
                    "order": 0,
                    "source": [ "obj-187", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-130", 0 ],
                    "order": 2,
                    "source": [ "obj-2", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-148", 0 ],
                    "order": 0,
                    "source": [ "obj-2", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-150", 0 ],
                    "order": 1,
                    "source": [ "obj-2", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-4", 0 ],
                    "order": 4,
                    "source": [ "obj-2", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-9", 0 ],
                    "order": 3,
                    "source": [ "obj-2", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-38", 0 ],
                    "source": [ "obj-20", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-210", 0 ],
                    "source": [ "obj-209", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-302", 0 ],
                    "source": [ "obj-21", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-162", 0 ],
                    "source": [ "obj-210", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-6", 0 ],
                    "source": [ "obj-211", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-6", 1 ],
                    "source": [ "obj-212", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-35", 0 ],
                    "source": [ "obj-218", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-13", 0 ],
                    "source": [ "obj-22", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-66", 1 ],
                    "source": [ "obj-226", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-66", 0 ],
                    "source": [ "obj-226", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-33", 0 ],
                    "source": [ "obj-255", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-40", 1 ],
                    "source": [ "obj-27", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-58", 1 ],
                    "order": 0,
                    "source": [ "obj-28", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-58", 0 ],
                    "order": 1,
                    "source": [ "obj-28", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-304", 0 ],
                    "order": 3,
                    "source": [ "obj-29", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-31", 0 ],
                    "order": 1,
                    "source": [ "obj-29", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-314", 0 ],
                    "order": 2,
                    "source": [ "obj-29", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-77", 0 ],
                    "order": 0,
                    "source": [ "obj-29", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-63", 0 ],
                    "source": [ "obj-3", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-40", 0 ],
                    "source": [ "obj-30", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-301", 0 ],
                    "source": [ "obj-300", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-36", 1 ],
                    "midpoints": [ 1056.5014548301697, 427.8932307558134, 1235.5556135177612, 427.8932307558134 ],
                    "order": 0,
                    "source": [ "obj-301", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-41", 0 ],
                    "order": 1,
                    "source": [ "obj-301", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-36", 0 ],
                    "source": [ "obj-302", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-308", 0 ],
                    "source": [ "obj-304", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-307", 0 ],
                    "source": [ "obj-305", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-309", 1 ],
                    "source": [ "obj-306", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-306", 0 ],
                    "source": [ "obj-307", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-309", 0 ],
                    "source": [ "obj-308", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-33", 0 ],
                    "source": [ "obj-309", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-33", 0 ],
                    "source": [ "obj-31", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-312", 0 ],
                    "source": [ "obj-310", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-315", 1 ],
                    "source": [ "obj-311", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-311", 0 ],
                    "source": [ "obj-312", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-315", 0 ],
                    "source": [ "obj-313", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-313", 0 ],
                    "source": [ "obj-314", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-33", 0 ],
                    "source": [ "obj-315", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-317", 0 ],
                    "source": [ "obj-316", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-318", 0 ],
                    "source": [ "obj-317", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-77", 1 ],
                    "source": [ "obj-318", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-33", 0 ],
                    "source": [ "obj-319", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-34", 0 ],
                    "source": [ "obj-33", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-66", 1 ],
                    "order": 2,
                    "source": [ "obj-34", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-66", 0 ],
                    "order": 3,
                    "source": [ "obj-34", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-91", 1 ],
                    "order": 0,
                    "source": [ "obj-34", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-91", 0 ],
                    "order": 1,
                    "source": [ "obj-34", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-136", 0 ],
                    "source": [ "obj-35", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-29", 0 ],
                    "order": 1,
                    "source": [ "obj-36", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-65", 0 ],
                    "order": 0,
                    "source": [ "obj-36", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-57", 0 ],
                    "source": [ "obj-38", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-20", 0 ],
                    "order": 1,
                    "source": [ "obj-39", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-47", 3 ],
                    "order": 0,
                    "source": [ "obj-39", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-16", 0 ],
                    "source": [ "obj-4", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-8", 0 ],
                    "source": [ "obj-4", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-37", 0 ],
                    "source": [ "obj-40", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-43", 0 ],
                    "source": [ "obj-40", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-43", 1 ],
                    "source": [ "obj-40", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-123", 1 ],
                    "order": 0,
                    "source": [ "obj-41", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-255", 0 ],
                    "order": 1,
                    "source": [ "obj-41", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-42", 0 ],
                    "order": 2,
                    "source": [ "obj-41", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-33", 0 ],
                    "source": [ "obj-42", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-46", 0 ],
                    "source": [ "obj-44", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-44", 0 ],
                    "source": [ "obj-45", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-58", 0 ],
                    "source": [ "obj-46", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-151", 0 ],
                    "order": 1,
                    "source": [ "obj-47", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-18", 0 ],
                    "order": 3,
                    "source": [ "obj-47", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-232", 0 ],
                    "order": 0,
                    "source": [ "obj-47", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-98", 0 ],
                    "order": 2,
                    "source": [ "obj-47", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-47", 0 ],
                    "order": 0,
                    "source": [ "obj-48", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-76", 0 ],
                    "order": 1,
                    "source": [ "obj-48", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-47", 1 ],
                    "order": 0,
                    "source": [ "obj-49", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-50", 0 ],
                    "order": 1,
                    "source": [ "obj-49", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-68", 0 ],
                    "source": [ "obj-5", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-51", 0 ],
                    "source": [ "obj-50", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-53", 0 ],
                    "source": [ "obj-51", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-211", 0 ],
                    "order": 1,
                    "source": [ "obj-58", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-212", 0 ],
                    "order": 1,
                    "source": [ "obj-58", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-27", 0 ],
                    "order": 0,
                    "source": [ "obj-58", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-30", 0 ],
                    "order": 0,
                    "source": [ "obj-58", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-32", 0 ],
                    "order": 2,
                    "source": [ "obj-58", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-189", 0 ],
                    "source": [ "obj-6", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-7", 0 ],
                    "source": [ "obj-6", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-7", 1 ],
                    "source": [ "obj-6", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-33", 0 ],
                    "order": 0,
                    "source": [ "obj-60", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-83", 0 ],
                    "order": 1,
                    "source": [ "obj-60", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-64", 0 ],
                    "source": [ "obj-61", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-91", 0 ],
                    "source": [ "obj-62", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-61", 0 ],
                    "source": [ "obj-63", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-70", 1 ],
                    "order": 1,
                    "source": [ "obj-64", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-72", 0 ],
                    "order": 2,
                    "source": [ "obj-64", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-78", 0 ],
                    "order": 0,
                    "source": [ "obj-64", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-117", 1 ],
                    "source": [ "obj-66", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-117", 0 ],
                    "source": [ "obj-66", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-64", 1 ],
                    "source": [ "obj-68", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-60", 0 ],
                    "order": 1,
                    "source": [ "obj-70", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-79", 0 ],
                    "order": 0,
                    "source": [ "obj-70", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-52", 0 ],
                    "source": [ "obj-74", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-74", 0 ],
                    "source": [ "obj-76", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-319", 0 ],
                    "source": [ "obj-77", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-300", 0 ],
                    "order": 0,
                    "source": [ "obj-8", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-48", 0 ],
                    "order": 1,
                    "source": [ "obj-8", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-70", 0 ],
                    "source": [ "obj-81", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-117", 1 ],
                    "source": [ "obj-87", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-117", 0 ],
                    "source": [ "obj-87", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-17", 0 ],
                    "source": [ "obj-9", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-22", 0 ],
                    "source": [ "obj-9", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-96", 0 ],
                    "source": [ "obj-90", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-87", 1 ],
                    "source": [ "obj-91", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-87", 0 ],
                    "source": [ "obj-91", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-102", 2 ],
                    "source": [ "obj-92", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-127", 1 ],
                    "source": [ "obj-92", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-90", 0 ],
                    "source": [ "obj-92", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-109", 0 ],
                    "order": 0,
                    "source": [ "obj-95", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-152", 0 ],
                    "order": 3,
                    "source": [ "obj-95", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-161", 0 ],
                    "order": 2,
                    "source": [ "obj-95", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-167", 0 ],
                    "order": 1,
                    "source": [ "obj-95", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-186", 0 ],
                    "order": 4,
                    "source": [ "obj-95", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-102", 1 ],
                    "source": [ "obj-96", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-101", 1 ],
                    "source": [ "obj-97", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-103", 0 ],
                    "source": [ "obj-98", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-97", 1 ],
                    "source": [ "obj-99", 0 ]
                }
            }
        ],
        "parameters": {
            "obj-117": [ "live.gain~[4]", "live.gain~[4]", 0 ],
            "obj-187": [ "live.gain~[5]", "live.gain~[4]", 0 ],
            "obj-28::obj-21::obj-6": [ "live.tab[4]", "live.tab[1]", 0 ],
            "obj-28::obj-35": [ "[6]", "Level", 0 ],
            "obj-40": [ "live.gain~[3]", "live.gain~", 0 ],
            "obj-6": [ "live.gain~[2]", "live.gain~", 0 ],
            "obj-66": [ "live.gain~", "live.gain~", 0 ],
            "obj-84::obj-21::obj-6": [ "live.tab[3]", "live.tab[1]", 0 ],
            "obj-84::obj-35": [ "[5]", "Level", 0 ],
            "obj-87": [ "live.gain~[1]", "live.gain~", 0 ],
            "parameter_overrides": {
                "obj-28::obj-21::obj-6": {
                    "parameter_longname": "live.tab[4]"
                },
                "obj-28::obj-35": {
                    "parameter_longname": "[6]"
                }
            },
            "inherited_shortname": 1
        },
        "autosave": 0,
        "oscreceiveudpport": 0
    }
}