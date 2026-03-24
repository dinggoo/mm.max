{
    "patcher": {
        "fileversion": 1,
        "appversion": {
            "major": 9,
            "minor": 1,
            "revision": 1,
            "architecture": "x64",
            "modernui": 1
        },
        "classnamespace": "box",
        "rect": [ 99.0, 90.0, 1094.0, 676.0 ],
        "gridonopen": 2,
        "subpatcher_template": "Untitled1_template",
        "boxes": [
            {
                "box": {
                    "id": "obj-20",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 851.0, 140.0, 29.5, 22.0 ],
                    "text": "30"
                }
            },
            {
                "box": {
                    "id": "obj-18",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 809.0, 140.0, 29.5, 22.0 ],
                    "text": "90"
                }
            },
            {
                "box": {
                    "id": "obj-16",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 647.0, 81.5, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-13",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 647.0, 118.0, 52.0, 22.0 ],
                    "text": "gate 1 0"
                }
            },
            {
                "box": {
                    "id": "obj-12",
                    "maxclass": "number",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 744.1818181818182, 140.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-9",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 518.0, 437.0, 277.0, 20.0 ],
                    "text": "a module to send and receive from an arduino"
                }
            },
            {
                "box": {
                    "id": "obj-10",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1140.0, 151.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "bgmode": 0,
                    "border": 0,
                    "clickthrough": 0,
                    "embed": 1,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-1",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "Arduino_Max_Module_Source_V2025.maxpat",
                    "numinlets": 12,
                    "numoutlets": 18,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "" ],
                    "patcher": {
                        "fileversion": 1,
                        "appversion": {
                            "major": 9,
                            "minor": 1,
                            "revision": 1,
                            "architecture": "x64",
                            "modernui": 1
                        },
                        "classnamespace": "box",
                        "rect": [ 467.0, 230.0, 779.0, 509.0 ],
                        "openinpresentation": 1,
                        "gridonopen": 2,
                        "gridsnaponopen": 2,
                        "subpatcher_template": "Untitled",
                        "boxes": [
                            {
                                "box": {
                                    "id": "obj-22",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 0.0, 442.83642578125, 69.0, 22.0 ],
                                    "text": "mode none"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-25",
                                    "maxclass": "toggle",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 1125.0, 120.0, 24.0, 24.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-7",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "patching_rect": [ 1125.0, 165.0, 56.0, 22.0 ],
                                    "text": "metro 50"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-18",
                                    "maxclass": "toggle",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 495.0, 510.0, 24.0, 24.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 10.450348,
                                    "id": "obj-155",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 883.2216796875, 211.11082458496094, 52.0, 20.0 ],
                                    "text": "w s 11 $1"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 10.450348,
                                    "id": "obj-154",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 873.2216796875, 242.36944580078125, 53.0, 20.0 ],
                                    "text": "w a 11 $1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-152",
                                    "maxclass": "gswitch2",
                                    "numinlets": 2,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "" ],
                                    "outputs": 3,
                                    "parameter_enable": 0,
                                    "patching_rect": [ 863.2216796875, 164.41220092773438, 39.0, 32.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-150",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 292.88629150390625, 390.0, 50.0, 22.0 ],
                                    "text": "0"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 12.0,
                                    "htabcolor": [ 0.019607843137255, 0.780392156862745, 0.274509803921569, 1.0 ],
                                    "id": "obj-114",
                                    "maxclass": "tab",
                                    "mode": 1,
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "int", "", "" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 15.0, 254.96945190429688, 118.0, 54.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 150.0, 98.0, 330.0, 35.0 ],
                                    "rounded": 1.0,
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_enum": [ "No Readout", "Read All Pins", "Read Digital Pins", "Read Analog Pins" ],
                                            "parameter_initial": [ 0.0 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_longname": "tab",
                                            "parameter_mmax": 3,
                                            "parameter_modmode": 0,
                                            "parameter_shortname": "tab",
                                            "parameter_type": 2
                                        }
                                    },
                                    "tabs": [ "No Readout", "Read All Pins", "Read Digital Pins", "Read Analog Pins" ],
                                    "varname": "tab"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 9.0,
                                    "id": "obj-21",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 882.5550136566162, 99.97081756591797, 34.33333206176758, 17.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 502.2459075450897, 18.46556854248047, 39.174957275390625, 17.0 ],
                                    "text": "pin11",
                                    "textcolor": [ 0.960784018039703, 0.82745099067688, 0.156863003969193, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 10.0,
                                    "id": "obj-10",
                                    "maxclass": "live.tab",
                                    "num_lines_patching": 3,
                                    "num_lines_presentation": 3,
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "float" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 863.2216796875, 39.563758850097656, 39.0, 48.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 502.33338618278503, 37.341285705566406, 39.0, 48.0 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_enum": [ "Digital", "Analog", "Servo" ],
                                            "parameter_longname": "servo[5]",
                                            "parameter_mmax": 2,
                                            "parameter_modmode": 0,
                                            "parameter_shortname": "servo",
                                            "parameter_type": 2,
                                            "parameter_unitstyle": 9
                                        }
                                    },
                                    "varname": "textbutton[26]"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-140",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 76.24420166015625, 442.83642578125, 49.0, 22.0 ],
                                    "text": "mode b"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-137",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 188.24420166015625, 442.83642578125, 49.0, 22.0 ],
                                    "text": "mode a"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-127",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 137.24420166015625, 442.83642578125, 49.0, 22.0 ],
                                    "text": "mode d"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-97",
                                    "maxclass": "newobj",
                                    "numinlets": 5,
                                    "numoutlets": 5,
                                    "outlettype": [ "bang", "bang", "bang", "bang", "" ],
                                    "patching_rect": [ 15.0, 345.0, 64.0, 22.0 ],
                                    "text": "sel 0 1 2 3"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-15",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 435.8730773925781, 528.4931030273438, 44.0, 22.0 ],
                                    "text": "poll $1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-13",
                                    "maxclass": "toggle",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 1080.0, 96.47081756591797, 24.0, 24.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-16",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "patching_rect": [ 213.25, 546.9197387695312, 63.0, 22.0 ],
                                    "text": "closebang"
                                }
                            },
                            {
                                "box": {
                                    "appearance": 2,
                                    "fontface": 1,
                                    "id": "obj-88",
                                    "maxclass": "live.text",
                                    "mode": 0,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 721.4742431640625, 558.6666870117188, 78.0, 22.0 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_enum": [ "val1", "val2" ],
                                            "parameter_longname": "live.text",
                                            "parameter_mmax": 1,
                                            "parameter_modmode": 0,
                                            "parameter_shortname": "live.text",
                                            "parameter_type": 2
                                        }
                                    },
                                    "text": "ArduinoCode",
                                    "varname": "live.text"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-69",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 721.4742431640625, 602.0, 35.0, 22.0 ],
                                    "text": "open"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-30",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 668.4742431640625, 602.0, 51.0, 22.0 ],
                                    "text": "pcontrol"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 10.450348,
                                    "id": "obj-77",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 794.4983520507812, 215.96945190429688, 53.0, 20.0 ],
                                    "text": "w s 10 $1"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 10.450348,
                                    "id": "obj-73",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 708.6055297851562, 211.11082458496094, 47.0, 20.0 ],
                                    "text": "w s 9 $1"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 10.450348,
                                    "id": "obj-72",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 443.2637634277344, 215.96945190429688, 49.0, 20.0 ],
                                    "text": "w s 6 $1"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 10.450348,
                                    "id": "obj-71",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 344.2590637207031, 242.36944580078125, 48.0, 20.0 ],
                                    "text": "w a 5 $1"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 10.450348,
                                    "id": "obj-70",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 157.9076385498047, 227.5694580078125, 48.0, 20.0 ],
                                    "text": "w a 3 $1"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 10.450348,
                                    "id": "obj-63",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 779.3316650390625, 242.36944580078125, 54.0, 20.0 ],
                                    "text": "w a 10 $1"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 10.0,
                                    "id": "obj-59",
                                    "maxclass": "live.tab",
                                    "num_lines_patching": 3,
                                    "num_lines_presentation": 3,
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "float" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 769.3316650390625, 39.563758850097656, 39.0, 48.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 451.36710810661316, 37.341285705566406, 39.0, 48.0 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_enum": [ "Digital", "Analog", "Servo" ],
                                            "parameter_longname": "servo[4]",
                                            "parameter_mmax": 2,
                                            "parameter_modmode": 0,
                                            "parameter_shortname": "servo",
                                            "parameter_type": 2,
                                            "parameter_unitstyle": 9
                                        }
                                    },
                                    "varname": "textbutton[25]"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-62",
                                    "maxclass": "gswitch2",
                                    "numinlets": 2,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "" ],
                                    "outputs": 3,
                                    "parameter_enable": 0,
                                    "patching_rect": [ 769.3316650390625, 169.142822265625, 39.0, 32.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 10.0,
                                    "id": "obj-57",
                                    "maxclass": "live.tab",
                                    "num_lines_patching": 3,
                                    "num_lines_presentation": 3,
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "float" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 682.272216796875, 39.563758850097656, 39.0, 48.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 390.18226313591003, 37.341285705566406, 39.0, 48.0 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_enum": [ "Digital", "Analog", "Servo" ],
                                            "parameter_longname": "servo[3]",
                                            "parameter_mmax": 2,
                                            "parameter_modmode": 0,
                                            "parameter_shortname": "servo",
                                            "parameter_type": 2,
                                            "parameter_unitstyle": 9
                                        }
                                    },
                                    "varname": "textbutton[24]"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-35",
                                    "maxclass": "gswitch2",
                                    "numinlets": 2,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "" ],
                                    "outputs": 3,
                                    "parameter_enable": 0,
                                    "patching_rect": [ 335.2637634277344, 169.2775115966797, 39.0, 32.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 10.0,
                                    "id": "obj-36",
                                    "maxclass": "live.tab",
                                    "num_lines_patching": 3,
                                    "num_lines_presentation": 3,
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "float" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 335.2637634277344, 39.563758850097656, 39.0, 48.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 151.88293147087097, 37.341285705566406, 39.0, 48.0 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_enum": [ "Digital", "Analog", "Servo" ],
                                            "parameter_longname": "servo[2]",
                                            "parameter_mmax": 2,
                                            "parameter_modmode": 0,
                                            "parameter_shortname": "servo",
                                            "parameter_type": 2,
                                            "parameter_unitstyle": 9
                                        }
                                    },
                                    "varname": "textbutton[3]"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 10.450348,
                                    "id": "obj-37",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 355.2637634277344, 211.11082458496094, 47.0, 20.0 ],
                                    "text": "w s 5 $1"
                                }
                            },
                            {
                                "box": {
                                    "activebgcolor": [ 0.0, 0.0, 0.0, 1.0 ],
                                    "activebgoncolor": [ 1.0, 1.0, 1.0, 1.0 ],
                                    "bgcolor": [ 0.0, 0.0, 0.0, 1.0 ],
                                    "bgoncolor": [ 1.0, 1.0, 1.0, 1.0 ],
                                    "bordercolor": [ 1.0, 1.0, 1.0, 0.0 ],
                                    "focusbordercolor": [ 1.0, 1.0, 1.0, 0.0 ],
                                    "id": "obj-38",
                                    "ignoreclick": 1,
                                    "maxclass": "live.toggle",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 386.224853515625, 181.41220092773438, 15.0, 15.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 171.15832209587097, -0.734431505203247, 15.0, 15.0 ],
                                    "rounded": 15.0,
                                    "saved_attribute_attributes": {
                                        "activebgcolor": {
                                            "expression": ""
                                        },
                                        "activebgoncolor": {
                                            "expression": ""
                                        },
                                        "bgcolor": {
                                            "expression": ""
                                        },
                                        "bgoncolor": {
                                            "expression": ""
                                        },
                                        "bordercolor": {
                                            "expression": ""
                                        },
                                        "focusbordercolor": {
                                            "expression": ""
                                        },
                                        "valueof": {
                                            "parameter_enum": [ "off", "on" ],
                                            "parameter_initial": [ 0.0 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_longname": "live.toggle[25]",
                                            "parameter_mmax": 1,
                                            "parameter_modmode": 0,
                                            "parameter_shortname": "live.toggle",
                                            "parameter_type": 2
                                        }
                                    },
                                    "varname": "live.toggle[4]"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 10.450348,
                                    "id": "obj-39",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 335.2637634277344, 271.9694519042969, 48.0, 20.0 ],
                                    "text": "w d 5 $1"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 9.0,
                                    "id": "obj-43",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 354.3637638092041, 110.13712310791016, 31.799999237060547, 17.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 158.02062678337097, 18.46556854248047, 26.724624633789062, 17.0 ],
                                    "text": "pin5",
                                    "textcolor": [ 0.960784018039703, 0.82745099067688, 0.156863003969193, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "annotation": "",
                                    "comment": "Write to arduino Pin6  0/1 or Analog Servo (0 to 180)",
                                    "hint": "",
                                    "id": "obj-55",
                                    "index": 4,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 355.2637634277344, 127.25318908691406, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-28",
                                    "maxclass": "gswitch2",
                                    "numinlets": 2,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "" ],
                                    "outputs": 3,
                                    "parameter_enable": 0,
                                    "patching_rect": [ 682.272216796875, 169.142822265625, 45.400001525878906, 32.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 10.450348,
                                    "id": "obj-4",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 693.772216796875, 237.7041473388672, 48.0, 20.0 ],
                                    "text": "w a 9 $1"
                                }
                            },
                            {
                                "box": {
                                    "annotation": "",
                                    "bgcolor": [ 0.117647058823529, 0.117647058823529, 0.117647058823529, 1.0 ],
                                    "bgoncolor": [ 0.019607843137255, 0.780392156862745, 0.274509803921569, 1.0 ],
                                    "fontface": 0,
                                    "fontsize": 10.0,
                                    "hint": "",
                                    "id": "obj-20",
                                    "legacytextcolor": 1,
                                    "maxclass": "textbutton",
                                    "mode": 1,
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "int" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 435.8730773925781, 443.13330078125, 138.015625, 21.40625 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 8.71367621421814, 98.22575378417969, 130.24301433563232, 21.40625 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_initial": [ 0 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_invisible": 1,
                                            "parameter_longname": "digital switch[2]",
                                            "parameter_mmax": 1.0,
                                            "parameter_modmode": 0,
                                            "parameter_shortname": "digital switch",
                                            "parameter_type": 3
                                        }
                                    },
                                    "spacing_x": 19.0,
                                    "text": "SYSTEM ON / OFF",
                                    "textcolor": [ 1.0, 1.0, 1.0, 1.0 ],
                                    "texton": "SYSTEM IS ON  ",
                                    "textoncolor": [ 0.905882, 0.909804, 0.917647, 1.0 ],
                                    "textovercolor": [ 0.1, 0.1, 0.1, 1.0 ],
                                    "tosymbol": 0,
                                    "usebgoncolor": 1,
                                    "varname": "textbutton[2]"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-19",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "patcher": {
                                        "fileversion": 1,
                                        "appversion": {
                                            "major": 9,
                                            "minor": 1,
                                            "revision": 1,
                                            "architecture": "x64",
                                            "modernui": 1
                                        },
                                        "classnamespace": "box",
                                        "rect": [ 697.0, 354.0, 247.0, 308.0 ],
                                        "boxes": [
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-1",
                                                    "index": 1,
                                                    "maxclass": "outlet",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 42.0, 192.0, 15.0, 15.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-2",
                                                    "index": 1,
                                                    "maxclass": "inlet",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 42.0, 24.0, 15.0, 15.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 9.0,
                                                    "id": "obj-3",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 41.5, 125.0, 24.5, 19.0 ],
                                                    "text": "13"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 9.0,
                                                    "id": "obj-4",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "bang", "" ],
                                                    "patching_rect": [ 41.5, 76.0, 56.5, 19.0 ],
                                                    "text": "t b l"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 9.0,
                                                    "id": "obj-5",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "int" ],
                                                    "patching_rect": [ 79.0, 125.0, 27.0, 19.0 ],
                                                    "text": "spell"
                                                }
                                            }
                                        ],
                                        "lines": [
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-4", 0 ],
                                                    "source": [ "obj-2", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-1", 0 ],
                                                    "source": [ "obj-3", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-3", 0 ],
                                                    "source": [ "obj-4", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-5", 0 ],
                                                    "source": [ "obj-4", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-1", 0 ],
                                                    "source": [ "obj-5", 0 ]
                                                }
                                            }
                                        ]
                                    },
                                    "patching_rect": [ 53.0, 495.0, 123.0, 22.0 ],
                                    "text": "p max2asciimessage"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-2",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "bang", "" ],
                                    "patching_rect": [ 90.33332824707031, 528.4931030273438, 34.0, 22.0 ],
                                    "text": "sel 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-1",
                                    "maxclass": "newobj",
                                    "numinlets": 5,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "clear" ],
                                    "patcher": {
                                        "fileversion": 1,
                                        "appversion": {
                                            "major": 9,
                                            "minor": 1,
                                            "revision": 1,
                                            "architecture": "x64",
                                            "modernui": 1
                                        },
                                        "classnamespace": "box",
                                        "rect": [ 134.0, 159.0, 528.0, 448.0 ],
                                        "boxes": [
                                            {
                                                "box": {
                                                    "id": "obj-8",
                                                    "maxclass": "toggle",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "int" ],
                                                    "parameter_enable": 0,
                                                    "patching_rect": [ 318.0, 107.5, 24.0, 24.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-6",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 318.0, 150.0, 44.0, 22.0 ],
                                                    "text": "poll $1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-2",
                                                    "index": 5,
                                                    "maxclass": "inlet",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 275.0, 58.0, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-3",
                                                    "maxclass": "button",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "bang" ],
                                                    "parameter_enable": 0,
                                                    "patching_rect": [ 38.0, 285.0, 24.0, 24.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-1",
                                                    "index": 1,
                                                    "maxclass": "inlet",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "int" ],
                                                    "patching_rect": [ 24.0, 41.0, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "color": [ 0.999993443489075, 0.999963402748108, 0.041014794260263, 1.0 ],
                                                    "id": "obj-38",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patcher": {
                                                        "fileversion": 1,
                                                        "appversion": {
                                                            "major": 9,
                                                            "minor": 1,
                                                            "revision": 1,
                                                            "architecture": "x64",
                                                            "modernui": 1
                                                        },
                                                        "classnamespace": "box",
                                                        "rect": [ 84.0, 131.0, 357.0, 330.0 ],
                                                        "subpatcher_template": "Untitled1_template",
                                                        "boxes": [
                                                            {
                                                                "box": {
                                                                    "id": "obj-25",
                                                                    "maxclass": "comment",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 0,
                                                                    "patching_rect": [ 121.0, 101.0, 207.0, 20.0 ],
                                                                    "text": "13: carriage return / 10: new line"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-5",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 50.0, 203.0, 71.0, 22.0 ],
                                                                    "text": "fromsymbol"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-4",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 3,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "int" ],
                                                                    "patching_rect": [ 50.0, 176.0, 40.0, 22.0 ],
                                                                    "text": "itoa"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-6",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 2,
                                                                    "outlettype": [ "", "" ],
                                                                    "patching_rect": [ 50.0, 138.0, 81.0, 22.0 ],
                                                                    "text": "zl.group 9999"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-2",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 3,
                                                                    "numoutlets": 3,
                                                                    "outlettype": [ "", "", "" ],
                                                                    "patching_rect": [ 50.0, 100.0, 69.0, 22.0 ],
                                                                    "text": "route 13 10"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "comment": "",
                                                                    "id": "obj-20",
                                                                    "index": 1,
                                                                    "maxclass": "inlet",
                                                                    "numinlets": 0,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "int" ],
                                                                    "patching_rect": [ 50.0, 40.0, 30.0, 30.0 ]
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "comment": "",
                                                                    "id": "obj-21",
                                                                    "index": 1,
                                                                    "maxclass": "outlet",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 0,
                                                                    "patching_rect": [ 50.0, 251.0, 30.0, 30.0 ]
                                                                }
                                                            }
                                                        ],
                                                        "lines": [
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-6", 0 ],
                                                                    "source": [ "obj-2", 2 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-6", 0 ],
                                                                    "source": [ "obj-2", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-2", 0 ],
                                                                    "source": [ "obj-20", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-5", 0 ],
                                                                    "source": [ "obj-4", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-21", 0 ],
                                                                    "source": [ "obj-5", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-4", 0 ],
                                                                    "source": [ "obj-6", 0 ]
                                                                }
                                                            }
                                                        ],
                                                        "toolbaradditions": [ "BEAP", "Vizzie" ]
                                                    },
                                                    "patching_rect": [ 91.0, 263.0, 61.0, 22.0 ],
                                                    "text": "p fromArd"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 12.0,
                                                    "id": "obj-47",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "clear" ],
                                                    "patcher": {
                                                        "fileversion": 1,
                                                        "appversion": {
                                                            "major": 9,
                                                            "minor": 1,
                                                            "revision": 1,
                                                            "architecture": "x64",
                                                            "modernui": 1
                                                        },
                                                        "classnamespace": "box",
                                                        "rect": [ 680.0, 157.0, 395.0, 603.0 ],
                                                        "default_fontsize": 13.0,
                                                        "toolbarvisible": 0,
                                                        "boxes": [
                                                            {
                                                                "box": {
                                                                    "fontname": "Arial",
                                                                    "fontsize": 12.0,
                                                                    "id": "obj-4",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 5,
                                                                    "outlettype": [ "", "", "", "", "" ],
                                                                    "patching_rect": [ 89.25, 225.0, 85.0, 22.0 ],
                                                                    "saved_object_attributes": {
                                                                        "legacyoutputorder": 1
                                                                    },
                                                                    "text": "regexp COM.*"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-5",
                                                                    "maxclass": "button",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "bang" ],
                                                                    "parameter_enable": 0,
                                                                    "patching_rect": [ 204.0, 41.0, 16.0, 16.0 ]
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "fontname": "Arial",
                                                                    "fontsize": 12.0,
                                                                    "id": "obj-3",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 3,
                                                                    "numoutlets": 3,
                                                                    "outlettype": [ "", "", "" ],
                                                                    "patching_rect": [ 13.0, 40.0, 89.0, 22.0 ],
                                                                    "text": "route port read"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-49",
                                                                    "maxclass": "button",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "bang" ],
                                                                    "parameter_enable": 0,
                                                                    "patching_rect": [ 138.75, 261.0, 23.0, 23.0 ]
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "fontname": "Arial",
                                                                    "fontsize": 12.0,
                                                                    "id": "obj-32",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 3,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patcher": {
                                                                        "fileversion": 1,
                                                                        "appversion": {
                                                                            "major": 9,
                                                                            "minor": 1,
                                                                            "revision": 1,
                                                                            "architecture": "x64",
                                                                            "modernui": 1
                                                                        },
                                                                        "classnamespace": "box",
                                                                        "rect": [ 581.0, 347.0, 209.0, 299.0 ],
                                                                        "default_fontsize": 13.0,
                                                                        "toolbarvisible": 0,
                                                                        "boxes": [
                                                                            {
                                                                                "box": {
                                                                                    "fontname": "Arial",
                                                                                    "fontsize": 12.0,
                                                                                    "id": "obj-5",
                                                                                    "maxclass": "newobj",
                                                                                    "numinlets": 2,
                                                                                    "numoutlets": 1,
                                                                                    "outlettype": [ "" ],
                                                                                    "patching_rect": [ 31.0, 165.0, 63.0, 22.0 ],
                                                                                    "text": "pipe 1000"
                                                                                }
                                                                            },
                                                                            {
                                                                                "box": {
                                                                                    "fontname": "Arial",
                                                                                    "fontsize": 12.0,
                                                                                    "id": "obj-1",
                                                                                    "maxclass": "newobj",
                                                                                    "numinlets": 2,
                                                                                    "numoutlets": 2,
                                                                                    "outlettype": [ "bang", "" ],
                                                                                    "patching_rect": [ 14.0, 135.0, 36.0, 22.0 ],
                                                                                    "text": "sel 0"
                                                                                }
                                                                            },
                                                                            {
                                                                                "box": {
                                                                                    "fontname": "Arial",
                                                                                    "fontsize": 12.0,
                                                                                    "id": "obj-23",
                                                                                    "maxclass": "newobj",
                                                                                    "numinlets": 2,
                                                                                    "numoutlets": 2,
                                                                                    "outlettype": [ "bang", "" ],
                                                                                    "patching_rect": [ 31.0, 194.0, 90.5, 22.0 ],
                                                                                    "text": "sel"
                                                                                }
                                                                            },
                                                                            {
                                                                                "box": {
                                                                                    "fontname": "Arial",
                                                                                    "fontsize": 12.0,
                                                                                    "id": "obj-20",
                                                                                    "maxclass": "number",
                                                                                    "numinlets": 1,
                                                                                    "numoutlets": 2,
                                                                                    "outlettype": [ "", "bang" ],
                                                                                    "parameter_enable": 0,
                                                                                    "patching_rect": [ 103.0, 106.0, 50.0, 22.0 ]
                                                                                }
                                                                            },
                                                                            {
                                                                                "box": {
                                                                                    "fontname": "Arial",
                                                                                    "fontsize": 12.0,
                                                                                    "id": "obj-22",
                                                                                    "maxclass": "newobj",
                                                                                    "numinlets": 5,
                                                                                    "numoutlets": 4,
                                                                                    "outlettype": [ "int", "", "", "int" ],
                                                                                    "patching_rect": [ 103.0, 74.0, 78.0, 22.0 ],
                                                                                    "text": "counter 0 10"
                                                                                }
                                                                            },
                                                                            {
                                                                                "box": {
                                                                                    "fontname": "Arial",
                                                                                    "fontsize": 12.0,
                                                                                    "id": "obj-19",
                                                                                    "maxclass": "number",
                                                                                    "numinlets": 1,
                                                                                    "numoutlets": 2,
                                                                                    "outlettype": [ "", "bang" ],
                                                                                    "parameter_enable": 0,
                                                                                    "patching_rect": [ 14.0, 106.0, 50.0, 22.0 ]
                                                                                }
                                                                            },
                                                                            {
                                                                                "box": {
                                                                                    "fontname": "Arial",
                                                                                    "fontsize": 12.0,
                                                                                    "id": "obj-17",
                                                                                    "maxclass": "newobj",
                                                                                    "numinlets": 5,
                                                                                    "numoutlets": 4,
                                                                                    "outlettype": [ "int", "", "", "int" ],
                                                                                    "patching_rect": [ 14.0, 74.0, 78.0, 22.0 ],
                                                                                    "text": "counter 0 10"
                                                                                }
                                                                            },
                                                                            {
                                                                                "box": {
                                                                                    "fontname": "Arial",
                                                                                    "fontsize": 12.0,
                                                                                    "id": "obj-6",
                                                                                    "maxclass": "message",
                                                                                    "numinlets": 2,
                                                                                    "numoutlets": 1,
                                                                                    "outlettype": [ "" ],
                                                                                    "patching_rect": [ 31.0, 228.0, 170.0, 22.0 ],
                                                                                    "text": "insert 0 no arduino connected"
                                                                                }
                                                                            },
                                                                            {
                                                                                "box": {
                                                                                    "comment": "",
                                                                                    "id": "obj-24",
                                                                                    "index": 1,
                                                                                    "maxclass": "inlet",
                                                                                    "numinlets": 0,
                                                                                    "numoutlets": 1,
                                                                                    "outlettype": [ "bang" ],
                                                                                    "patching_rect": [ 14.0, 17.0, 25.0, 25.0 ]
                                                                                }
                                                                            },
                                                                            {
                                                                                "box": {
                                                                                    "comment": "",
                                                                                    "id": "obj-25",
                                                                                    "index": 2,
                                                                                    "maxclass": "inlet",
                                                                                    "numinlets": 0,
                                                                                    "numoutlets": 1,
                                                                                    "outlettype": [ "int" ],
                                                                                    "patching_rect": [ 58.0, 17.0, 25.0, 25.0 ]
                                                                                }
                                                                            },
                                                                            {
                                                                                "box": {
                                                                                    "comment": "",
                                                                                    "id": "obj-27",
                                                                                    "index": 3,
                                                                                    "maxclass": "inlet",
                                                                                    "numinlets": 0,
                                                                                    "numoutlets": 1,
                                                                                    "outlettype": [ "bang" ],
                                                                                    "patching_rect": [ 103.0, 17.0, 25.0, 25.0 ]
                                                                                }
                                                                            },
                                                                            {
                                                                                "box": {
                                                                                    "comment": "",
                                                                                    "id": "obj-30",
                                                                                    "index": 1,
                                                                                    "maxclass": "outlet",
                                                                                    "numinlets": 1,
                                                                                    "numoutlets": 0,
                                                                                    "patching_rect": [ 31.0, 260.0, 25.0, 25.0 ]
                                                                                }
                                                                            }
                                                                        ],
                                                                        "lines": [
                                                                            {
                                                                                "patchline": {
                                                                                    "destination": [ "obj-5", 0 ],
                                                                                    "source": [ "obj-1", 1 ]
                                                                                }
                                                                            },
                                                                            {
                                                                                "patchline": {
                                                                                    "destination": [ "obj-19", 0 ],
                                                                                    "source": [ "obj-17", 0 ]
                                                                                }
                                                                            },
                                                                            {
                                                                                "patchline": {
                                                                                    "destination": [ "obj-1", 0 ],
                                                                                    "source": [ "obj-19", 0 ]
                                                                                }
                                                                            },
                                                                            {
                                                                                "patchline": {
                                                                                    "destination": [ "obj-23", 1 ],
                                                                                    "source": [ "obj-20", 0 ]
                                                                                }
                                                                            },
                                                                            {
                                                                                "patchline": {
                                                                                    "destination": [ "obj-20", 0 ],
                                                                                    "source": [ "obj-22", 0 ]
                                                                                }
                                                                            },
                                                                            {
                                                                                "patchline": {
                                                                                    "destination": [ "obj-6", 0 ],
                                                                                    "source": [ "obj-23", 0 ]
                                                                                }
                                                                            },
                                                                            {
                                                                                "patchline": {
                                                                                    "destination": [ "obj-17", 0 ],
                                                                                    "source": [ "obj-24", 0 ]
                                                                                }
                                                                            },
                                                                            {
                                                                                "patchline": {
                                                                                    "destination": [ "obj-17", 3 ],
                                                                                    "order": 1,
                                                                                    "source": [ "obj-25", 0 ]
                                                                                }
                                                                            },
                                                                            {
                                                                                "patchline": {
                                                                                    "destination": [ "obj-22", 3 ],
                                                                                    "midpoints": [ 67.5, 57.5, 156.75, 57.5 ],
                                                                                    "order": 0,
                                                                                    "source": [ "obj-25", 0 ]
                                                                                }
                                                                            },
                                                                            {
                                                                                "patchline": {
                                                                                    "destination": [ "obj-22", 0 ],
                                                                                    "source": [ "obj-27", 0 ]
                                                                                }
                                                                            },
                                                                            {
                                                                                "patchline": {
                                                                                    "destination": [ "obj-23", 0 ],
                                                                                    "source": [ "obj-5", 0 ]
                                                                                }
                                                                            },
                                                                            {
                                                                                "patchline": {
                                                                                    "destination": [ "obj-30", 0 ],
                                                                                    "source": [ "obj-6", 0 ]
                                                                                }
                                                                            }
                                                                        ]
                                                                    },
                                                                    "patching_rect": [ 308.0, 337.0, 71.0, 22.0 ],
                                                                    "saved_object_attributes": {
                                                                        "fontsize": 13.0
                                                                    },
                                                                    "text": "p no-match"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "fontname": "Arial",
                                                                    "fontsize": 12.0,
                                                                    "id": "obj-2",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 2,
                                                                    "outlettype": [ "bang", "bang" ],
                                                                    "patching_rect": [ 204.0, 66.0, 67.0, 22.0 ],
                                                                    "text": "onebang 1"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-42",
                                                                    "maxclass": "button",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "bang" ],
                                                                    "parameter_enable": 0,
                                                                    "patching_rect": [ 76.0, 358.0, 20.0, 20.0 ]
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "fontname": "Arial",
                                                                    "fontsize": 12.0,
                                                                    "id": "obj-37",
                                                                    "maxclass": "message",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 204.0, 94.0, 37.0, 22.0 ],
                                                                    "text": "reset"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "fontname": "Arial",
                                                                    "fontsize": 12.0,
                                                                    "id": "obj-35",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 2,
                                                                    "outlettype": [ "int", "clear" ],
                                                                    "patching_rect": [ 204.0, 119.0, 53.0, 22.0 ],
                                                                    "text": "t 0 clear"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "fontname": "Arial",
                                                                    "fontsize": 12.0,
                                                                    "id": "obj-31",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 76.0, 448.0, 57.0, 22.0 ],
                                                                    "text": "pipe 100"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "fontname": "Arial",
                                                                    "fontsize": 12.0,
                                                                    "id": "obj-29",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 3,
                                                                    "outlettype": [ "", "bang", "" ],
                                                                    "patching_rect": [ 13.0, 131.0, 51.0, 22.0 ],
                                                                    "text": "t s b s"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "fontname": "Arial",
                                                                    "fontsize": 12.0,
                                                                    "id": "obj-28",
                                                                    "maxclass": "number",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 2,
                                                                    "outlettype": [ "", "bang" ],
                                                                    "parameter_enable": 0,
                                                                    "patching_rect": [ 76.0, 419.0, 39.0, 22.0 ]
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "fontname": "Arial",
                                                                    "fontsize": 12.0,
                                                                    "id": "obj-26",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 2,
                                                                    "outlettype": [ "", "" ],
                                                                    "patching_rect": [ 76.0, 389.0, 106.0, 22.0 ],
                                                                    "text": "zl reg"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-14",
                                                                    "maxclass": "button",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "bang" ],
                                                                    "parameter_enable": 0,
                                                                    "patching_rect": [ 163.0, 327.0, 20.0, 20.0 ]
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "fontname": "Arial",
                                                                    "fontsize": 12.0,
                                                                    "id": "obj-10",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 5,
                                                                    "numoutlets": 4,
                                                                    "outlettype": [ "int", "", "", "int" ],
                                                                    "patching_rect": [ 163.0, 358.0, 78.0, 22.0 ],
                                                                    "text": "counter 0 10"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "fontname": "Arial",
                                                                    "fontsize": 12.0,
                                                                    "id": "obj-9",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 5,
                                                                    "outlettype": [ "", "", "", "", "" ],
                                                                    "patching_rect": [ 45.0, 188.0, 78.0, 22.0 ],
                                                                    "saved_object_attributes": {
                                                                        "legacyoutputorder": 1
                                                                    },
                                                                    "text": "regexp usb.*"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "fontname": "Arial",
                                                                    "fontsize": 12.0,
                                                                    "id": "obj-8",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 2,
                                                                    "outlettype": [ "", "" ],
                                                                    "patching_rect": [ 13.0, 85.0, 49.0, 22.0 ],
                                                                    "text": "zl iter 1"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "fontname": "Arial",
                                                                    "fontsize": 12.0,
                                                                    "id": "obj-1",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 13.0, 484.0, 98.0, 22.0 ],
                                                                    "text": "prepend append"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "comment": "",
                                                                    "id": "obj-45",
                                                                    "index": 1,
                                                                    "maxclass": "inlet",
                                                                    "numinlets": 0,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 13.0, 7.0, 25.0, 25.0 ]
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "comment": "",
                                                                    "id": "obj-46",
                                                                    "index": 1,
                                                                    "maxclass": "outlet",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 0,
                                                                    "patching_rect": [ 13.0, 526.0, 25.0, 25.0 ]
                                                                }
                                                            }
                                                        ],
                                                        "lines": [
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-46", 0 ],
                                                                    "midpoints": [ 22.5, 512.5, 22.5, 512.5 ],
                                                                    "source": [ "obj-1", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-26", 1 ],
                                                                    "source": [ "obj-10", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-10", 0 ],
                                                                    "source": [ "obj-14", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-37", 0 ],
                                                                    "source": [ "obj-2", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-28", 0 ],
                                                                    "source": [ "obj-26", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-31", 0 ],
                                                                    "source": [ "obj-28", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-1", 0 ],
                                                                    "source": [ "obj-29", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-14", 0 ],
                                                                    "midpoints": [ 38.5, 170.0, 172.5, 170.0 ],
                                                                    "order": 1,
                                                                    "source": [ "obj-29", 1 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-32", 2 ],
                                                                    "midpoints": [ 38.5, 178.0, 369.5, 178.0 ],
                                                                    "order": 0,
                                                                    "source": [ "obj-29", 1 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-9", 0 ],
                                                                    "source": [ "obj-29", 2 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-5", 0 ],
                                                                    "midpoints": [ 22.5, 71.5, 213.5, 71.5 ],
                                                                    "order": 0,
                                                                    "source": [ "obj-3", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-8", 0 ],
                                                                    "order": 1,
                                                                    "source": [ "obj-3", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-2", 1 ],
                                                                    "midpoints": [ 85.5, 480.0, 281.0, 480.0, 281.0, 57.0, 261.5, 57.0 ],
                                                                    "order": 0,
                                                                    "source": [ "obj-31", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-46", 0 ],
                                                                    "midpoints": [ 85.5, 512.0, 22.5, 512.0 ],
                                                                    "order": 1,
                                                                    "source": [ "obj-31", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-2", 1 ],
                                                                    "midpoints": [ 317.5, 380.0, 386.0, 380.0, 386.0, 48.0, 261.5, 48.0 ],
                                                                    "order": 0,
                                                                    "source": [ "obj-32", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-46", 0 ],
                                                                    "midpoints": [ 317.5, 512.5, 22.5, 512.5 ],
                                                                    "order": 1,
                                                                    "source": [ "obj-32", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-10", 3 ],
                                                                    "order": 1,
                                                                    "source": [ "obj-35", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-32", 1 ],
                                                                    "midpoints": [ 213.5, 197.5, 343.5, 197.5 ],
                                                                    "order": 0,
                                                                    "source": [ "obj-35", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-46", 0 ],
                                                                    "midpoints": [ 247.5, 479.5, 22.5, 479.5 ],
                                                                    "source": [ "obj-35", 1 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-35", 0 ],
                                                                    "source": [ "obj-37", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-42", 0 ],
                                                                    "midpoints": [ 131.75, 332.0, 85.5, 332.0 ],
                                                                    "source": [ "obj-4", 2 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-49", 0 ],
                                                                    "source": [ "obj-4", 3 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-26", 0 ],
                                                                    "source": [ "obj-42", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-3", 0 ],
                                                                    "source": [ "obj-45", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-32", 0 ],
                                                                    "midpoints": [ 148.25, 305.0, 317.5, 305.0 ],
                                                                    "source": [ "obj-49", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-2", 0 ],
                                                                    "source": [ "obj-5", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-29", 0 ],
                                                                    "source": [ "obj-8", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-4", 0 ],
                                                                    "source": [ "obj-9", 3 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-42", 0 ],
                                                                    "source": [ "obj-9", 2 ]
                                                                }
                                                            }
                                                        ]
                                                    },
                                                    "patching_rect": [ 316.0, 263.0, 131.0, 22.0 ],
                                                    "saved_object_attributes": {
                                                        "fontsize": 13.0
                                                    },
                                                    "text": "p search_usb_MacWin"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 12.0,
                                                    "hidden": 1,
                                                    "id": "obj-12",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "bang" ],
                                                    "patching_rect": [ 191.0, 73.0, 67.0, 22.0 ],
                                                    "text": "closebang"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 12.0,
                                                    "hidden": 1,
                                                    "id": "obj-13",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patcher": {
                                                        "fileversion": 1,
                                                        "appversion": {
                                                            "major": 9,
                                                            "minor": 1,
                                                            "revision": 1,
                                                            "architecture": "x64",
                                                            "modernui": 1
                                                        },
                                                        "classnamespace": "box",
                                                        "rect": [ 25.0, 69.0, 147.0, 177.0 ],
                                                        "default_fontsize": 13.0,
                                                        "toolbarvisible": 0,
                                                        "boxes": [
                                                            {
                                                                "box": {
                                                                    "fontname": "Arial",
                                                                    "fontsize": 12.0,
                                                                    "id": "obj-24",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 2,
                                                                    "outlettype": [ "bang", "" ],
                                                                    "patching_rect": [ 15.0, 56.0, 38.5, 22.0 ],
                                                                    "text": "sel 0"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "fontname": "Helvetica",
                                                                    "fontsize": 12.0,
                                                                    "id": "obj-31",
                                                                    "maxclass": "message",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 15.0, 100.0, 38.0, 20.0 ],
                                                                    "text": "close"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "comment": "",
                                                                    "id": "obj-8",
                                                                    "index": 1,
                                                                    "maxclass": "inlet",
                                                                    "numinlets": 0,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "int" ],
                                                                    "patching_rect": [ 15.0, 17.0, 25.0, 25.0 ]
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "comment": "",
                                                                    "id": "obj-11",
                                                                    "index": 2,
                                                                    "maxclass": "inlet",
                                                                    "numinlets": 0,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "bang" ],
                                                                    "patching_rect": [ 92.0, 17.0, 25.0, 25.0 ]
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "comment": "",
                                                                    "id": "obj-12",
                                                                    "index": 1,
                                                                    "maxclass": "outlet",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 0,
                                                                    "patching_rect": [ 15.0, 135.0, 25.0, 25.0 ]
                                                                }
                                                            }
                                                        ],
                                                        "lines": [
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-31", 0 ],
                                                                    "midpoints": [ 101.5, 86.5, 24.5, 86.5 ],
                                                                    "source": [ "obj-11", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-31", 0 ],
                                                                    "source": [ "obj-24", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-12", 0 ],
                                                                    "source": [ "obj-31", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-24", 0 ],
                                                                    "source": [ "obj-8", 0 ]
                                                                }
                                                            }
                                                        ]
                                                    },
                                                    "patching_rect": [ 161.0, 108.5, 49.0, 22.0 ],
                                                    "saved_object_attributes": {
                                                        "fontsize": 13.0
                                                    },
                                                    "text": "p close"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 12.0,
                                                    "id": "obj-19",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patcher": {
                                                        "fileversion": 1,
                                                        "appversion": {
                                                            "major": 9,
                                                            "minor": 1,
                                                            "revision": 1,
                                                            "architecture": "x64",
                                                            "modernui": 1
                                                        },
                                                        "classnamespace": "box",
                                                        "rect": [ 579.0, 45.0, 283.0, 226.0 ],
                                                        "default_fontsize": 13.0,
                                                        "toolbarvisible": 0,
                                                        "boxes": [
                                                            {
                                                                "box": {
                                                                    "fontname": "Arial",
                                                                    "fontsize": 12.0,
                                                                    "id": "obj-14",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "bang" ],
                                                                    "patching_rect": [ 100.0, 83.0, 69.0, 22.0 ],
                                                                    "text": "delay 2000"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "fontname": "Arial",
                                                                    "fontsize": 12.0,
                                                                    "id": "obj-13",
                                                                    "maxclass": "message",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 100.0, 116.0, 37.0, 22.0 ],
                                                                    "text": "open"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "fontname": "Arial",
                                                                    "fontsize": 12.0,
                                                                    "id": "obj-1",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 2,
                                                                    "outlettype": [ "bang", "" ],
                                                                    "patching_rect": [ 100.0, 51.0, 99.0, 22.0 ],
                                                                    "text": "t b s"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "color": [ 0.866667, 0.866667, 0.866667, 1.0 ],
                                                                    "fontname": "Arial",
                                                                    "fontsize": 12.0,
                                                                    "id": "obj-72",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 180.0, 116.0, 80.0, 22.0 ],
                                                                    "text": "prepend port"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "comment": "",
                                                                    "id": "obj-3",
                                                                    "index": 1,
                                                                    "maxclass": "inlet",
                                                                    "numinlets": 0,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "bang" ],
                                                                    "patching_rect": [ 14.0, 11.0, 25.0, 25.0 ]
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "fontname": "Arial",
                                                                    "fontsize": 12.0,
                                                                    "id": "obj-2",
                                                                    "maxclass": "message",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 14.0, 51.0, 34.0, 22.0 ],
                                                                    "text": "print"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "comment": "",
                                                                    "id": "obj-7",
                                                                    "index": 2,
                                                                    "maxclass": "inlet",
                                                                    "numinlets": 0,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 100.0, 11.0, 25.0, 25.0 ]
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "comment": "",
                                                                    "id": "obj-8",
                                                                    "index": 1,
                                                                    "maxclass": "outlet",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 0,
                                                                    "patching_rect": [ 14.0, 187.0, 25.0, 25.0 ]
                                                                }
                                                            }
                                                        ],
                                                        "lines": [
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-14", 0 ],
                                                                    "source": [ "obj-1", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-72", 0 ],
                                                                    "source": [ "obj-1", 1 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-8", 0 ],
                                                                    "midpoints": [ 109.5, 160.0, 23.5, 160.0 ],
                                                                    "source": [ "obj-13", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-13", 0 ],
                                                                    "source": [ "obj-14", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-8", 0 ],
                                                                    "source": [ "obj-2", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-2", 0 ],
                                                                    "source": [ "obj-3", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-1", 0 ],
                                                                    "source": [ "obj-7", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-8", 0 ],
                                                                    "midpoints": [ 189.5, 160.0, 23.5, 160.0 ],
                                                                    "source": [ "obj-72", 0 ]
                                                                }
                                                            }
                                                        ]
                                                    },
                                                    "patching_rect": [ 56.0, 158.0, 99.0, 22.0 ],
                                                    "saved_object_attributes": {
                                                        "fontsize": 13.0
                                                    },
                                                    "text": "p serial_scanner"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 12.0,
                                                    "id": "obj-4",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "bang" ],
                                                    "patching_rect": [ 91.0, 108.5, 65.0, 22.0 ],
                                                    "text": "qmetro 10"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial Bold",
                                                    "fontsize": 18.0,
                                                    "id": "obj-22",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "int", "" ],
                                                    "patching_rect": [ 91.0, 209.5, 296.0, 29.0 ],
                                                    "text": "serial # 9600 @autoopen 0 @dtr 1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-43",
                                                    "index": 3,
                                                    "maxclass": "inlet",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "int" ],
                                                    "patching_rect": [ 91.0, 41.0, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-44",
                                                    "index": 2,
                                                    "maxclass": "inlet",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "bang" ],
                                                    "patching_rect": [ 56.0, 41.0, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-45",
                                                    "index": 4,
                                                    "maxclass": "inlet",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 137.0, 41.0, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-46",
                                                    "index": 1,
                                                    "maxclass": "outlet",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 91.0, 302.0, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-48",
                                                    "index": 2,
                                                    "maxclass": "outlet",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 316.0, 314.0, 30.0, 30.0 ]
                                                }
                                            }
                                        ],
                                        "lines": [
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-22", 0 ],
                                                    "midpoints": [ 33.5, 204.75, 100.5, 204.75 ],
                                                    "source": [ "obj-1", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-13", 1 ],
                                                    "hidden": 1,
                                                    "source": [ "obj-12", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-22", 0 ],
                                                    "hidden": 1,
                                                    "midpoints": [ 170.5, 202.0, 100.5, 202.0 ],
                                                    "source": [ "obj-13", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-22", 0 ],
                                                    "midpoints": [ 65.5, 202.25, 100.5, 202.25 ],
                                                    "source": [ "obj-19", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-22", 0 ],
                                                    "source": [ "obj-2", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-3", 0 ],
                                                    "order": 1,
                                                    "source": [ "obj-22", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-38", 0 ],
                                                    "order": 0,
                                                    "source": [ "obj-22", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-47", 0 ],
                                                    "source": [ "obj-22", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-46", 0 ],
                                                    "source": [ "obj-38", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-22", 0 ],
                                                    "source": [ "obj-4", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-13", 0 ],
                                                    "order": 0,
                                                    "source": [ "obj-43", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-4", 0 ],
                                                    "order": 1,
                                                    "source": [ "obj-43", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-19", 0 ],
                                                    "source": [ "obj-44", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-19", 1 ],
                                                    "source": [ "obj-45", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-48", 0 ],
                                                    "source": [ "obj-47", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-22", 0 ],
                                                    "source": [ "obj-6", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-6", 0 ],
                                                    "source": [ "obj-8", 0 ]
                                                }
                                            }
                                        ],
                                        "toolbaradditions": [ "BEAP", "Vizzie", "TS.Modular" ]
                                    },
                                    "patching_rect": [ 53.0, 583.4931030273438, 131.0, 22.0 ],
                                    "text": "p serialStuff"
                                }
                            },
                            {
                                "box": {
                                    "bgfillcolor_angle": 270.0,
                                    "bgfillcolor_autogradient": 0.0,
                                    "bgfillcolor_color": [ 0.2, 0.2, 0.2, 1.0 ],
                                    "bgfillcolor_color1": [ 0.117647058823529, 0.117647058823529, 0.117647058823529, 1.0 ],
                                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1.0 ],
                                    "bgfillcolor_proportion": 0.5,
                                    "bgfillcolor_type": "gradient",
                                    "id": "obj-3",
                                    "items": [ "debug-console", ",", "wlan-debug", ",", "dinggoo", ",", "Bluetooth-Incoming-Port", ",", "usbmodem1101" ],
                                    "maxclass": "umenu",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "int", "", "" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 165.0, 615.0, 159.5, 22.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 495.0, 98.22575378417969, 130.24301433563232, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-5",
                                    "maxclass": "button",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 90.33332824707031, 556.7788696289062, 20.0, 20.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-6",
                                    "maxclass": "toggle",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 435.8730773925781, 472.9986267089844, 20.0, 20.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-23",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 474.224853515625, 475.6666564941406, 79.41116333007812, 20.0 ],
                                    "text": "all ON/OFF"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-153",
                                    "maxclass": "gswitch2",
                                    "numinlets": 2,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "" ],
                                    "outputs": 3,
                                    "parameter_enable": 0,
                                    "patching_rect": [ 142.4076385498047, 159.2666778564453, 50.0, 32.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 10.0,
                                    "id": "obj-151",
                                    "maxclass": "live.tab",
                                    "num_lines_patching": 3,
                                    "num_lines_presentation": 3,
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "float" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 142.4076385498047, 39.563758850097656, 39.0, 48.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 46.95001673698425, 37.341285705566406, 39.0, 48.0 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_enum": [ "Digital", "Analog", "Servo" ],
                                            "parameter_longname": "servo[1]",
                                            "parameter_mmax": 2,
                                            "parameter_modmode": 0,
                                            "parameter_shortname": "servo",
                                            "parameter_type": 2,
                                            "parameter_unitstyle": 9
                                        }
                                    },
                                    "varname": "textbutton[23]"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-47",
                                    "int": 2,
                                    "maxclass": "gswitch2",
                                    "numinlets": 2,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "" ],
                                    "outputs": 3,
                                    "parameter_enable": 0,
                                    "patching_rect": [ 423.2637634277344, 169.2775115966797, 39.0, 32.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 10.0,
                                    "id": "obj-40",
                                    "maxclass": "live.tab",
                                    "num_lines_patching": 3,
                                    "num_lines_presentation": 3,
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "float" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 423.2637634277344, 39.563758850097656, 39.0, 48.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 214.8557403087616, 37.341285705566406, 39.0, 48.0 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_enum": [ "Digital", "Analog", "Servo" ],
                                            "parameter_longname": "servo",
                                            "parameter_mmax": 2,
                                            "parameter_modmode": 0,
                                            "parameter_shortname": "servo",
                                            "parameter_type": 2,
                                            "parameter_unitstyle": 9
                                        }
                                    },
                                    "varname": "textbutton[22]"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 10.450348,
                                    "id": "obj-9",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 433.2637634277344, 242.36944580078125, 48.0, 20.0 ],
                                    "text": "w a 6 $1"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 10.450348,
                                    "id": "obj-34",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 173.4076385498047, 203.47613525390625, 47.0, 20.0 ],
                                    "text": "w s 3 $1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-148",
                                    "maxclass": "live.text",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 735.86376953125, 733.0, 28.399999618530273, 14.800000190734863 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 392.8047606945038, 164.0321044921875, 28.399999618530273, 14.800000190734863 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_enum": [ "val1", "val2" ],
                                            "parameter_initial": [ 0 ],
                                            "parameter_longname": "write[19]",
                                            "parameter_mmax": 1,
                                            "parameter_modmode": 0,
                                            "parameter_shortname": "write",
                                            "parameter_type": 2
                                        }
                                    },
                                    "text": "ON",
                                    "texton": "ON",
                                    "varname": "textbutton[21]"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-149",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 735.86376953125, 759.0, 54.0, 22.0 ],
                                    "text": "gate 1 0"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-146",
                                    "maxclass": "live.text",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 677.6256103515625, 733.0, 28.399999618530273, 14.800000190734863 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 357.5237548351288, 164.0321044921875, 28.399999618530273, 14.800000190734863 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_enum": [ "val1", "val2" ],
                                            "parameter_initial": [ 0 ],
                                            "parameter_longname": "write[18]",
                                            "parameter_mmax": 1,
                                            "parameter_modmode": 0,
                                            "parameter_shortname": "write",
                                            "parameter_type": 2
                                        }
                                    },
                                    "text": "ON",
                                    "texton": "ON",
                                    "varname": "textbutton[20]"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-147",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 677.6256103515625, 759.0, 54.0, 22.0 ],
                                    "text": "gate 1 0"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-143",
                                    "maxclass": "live.text",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 619.387451171875, 733.0, 28.399999618530273, 14.800000190734863 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 322.24271845817566, 164.0321044921875, 28.399999618530273, 14.800000190734863 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_enum": [ "val1", "val2" ],
                                            "parameter_initial": [ 0 ],
                                            "parameter_longname": "write[17]",
                                            "parameter_mmax": 1,
                                            "parameter_modmode": 0,
                                            "parameter_shortname": "write",
                                            "parameter_type": 2
                                        }
                                    },
                                    "text": "ON",
                                    "texton": "ON",
                                    "varname": "textbutton[19]"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-145",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 619.387451171875, 759.0, 54.0, 22.0 ],
                                    "text": "gate 1 0"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-139",
                                    "maxclass": "live.text",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 561.1492919921875, 733.0, 28.399999618530273, 14.800000190734863 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 286.9617431163788, 164.0321044921875, 28.399999618530273, 14.800000190734863 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_enum": [ "val1", "val2" ],
                                            "parameter_initial": [ 0 ],
                                            "parameter_longname": "write[16]",
                                            "parameter_mmax": 1,
                                            "parameter_modmode": 0,
                                            "parameter_shortname": "write",
                                            "parameter_type": 2
                                        }
                                    },
                                    "text": "ON",
                                    "texton": "ON",
                                    "varname": "textbutton[18]"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-142",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 561.1492919921875, 759.0, 54.0, 22.0 ],
                                    "text": "gate 1 0"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-125",
                                    "maxclass": "live.text",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 502.9111633300781, 733.0, 28.399999618530273, 14.800000190734863 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 251.68070673942566, 164.0321044921875, 28.399999618530273, 14.800000190734863 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_enum": [ "val1", "val2" ],
                                            "parameter_initial": [ 0 ],
                                            "parameter_longname": "write[15]",
                                            "parameter_mmax": 1,
                                            "parameter_modmode": 0,
                                            "parameter_shortname": "write",
                                            "parameter_type": 2
                                        }
                                    },
                                    "text": "ON",
                                    "texton": "ON",
                                    "varname": "textbutton[17]"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-138",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 502.9111633300781, 759.0, 54.0, 22.0 ],
                                    "text": "gate 1 0"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-123",
                                    "maxclass": "live.text",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 444.67303466796875, 733.0, 28.399999618530273, 14.800000190734863 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 216.39970088005066, 164.0321044921875, 28.399999618530273, 14.800000190734863 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_enum": [ "val1", "val2" ],
                                            "parameter_initial": [ 0 ],
                                            "parameter_longname": "write[14]",
                                            "parameter_mmax": 1,
                                            "parameter_modmode": 0,
                                            "parameter_shortname": "write",
                                            "parameter_type": 2
                                        }
                                    },
                                    "text": "ON",
                                    "texton": "ON",
                                    "varname": "textbutton[16]"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-124",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 444.67303466796875, 759.0, 54.0, 22.0 ],
                                    "text": "gate 1 0"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-121",
                                    "maxclass": "live.text",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 386.4349060058594, 733.0, 28.399999618530273, 14.800000190734863 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 181.11871027946472, 164.0321044921875, 28.399999618530273, 14.800000190734863 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_enum": [ "val1", "val2" ],
                                            "parameter_initial": [ 0 ],
                                            "parameter_longname": "write[13]",
                                            "parameter_mmax": 1,
                                            "parameter_modmode": 0,
                                            "parameter_shortname": "write",
                                            "parameter_type": 2
                                        }
                                    },
                                    "text": "ON",
                                    "texton": "ON",
                                    "varname": "textbutton[15]"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-122",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 386.4349060058594, 759.0, 54.0, 22.0 ],
                                    "text": "gate 1 0"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-119",
                                    "maxclass": "live.text",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 328.19677734375, 733.0, 28.399999618530273, 14.800000190734863 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 145.83770442008972, 164.0321044921875, 28.399999618530273, 14.800000190734863 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_enum": [ "val1", "val2" ],
                                            "parameter_initial": [ 0 ],
                                            "parameter_longname": "write[12]",
                                            "parameter_mmax": 1,
                                            "parameter_modmode": 0,
                                            "parameter_shortname": "write",
                                            "parameter_type": 2
                                        }
                                    },
                                    "text": "ON",
                                    "texton": "ON",
                                    "varname": "textbutton[14]"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-120",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 328.19677734375, 759.0, 54.0, 22.0 ],
                                    "text": "gate 1 0"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-116",
                                    "maxclass": "live.text",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 269.9586486816406, 733.0, 28.399999618530273, 14.800000190734863 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 110.55669093132019, 164.0321044921875, 28.399999618530273, 14.800000190734863 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_enum": [ "val1", "val2" ],
                                            "parameter_initial": [ 0 ],
                                            "parameter_longname": "write[11]",
                                            "parameter_mmax": 1,
                                            "parameter_modmode": 0,
                                            "parameter_shortname": "write",
                                            "parameter_type": 2
                                        }
                                    },
                                    "text": "ON",
                                    "texton": "ON",
                                    "varname": "textbutton[13]"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-118",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 269.9586486816406, 759.0, 54.0, 22.0 ],
                                    "text": "gate 1 0"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-110",
                                    "maxclass": "live.text",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 211.7205047607422, 733.0, 28.399999618530273, 14.800000190734863 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 75.27568507194519, 164.0321044921875, 28.399999618530273, 14.800000190734863 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_enum": [ "val1", "val2" ],
                                            "parameter_initial": [ 0 ],
                                            "parameter_longname": "write[10]",
                                            "parameter_mmax": 1,
                                            "parameter_modmode": 0,
                                            "parameter_shortname": "write",
                                            "parameter_type": 2
                                        }
                                    },
                                    "text": "ON",
                                    "texton": "ON",
                                    "varname": "textbutton[12]"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-115",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 211.7205047607422, 759.0, 54.0, 22.0 ],
                                    "text": "gate 1 0"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-106",
                                    "maxclass": "live.text",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 153.48235321044922, 733.0, 28.399999618530273, 14.800000190734863 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 39.994683027267456, 164.0321044921875, 28.399999618530273, 14.800000190734863 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_enum": [ "val1", "val2" ],
                                            "parameter_initial": [ 0 ],
                                            "parameter_longname": "write[9]",
                                            "parameter_mmax": 1,
                                            "parameter_modmode": 0,
                                            "parameter_shortname": "write",
                                            "parameter_type": 2
                                        }
                                    },
                                    "text": "ON",
                                    "texton": "ON",
                                    "varname": "textbutton[11]"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-109",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 153.48235321044922, 759.0, 54.0, 22.0 ],
                                    "text": "gate 1 0"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-104",
                                    "maxclass": "live.text",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 95.24420166015625, 733.0, 28.399999618530273, 14.800000190734863 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 4.71367621421814, 164.0321044921875, 28.399999618530273, 14.800000190734863 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_enum": [ "val1", "val2" ],
                                            "parameter_initial": [ 0 ],
                                            "parameter_longname": "write[6]",
                                            "parameter_mmax": 1,
                                            "parameter_modmode": 0,
                                            "parameter_shortname": "write",
                                            "parameter_type": 2
                                        }
                                    },
                                    "text": "ON",
                                    "texton": "ON",
                                    "varname": "textbutton[10]"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-105",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 95.24420166015625, 759.0, 54.0, 22.0 ],
                                    "text": "gate 1 0"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-61",
                                    "maxclass": "live.text",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 1123.659912109375, 709.8819580078125, 28.399999618530273, 14.800000190734863 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 596.7931468154003, 164.28644816080728, 28.399999618530273, 14.800000190734863 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_enum": [ "val1", "val2" ],
                                            "parameter_longname": "write[5]",
                                            "parameter_mmax": 1,
                                            "parameter_modmode": 0,
                                            "parameter_shortname": "write",
                                            "parameter_type": 2
                                        }
                                    },
                                    "text": "ON",
                                    "texton": "ON",
                                    "varname": "textbutton[9]"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-68",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 1123.659912109375, 733.0, 54.0, 22.0 ],
                                    "text": "gate 1 0"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-54",
                                    "maxclass": "live.text",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 1064.639892578125, 709.8819580078125, 28.399999618530273, 14.800000190734863 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 563.8049259952711, 164.28644816080728, 28.399999618530273, 14.800000190734863 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_enum": [ "val1", "val2" ],
                                            "parameter_longname": "write[4]",
                                            "parameter_mmax": 1,
                                            "parameter_modmode": 0,
                                            "parameter_shortname": "write",
                                            "parameter_type": 2
                                        }
                                    },
                                    "text": "ON",
                                    "texton": "ON",
                                    "varname": "textbutton[7]"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-60",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 1064.639892578125, 733.0, 54.0, 22.0 ],
                                    "text": "gate 1 0"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-50",
                                    "maxclass": "live.text",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 1005.6199340820312, 709.8819580078125, 28.399999618530273, 14.800000190734863 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 530.816705175142, 164.28644816080728, 28.399999618530273, 14.800000190734863 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_enum": [ "val1", "val2" ],
                                            "parameter_longname": "write[3]",
                                            "parameter_mmax": 1,
                                            "parameter_modmode": 0,
                                            "parameter_shortname": "write",
                                            "parameter_type": 2
                                        }
                                    },
                                    "text": "ON",
                                    "texton": "ON",
                                    "varname": "textbutton[6]"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-52",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 1005.6199340820312, 733.0, 54.0, 22.0 ],
                                    "text": "gate 1 0"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-48",
                                    "maxclass": "live.text",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 946.5999755859375, 709.8819580078125, 28.399999618530273, 14.800000190734863 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 497.8284843550129, 164.28644816080728, 28.399999618530273, 14.800000190734863 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_enum": [ "val1", "val2" ],
                                            "parameter_longname": "write[2]",
                                            "parameter_mmax": 1,
                                            "parameter_modmode": 0,
                                            "parameter_shortname": "write",
                                            "parameter_type": 2
                                        }
                                    },
                                    "text": "ON",
                                    "texton": "ON",
                                    "varname": "textbutton[5]"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-49",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 946.5999755859375, 733.0, 54.0, 22.0 ],
                                    "text": "gate 1 0"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-45",
                                    "maxclass": "live.text",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 887.5800170898438, 709.8819580078125, 28.399999618530273, 14.800000190734863 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 464.84026353488383, 164.28644816080728, 28.399999618530273, 14.800000190734863 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_enum": [ "val1", "val2" ],
                                            "parameter_longname": "write[1]",
                                            "parameter_mmax": 1,
                                            "parameter_modmode": 0,
                                            "parameter_shortname": "write",
                                            "parameter_type": 2
                                        }
                                    },
                                    "text": "ON",
                                    "texton": "ON",
                                    "varname": "textbutton[4]"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-46",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 887.5800170898438, 733.0, 54.0, 22.0 ],
                                    "text": "gate 1 0"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-41",
                                    "maxclass": "live.text",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 825.3630981445312, 709.8819580078125, 28.399999618530273, 14.800000190734863 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 431.85204271475476, 164.28644816080728, 28.399999618530273, 14.800000190734863 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_enum": [ "val1", "val2" ],
                                            "parameter_longname": "write[8]",
                                            "parameter_mmax": 1,
                                            "parameter_modmode": 0,
                                            "parameter_shortname": "write",
                                            "parameter_type": 2
                                        }
                                    },
                                    "text": "ON",
                                    "texton": "ON",
                                    "varname": "textbutton[8]"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-44",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 828.2216796875, 733.0, 54.0, 22.0 ],
                                    "text": "gate 1 0"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontname": "Arial",
                                    "fontsize": 10.0,
                                    "hint": "",
                                    "id": "obj-102",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 847.0800170898438, 375.0, 163.0, 18.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 482.62150716781616, 135.0, 155.0, 18.0 ],
                                    "text": "CMD Max Arduino Module 2025",
                                    "textcolor": [ 1.0, 1.0, 1.0, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.12156862745098, 0.12156862745098, 0.125490196078431, 1.0 ],
                                    "color": [ 0.12156862745098, 0.12156862745098, 0.125490196078431, 1.0 ],
                                    "fontsize": 9.0,
                                    "id": "obj-58",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patcher": {
                                        "fileversion": 1,
                                        "appversion": {
                                            "major": 9,
                                            "minor": 1,
                                            "revision": 1,
                                            "architecture": "x64",
                                            "modernui": 1
                                        },
                                        "classnamespace": "box",
                                        "rect": [ 34.0, 87.0, 617.0, 679.0 ],
                                        "boxes": [
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-2",
                                                    "index": 1,
                                                    "maxclass": "inlet",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 799.0, 14.0, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-1",
                                                    "linecount": 168,
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 12.0, 12.0, 789.0, 2272.0 ],
                                                    "text": "/* \n VERSION may 2025 by Mark Meeuwenoord\n ---- CMD ----\n Control Arduino board functions with the following messages:\n \nmode d      // only digital input\nmode a      // only analog input\nmode b      // both digital and analog\n\nr           // request immediate readout\n\nw d 13 1    // digitalWrite HIGH to pin 13\nw a 6 127   // analogWrite 50% PWM to pin 6\nw s 9 90    // set servo at pin 9 to 90 degrees\n \n */\n\n\n#include <Servo.h>\n\nconst int NUM_SERVOS = 6;\nServo servos[NUM_SERVOS];\nbool servoAttached[NUM_SERVOS];\n\n// Pins\nconst int digitalPins[] = {2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13};\nconst int analogPins[] = {A0, A1, A2, A3, A4, A5};\n\nint lastDigital[12];\nint lastAnalog[6];\n\nchar readMode = 'b'; // 'd' = digital, 'a' = analog, 'b' = both\n\nunsigned long lastPoll = 0;\nconst unsigned long pollInterval = 50;\n\nvoid setup() {\n  Serial.begin(115200);\n\n  for (int i = 0; i < 12; i++) {\n    pinMode(digitalPins[i], INPUT_PULLUP);\n    lastDigital[i] = digitalRead(digitalPins[i]);\n  }\n\n  for (int i = 0; i < 6; i++) {\n    lastAnalog[i] = analogRead(analogPins[i]);\n    servoAttached[i] = false;\n  }\n}\n\nvoid loop() {\n  if (Serial.available()) {\n    handleSerial();\n  }\n\n  if (millis() - lastPoll >= pollInterval) {\n    lastPoll = millis();\n    checkAndSendChanges();\n  }\n}\n\nvoid checkAndSendChanges() {\n  bool changed = false;\n\n  if (readMode == 'd' || readMode == 'b') {\n    for (int i = 0; i < 12; i++) {\n      int val = digitalRead(digitalPins[i]);\n      if (val != lastDigital[i]) {\n        lastDigital[i] = val;\n        changed = true;\n      }\n    }\n    if (changed) sendDigital();\n  }\n\n  changed = false;\n  if (readMode == 'a' || readMode == 'b') {\n    for (int i = 0; i < 6; i++) {\n      int val = analogRead(analogPins[i]);\n      if (abs(val - lastAnalog[i]) > 4) {\n        lastAnalog[i] = val;\n        changed = true;\n      }\n    }\n    if (changed) sendAnalog();\n  }\n}\n\nvoid sendDigital() {\n  Serial.print(\"d\");\n  for (int i = 0; i < 12; i++) {\n    Serial.print(\" \");\n    Serial.print(lastDigital[i]);\n  }\n  Serial.println();\n}\n\nvoid sendAnalog() {\n  Serial.print(\"a\");\n  for (int i = 0; i < 6; i++) {\n    Serial.print(\" \");\n    Serial.print(lastAnalog[i]);\n  }\n  Serial.println();\n}\n\nvoid handleSerial() {\n  static char buffer[64];\n  static byte idx = 0;\n\n  while (Serial.available()) {\n    char c = Serial.read();\n    if (c == '\\n' || c == '\\r') {\n      buffer[idx] = '\\0';\n      parseCommand(buffer);\n      idx = 0;\n    } else if (idx < sizeof(buffer) - 1) {\n      buffer[idx++] = c;\n    }\n  }\n}\n\nvoid parseCommand(char* cmd) {\n  if (strcmp(cmd, \"r\") == 0) {\n    if (readMode == 'd' || readMode == 'b') sendDigital();\n    if (readMode == 'a' || readMode == 'b') sendAnalog();\n  } else if (strncmp(cmd, \"mode \", 5) == 0) {\n    char m = cmd[5];\n    if (m == 'a' || m == 'd' || m == 'b') {\n      readMode = m;\n      Serial.print(\"mode \");\n      Serial.println(readMode);\n    }\n  } else if (cmd[0] == 'w') {\n    char type;\n    int pin, val;\n    if (sscanf(cmd, \"w %c %d %d\", &type, &pin, &val) == 3) {\n      if (type == 'd') {\n        pinMode(pin, OUTPUT);\n        digitalWrite(pin, val);\n      } else if (type == 'a') {\n        pinMode(pin, OUTPUT);\n        analogWrite(pin, val);\n      } else if (type == 's') {\n        if (pin >= 2 && pin <= 13) {\n          int index = getServoIndex(pin);\n          if (index >= 0) {\n            if (!servoAttached[index]) {\n              servos[index].attach(pin);\n              servoAttached[index] = true;\n            }\n            servos[index].write(val);\n          }\n        }\n      }\n    }\n  }\n}\n\nint getServoIndex(int pin) {\n  // Maps pin numbers to one of 6 servo slots\n  for (int i = 0; i < NUM_SERVOS; i++) {\n    if (!servoAttached[i] || servos[i].attached() && servos[i].read() == pin) {\n      return i;\n    }\n  }\n  return -1; // No available servo slots\n}\n"
                                                }
                                            }
                                        ],
                                        "lines": [],
                                        "toolbaradditions": [ "BEAP", "Vizzie" ]
                                    },
                                    "patching_rect": [ 668.4742431640625, 637.173583984375, 112.0, 19.0 ],
                                    "text": "p ArduinoCode",
                                    "textcolor": [ 1.0, 1.0, 1.0, 1.0 ],
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "activedialcolor": [ 0.784314, 0.145098, 0.023529, 1.0 ],
                                    "activeneedlecolor": [ 1.0, 1.0, 1.0, 1.0 ],
                                    "dialcolor": [ 1.0, 1.0, 1.0, 1.0 ],
                                    "id": "obj-236",
                                    "maxclass": "live.dial",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "float" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 1152.65966796875, 809.3333740234375, 44.0, 48.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 597.1167113780975, 195.906005859375, 44.0, 48.0 ],
                                    "saved_attribute_attributes": {
                                        "activedialcolor": {
                                            "expression": ""
                                        },
                                        "activeneedlecolor": {
                                            "expression": ""
                                        },
                                        "dialcolor": {
                                            "expression": ""
                                        },
                                        "textcolor": {
                                            "expression": ""
                                        },
                                        "valueof": {
                                            "parameter_longname": "A5",
                                            "parameter_mmax": 1023.0,
                                            "parameter_modmode": 0,
                                            "parameter_shortname": "A5",
                                            "parameter_type": 0,
                                            "parameter_unitstyle": 0
                                        }
                                    },
                                    "textcolor": [ 1.0, 1.0, 1.0, 1.0 ],
                                    "varname": "live.dial"
                                }
                            },
                            {
                                "box": {
                                    "activedialcolor": [ 0.784314, 0.145098, 0.023529, 1.0 ],
                                    "activeneedlecolor": [ 1.0, 1.0, 1.0, 1.0 ],
                                    "dialcolor": [ 1.0, 1.0, 1.0, 1.0 ],
                                    "id": "obj-235",
                                    "maxclass": "live.dial",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "float" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 1085.68017578125, 809.3333740234375, 44.0, 48.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 564.7129638195038, 195.906005859375, 44.0, 48.0 ],
                                    "saved_attribute_attributes": {
                                        "activedialcolor": {
                                            "expression": ""
                                        },
                                        "activeneedlecolor": {
                                            "expression": ""
                                        },
                                        "dialcolor": {
                                            "expression": ""
                                        },
                                        "textcolor": {
                                            "expression": ""
                                        },
                                        "valueof": {
                                            "parameter_linknames": 1,
                                            "parameter_longname": "A4",
                                            "parameter_mmax": 1023.0,
                                            "parameter_modmode": 0,
                                            "parameter_shortname": "A4",
                                            "parameter_type": 0,
                                            "parameter_unitstyle": 0
                                        }
                                    },
                                    "textcolor": [ 1.0, 1.0, 1.0, 1.0 ],
                                    "varname": "A4"
                                }
                            },
                            {
                                "box": {
                                    "activedialcolor": [ 0.784314, 0.145098, 0.023529, 1.0 ],
                                    "activeneedlecolor": [ 1.0, 1.0, 1.0, 1.0 ],
                                    "dialcolor": [ 1.0, 1.0, 1.0, 1.0 ],
                                    "id": "obj-234",
                                    "maxclass": "live.dial",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "float" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 1020.5800170898438, 809.3333740234375, 44.0, 48.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 528.38294672966, 195.906005859375, 44.0, 48.0 ],
                                    "saved_attribute_attributes": {
                                        "activedialcolor": {
                                            "expression": ""
                                        },
                                        "activeneedlecolor": {
                                            "expression": ""
                                        },
                                        "dialcolor": {
                                            "expression": ""
                                        },
                                        "textcolor": {
                                            "expression": ""
                                        },
                                        "valueof": {
                                            "parameter_longname": "A3",
                                            "parameter_mmax": 1023.0,
                                            "parameter_modmode": 0,
                                            "parameter_shortname": "A3",
                                            "parameter_type": 0,
                                            "parameter_unitstyle": 0
                                        }
                                    },
                                    "textcolor": [ 1.0, 1.0, 1.0, 1.0 ],
                                    "varname": "live.dial[1]"
                                }
                            },
                            {
                                "box": {
                                    "activedialcolor": [ 0.784314, 0.145098, 0.023529, 1.0 ],
                                    "activeneedlecolor": [ 1.0, 1.0, 1.0, 1.0 ],
                                    "dialcolor": [ 1.0, 1.0, 1.0, 1.0 ],
                                    "id": "obj-233",
                                    "maxclass": "live.dial",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "float" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 962.1666870117188, 809.3333740234375, 44.0, 48.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 492.7308166027069, 195.906005859375, 44.0, 48.0 ],
                                    "saved_attribute_attributes": {
                                        "activedialcolor": {
                                            "expression": ""
                                        },
                                        "activeneedlecolor": {
                                            "expression": ""
                                        },
                                        "dialcolor": {
                                            "expression": ""
                                        },
                                        "textcolor": {
                                            "expression": ""
                                        },
                                        "valueof": {
                                            "parameter_longname": "A2",
                                            "parameter_mmax": 1023.0,
                                            "parameter_modmode": 0,
                                            "parameter_shortname": "A2",
                                            "parameter_type": 0,
                                            "parameter_unitstyle": 0
                                        }
                                    },
                                    "textcolor": [ 1.0, 1.0, 1.0, 1.0 ],
                                    "varname": "live.dial[2]"
                                }
                            },
                            {
                                "box": {
                                    "activedialcolor": [ 0.784314, 0.145098, 0.023529, 1.0 ],
                                    "activeneedlecolor": [ 1.0, 1.0, 1.0, 1.0 ],
                                    "dialcolor": [ 1.0, 1.0, 1.0, 1.0 ],
                                    "id": "obj-232",
                                    "maxclass": "live.dial",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "float" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 904.4800415039062, 809.3333740234375, 44.0, 48.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 454.6933104991913, 195.906005859375, 44.0, 48.0 ],
                                    "saved_attribute_attributes": {
                                        "activedialcolor": {
                                            "expression": ""
                                        },
                                        "activeneedlecolor": {
                                            "expression": ""
                                        },
                                        "dialcolor": {
                                            "expression": ""
                                        },
                                        "textcolor": {
                                            "expression": ""
                                        },
                                        "valueof": {
                                            "parameter_longname": "A1",
                                            "parameter_mmax": 1023.0,
                                            "parameter_modmode": 0,
                                            "parameter_shortname": "A1",
                                            "parameter_type": 0,
                                            "parameter_unitstyle": 0
                                        }
                                    },
                                    "textcolor": [ 1.0, 1.0, 1.0, 1.0 ],
                                    "varname": "live.dial[3]"
                                }
                            },
                            {
                                "box": {
                                    "activebgcolor": [ 0.0, 0.0, 0.0, 1.0 ],
                                    "activebgoncolor": [ 1.0, 1.0, 1.0, 1.0 ],
                                    "bgcolor": [ 0.0, 0.0, 0.0, 1.0 ],
                                    "bgoncolor": [ 1.0, 1.0, 1.0, 1.0 ],
                                    "bordercolor": [ 1.0, 1.0, 1.0, 1.0 ],
                                    "focusbordercolor": [ 1.0, 1.0, 1.0, 0.0 ],
                                    "id": "obj-215",
                                    "ignoreclick": 1,
                                    "maxclass": "live.toggle",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 755.36376953125, 791.1666870117188, 15.0, 15.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 398.6900146007538, 216.906005859375, 15.0, 15.0 ],
                                    "saved_attribute_attributes": {
                                        "activebgcolor": {
                                            "expression": ""
                                        },
                                        "activebgoncolor": {
                                            "expression": ""
                                        },
                                        "bgcolor": {
                                            "expression": ""
                                        },
                                        "bgoncolor": {
                                            "expression": ""
                                        },
                                        "bordercolor": {
                                            "expression": ""
                                        },
                                        "focusbordercolor": {
                                            "expression": ""
                                        },
                                        "valueof": {
                                            "parameter_enum": [ "off", "on" ],
                                            "parameter_initial": [ 0.0 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_longname": "live.toggle[13]",
                                            "parameter_mmax": 1,
                                            "parameter_modmode": 0,
                                            "parameter_shortname": "live.toggle",
                                            "parameter_type": 2
                                        }
                                    },
                                    "varname": "live.toggle[13]"
                                }
                            },
                            {
                                "box": {
                                    "activebgcolor": [ 0.0, 0.0, 0.0, 1.0 ],
                                    "activebgoncolor": [ 1.0, 1.0, 1.0, 1.0 ],
                                    "bgcolor": [ 0.0, 0.0, 0.0, 1.0 ],
                                    "bgoncolor": [ 1.0, 1.0, 1.0, 1.0 ],
                                    "bordercolor": [ 1.0, 1.0, 1.0, 1.0 ],
                                    "focusbordercolor": [ 1.0, 1.0, 1.0, 0.0 ],
                                    "id": "obj-216",
                                    "ignoreclick": 1,
                                    "maxclass": "live.toggle",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 703.1666870117188, 791.1666870117188, 15.0, 15.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 362.8647277355194, 216.906005859375, 15.0, 15.0 ],
                                    "saved_attribute_attributes": {
                                        "activebgcolor": {
                                            "expression": ""
                                        },
                                        "activebgoncolor": {
                                            "expression": ""
                                        },
                                        "bgcolor": {
                                            "expression": ""
                                        },
                                        "bgoncolor": {
                                            "expression": ""
                                        },
                                        "bordercolor": {
                                            "expression": ""
                                        },
                                        "focusbordercolor": {
                                            "expression": ""
                                        },
                                        "valueof": {
                                            "parameter_enum": [ "off", "on" ],
                                            "parameter_initial": [ 0.0 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_longname": "live.toggle[14]",
                                            "parameter_mmax": 1,
                                            "parameter_modmode": 0,
                                            "parameter_shortname": "live.toggle",
                                            "parameter_type": 2
                                        }
                                    },
                                    "varname": "live.toggle[14]"
                                }
                            },
                            {
                                "box": {
                                    "activebgcolor": [ 0.0, 0.0, 0.0, 1.0 ],
                                    "activebgoncolor": [ 1.0, 1.0, 1.0, 1.0 ],
                                    "bgcolor": [ 0.0, 0.0, 0.0, 1.0 ],
                                    "bgoncolor": [ 1.0, 1.0, 1.0, 1.0 ],
                                    "bordercolor": [ 1.0, 1.0, 1.0, 1.0 ],
                                    "focusbordercolor": [ 1.0, 1.0, 1.0, 0.0 ],
                                    "id": "obj-217",
                                    "ignoreclick": 1,
                                    "maxclass": "live.toggle",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 638.887451171875, 791.1666870117188, 15.0, 15.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 325.50819087028503, 216.906005859375, 15.0, 15.0 ],
                                    "saved_attribute_attributes": {
                                        "activebgcolor": {
                                            "expression": ""
                                        },
                                        "activebgoncolor": {
                                            "expression": ""
                                        },
                                        "bgcolor": {
                                            "expression": ""
                                        },
                                        "bgoncolor": {
                                            "expression": ""
                                        },
                                        "bordercolor": {
                                            "expression": ""
                                        },
                                        "focusbordercolor": {
                                            "expression": ""
                                        },
                                        "valueof": {
                                            "parameter_enum": [ "off", "on" ],
                                            "parameter_initial": [ 0.0 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_longname": "live.toggle[15]",
                                            "parameter_mmax": 1,
                                            "parameter_modmode": 0,
                                            "parameter_shortname": "live.toggle",
                                            "parameter_type": 2
                                        }
                                    },
                                    "varname": "live.toggle[15]"
                                }
                            },
                            {
                                "box": {
                                    "activebgcolor": [ 0.0, 0.0, 0.0, 1.0 ],
                                    "activebgoncolor": [ 1.0, 1.0, 1.0, 1.0 ],
                                    "bgcolor": [ 0.0, 0.0, 0.0, 1.0 ],
                                    "bgoncolor": [ 1.0, 1.0, 1.0, 1.0 ],
                                    "bordercolor": [ 1.0, 1.0, 1.0, 1.0 ],
                                    "focusbordercolor": [ 1.0, 1.0, 1.0, 0.0 ],
                                    "id": "obj-218",
                                    "ignoreclick": 1,
                                    "maxclass": "live.toggle",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 580.6492919921875, 791.1666870117188, 15.0, 15.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 289.50745844841003, 216.906005859375, 15.0, 15.0 ],
                                    "saved_attribute_attributes": {
                                        "activebgcolor": {
                                            "expression": ""
                                        },
                                        "activebgoncolor": {
                                            "expression": ""
                                        },
                                        "bgcolor": {
                                            "expression": ""
                                        },
                                        "bgoncolor": {
                                            "expression": ""
                                        },
                                        "bordercolor": {
                                            "expression": ""
                                        },
                                        "focusbordercolor": {
                                            "expression": ""
                                        },
                                        "valueof": {
                                            "parameter_enum": [ "off", "on" ],
                                            "parameter_initial": [ 0.0 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_longname": "live.toggle[16]",
                                            "parameter_mmax": 1,
                                            "parameter_modmode": 0,
                                            "parameter_shortname": "live.toggle",
                                            "parameter_type": 2
                                        }
                                    },
                                    "varname": "live.toggle[16]"
                                }
                            },
                            {
                                "box": {
                                    "activebgcolor": [ 0.0, 0.0, 0.0, 1.0 ],
                                    "activebgoncolor": [ 1.0, 1.0, 1.0, 1.0 ],
                                    "bgcolor": [ 0.0, 0.0, 0.0, 1.0 ],
                                    "bgoncolor": [ 1.0, 1.0, 1.0, 1.0 ],
                                    "bordercolor": [ 1.0, 1.0, 1.0, 1.0 ],
                                    "focusbordercolor": [ 1.0, 1.0, 1.0, 0.0 ],
                                    "id": "obj-219",
                                    "ignoreclick": 1,
                                    "maxclass": "live.toggle",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 522.4111633300781, 791.1666870117188, 15.0, 15.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 251.9404113292694, 216.906005859375, 15.0, 15.0 ],
                                    "saved_attribute_attributes": {
                                        "activebgcolor": {
                                            "expression": ""
                                        },
                                        "activebgoncolor": {
                                            "expression": ""
                                        },
                                        "bgcolor": {
                                            "expression": ""
                                        },
                                        "bgoncolor": {
                                            "expression": ""
                                        },
                                        "bordercolor": {
                                            "expression": ""
                                        },
                                        "focusbordercolor": {
                                            "expression": ""
                                        },
                                        "valueof": {
                                            "parameter_enum": [ "off", "on" ],
                                            "parameter_initial": [ 0.0 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_longname": "live.toggle[17]",
                                            "parameter_mmax": 1,
                                            "parameter_modmode": 0,
                                            "parameter_shortname": "live.toggle",
                                            "parameter_type": 2
                                        }
                                    },
                                    "varname": "live.toggle[17]"
                                }
                            },
                            {
                                "box": {
                                    "activebgcolor": [ 0.0, 0.0, 0.0, 1.0 ],
                                    "activebgoncolor": [ 1.0, 1.0, 1.0, 1.0 ],
                                    "bgcolor": [ 0.0, 0.0, 0.0, 1.0 ],
                                    "bgoncolor": [ 1.0, 1.0, 1.0, 1.0 ],
                                    "bordercolor": [ 1.0, 1.0, 1.0, 1.0 ],
                                    "focusbordercolor": [ 1.0, 1.0, 1.0, 0.0 ],
                                    "id": "obj-220",
                                    "ignoreclick": 1,
                                    "maxclass": "live.toggle",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 464.17303466796875, 789.1666870117188, 15.0, 15.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 217.19373774528503, 216.906005859375, 15.0, 15.0 ],
                                    "saved_attribute_attributes": {
                                        "activebgcolor": {
                                            "expression": ""
                                        },
                                        "activebgoncolor": {
                                            "expression": ""
                                        },
                                        "bgcolor": {
                                            "expression": ""
                                        },
                                        "bgoncolor": {
                                            "expression": ""
                                        },
                                        "bordercolor": {
                                            "expression": ""
                                        },
                                        "focusbordercolor": {
                                            "expression": ""
                                        },
                                        "valueof": {
                                            "parameter_enum": [ "off", "on" ],
                                            "parameter_initial": [ 0.0 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_longname": "live.toggle[18]",
                                            "parameter_mmax": 1,
                                            "parameter_modmode": 0,
                                            "parameter_shortname": "live.toggle",
                                            "parameter_type": 2
                                        }
                                    },
                                    "varname": "live.toggle[18]"
                                }
                            },
                            {
                                "box": {
                                    "activebgcolor": [ 0.0, 0.0, 0.0, 1.0 ],
                                    "activebgoncolor": [ 1.0, 1.0, 1.0, 1.0 ],
                                    "bgcolor": [ 0.0, 0.0, 0.0, 1.0 ],
                                    "bgoncolor": [ 1.0, 1.0, 1.0, 1.0 ],
                                    "bordercolor": [ 1.0, 1.0, 1.0, 1.0 ],
                                    "focusbordercolor": [ 1.0, 1.0, 1.0, 0.0 ],
                                    "id": "obj-221",
                                    "ignoreclick": 1,
                                    "maxclass": "live.toggle",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 403.9911193847656, 789.1666870117188, 15.0, 15.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 182.44706416130066, 216.906005859375, 15.0, 15.0 ],
                                    "saved_attribute_attributes": {
                                        "activebgcolor": {
                                            "expression": ""
                                        },
                                        "activebgoncolor": {
                                            "expression": ""
                                        },
                                        "bgcolor": {
                                            "expression": ""
                                        },
                                        "bgoncolor": {
                                            "expression": ""
                                        },
                                        "bordercolor": {
                                            "expression": ""
                                        },
                                        "focusbordercolor": {
                                            "expression": ""
                                        },
                                        "valueof": {
                                            "parameter_enum": [ "off", "on" ],
                                            "parameter_initial": [ 0.0 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_longname": "live.toggle[19]",
                                            "parameter_mmax": 1,
                                            "parameter_modmode": 0,
                                            "parameter_shortname": "live.toggle",
                                            "parameter_type": 2
                                        }
                                    },
                                    "varname": "live.toggle[19]"
                                }
                            },
                            {
                                "box": {
                                    "activebgcolor": [ 0.0, 0.0, 0.0, 1.0 ],
                                    "activebgoncolor": [ 1.0, 1.0, 1.0, 1.0 ],
                                    "bgcolor": [ 0.0, 0.0, 0.0, 1.0 ],
                                    "bgoncolor": [ 1.0, 1.0, 1.0, 1.0 ],
                                    "bordercolor": [ 1.0, 1.0, 1.0, 1.0 ],
                                    "focusbordercolor": [ 1.0, 1.0, 1.0, 0.0 ],
                                    "id": "obj-222",
                                    "ignoreclick": 1,
                                    "maxclass": "live.toggle",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 341.5967712402344, 792.5, 15.0, 15.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 147.70040583610535, 216.906005859375, 15.0, 15.0 ],
                                    "saved_attribute_attributes": {
                                        "activebgcolor": {
                                            "expression": ""
                                        },
                                        "activebgoncolor": {
                                            "expression": ""
                                        },
                                        "bgcolor": {
                                            "expression": ""
                                        },
                                        "bgoncolor": {
                                            "expression": ""
                                        },
                                        "bordercolor": {
                                            "expression": ""
                                        },
                                        "focusbordercolor": {
                                            "expression": ""
                                        },
                                        "valueof": {
                                            "parameter_enum": [ "off", "on" ],
                                            "parameter_initial": [ 0.0 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_longname": "live.toggle[20]",
                                            "parameter_mmax": 1,
                                            "parameter_modmode": 0,
                                            "parameter_shortname": "live.toggle",
                                            "parameter_type": 2
                                        }
                                    },
                                    "varname": "live.toggle[20]"
                                }
                            },
                            {
                                "box": {
                                    "activebgcolor": [ 0.0, 0.0, 0.0, 1.0 ],
                                    "activebgoncolor": [ 1.0, 1.0, 1.0, 1.0 ],
                                    "bgcolor": [ 0.0, 0.0, 0.0, 1.0 ],
                                    "bgoncolor": [ 1.0, 1.0, 1.0, 1.0 ],
                                    "bordercolor": [ 1.0, 1.0, 1.0, 1.0 ],
                                    "focusbordercolor": [ 1.0, 1.0, 1.0, 0.0 ],
                                    "id": "obj-223",
                                    "ignoreclick": 1,
                                    "maxclass": "live.toggle",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 292.88629150390625, 790.5, 15.0, 15.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 112.95371699333191, 216.906005859375, 15.0, 15.0 ],
                                    "saved_attribute_attributes": {
                                        "activebgcolor": {
                                            "expression": ""
                                        },
                                        "activebgoncolor": {
                                            "expression": ""
                                        },
                                        "bgcolor": {
                                            "expression": ""
                                        },
                                        "bgoncolor": {
                                            "expression": ""
                                        },
                                        "bordercolor": {
                                            "expression": ""
                                        },
                                        "focusbordercolor": {
                                            "expression": ""
                                        },
                                        "valueof": {
                                            "parameter_enum": [ "off", "on" ],
                                            "parameter_initial": [ 0.0 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_longname": "live.toggle[21]",
                                            "parameter_mmax": 1,
                                            "parameter_modmode": 0,
                                            "parameter_shortname": "live.toggle",
                                            "parameter_type": 2
                                        }
                                    },
                                    "varname": "live.toggle[21]"
                                }
                            },
                            {
                                "box": {
                                    "activebgcolor": [ 0.0, 0.0, 0.0, 1.0 ],
                                    "activebgoncolor": [ 1.0, 1.0, 1.0, 1.0 ],
                                    "bgcolor": [ 0.0, 0.0, 0.0, 1.0 ],
                                    "bgoncolor": [ 1.0, 1.0, 1.0, 1.0 ],
                                    "bordercolor": [ 1.0, 1.0, 1.0, 1.0 ],
                                    "focusbordercolor": [ 1.0, 1.0, 1.0, 0.0 ],
                                    "id": "obj-224",
                                    "ignoreclick": 1,
                                    "maxclass": "live.toggle",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 231.2205047607422, 790.2777709960938, 15.0, 15.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 78.20702052116394, 216.906005859375, 15.0, 15.0 ],
                                    "saved_attribute_attributes": {
                                        "activebgcolor": {
                                            "expression": ""
                                        },
                                        "activebgoncolor": {
                                            "expression": ""
                                        },
                                        "bgcolor": {
                                            "expression": ""
                                        },
                                        "bgoncolor": {
                                            "expression": ""
                                        },
                                        "bordercolor": {
                                            "expression": ""
                                        },
                                        "focusbordercolor": {
                                            "expression": ""
                                        },
                                        "valueof": {
                                            "parameter_enum": [ "off", "on" ],
                                            "parameter_initial": [ 0.0 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_longname": "live.toggle[22]",
                                            "parameter_mmax": 1,
                                            "parameter_modmode": 0,
                                            "parameter_shortname": "live.toggle",
                                            "parameter_type": 2
                                        }
                                    },
                                    "varname": "live.toggle[22]"
                                }
                            },
                            {
                                "box": {
                                    "activebgcolor": [ 0.0, 0.0, 0.0, 1.0 ],
                                    "activebgoncolor": [ 1.0, 1.0, 1.0, 1.0 ],
                                    "bgcolor": [ 0.0, 0.0, 0.0, 1.0 ],
                                    "bgoncolor": [ 1.0, 1.0, 1.0, 1.0 ],
                                    "bordercolor": [ 1.0, 1.0, 1.0, 1.0 ],
                                    "focusbordercolor": [ 1.0, 1.0, 1.0, 0.0 ],
                                    "id": "obj-225",
                                    "ignoreclick": 1,
                                    "maxclass": "live.toggle",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 182.7830352783203, 790.2777709960938, 15.0, 15.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 43.4603545665741, 216.906005859375, 15.0, 15.0 ],
                                    "saved_attribute_attributes": {
                                        "activebgcolor": {
                                            "expression": ""
                                        },
                                        "activebgoncolor": {
                                            "expression": ""
                                        },
                                        "bgcolor": {
                                            "expression": ""
                                        },
                                        "bgoncolor": {
                                            "expression": ""
                                        },
                                        "bordercolor": {
                                            "expression": ""
                                        },
                                        "focusbordercolor": {
                                            "expression": ""
                                        },
                                        "valueof": {
                                            "parameter_enum": [ "off", "on" ],
                                            "parameter_initial": [ 0.0 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_longname": "live.toggle[23]",
                                            "parameter_mmax": 1,
                                            "parameter_modmode": 0,
                                            "parameter_shortname": "live.toggle",
                                            "parameter_type": 2
                                        }
                                    },
                                    "varname": "live.toggle[23]"
                                }
                            },
                            {
                                "box": {
                                    "activebgcolor": [ 0.0, 0.0, 0.0, 1.0 ],
                                    "activebgoncolor": [ 1.0, 1.0, 1.0, 1.0 ],
                                    "bgcolor": [ 0.0, 0.0, 0.0, 1.0 ],
                                    "bgoncolor": [ 1.0, 1.0, 1.0, 1.0 ],
                                    "bordercolor": [ 1.0, 1.0, 1.0, 1.0 ],
                                    "focusbordercolor": [ 1.0, 1.0, 1.0, 0.0 ],
                                    "id": "obj-226",
                                    "ignoreclick": 1,
                                    "maxclass": "live.toggle",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 121.49246215820312, 790.0556030273438, 15.0, 15.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 8.71367621421814, 216.906005859375, 15.0, 15.0 ],
                                    "saved_attribute_attributes": {
                                        "activebgcolor": {
                                            "expression": ""
                                        },
                                        "activebgoncolor": {
                                            "expression": ""
                                        },
                                        "bgcolor": {
                                            "expression": ""
                                        },
                                        "bgoncolor": {
                                            "expression": ""
                                        },
                                        "bordercolor": {
                                            "expression": ""
                                        },
                                        "focusbordercolor": {
                                            "expression": ""
                                        },
                                        "valueof": {
                                            "parameter_enum": [ "off", "on" ],
                                            "parameter_initial": [ 0.0 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_longname": "live.toggle[24]",
                                            "parameter_mmax": 1,
                                            "parameter_modmode": 0,
                                            "parameter_shortname": "live.toggle",
                                            "parameter_type": 2
                                        }
                                    },
                                    "varname": "live.toggle[24]"
                                }
                            },
                            {
                                "box": {
                                    "activedialcolor": [ 0.784314, 0.145098, 0.023529, 1.0 ],
                                    "activeneedlecolor": [ 1.0, 1.0, 1.0, 1.0 ],
                                    "dialcolor": [ 1.0, 1.0, 1.0, 1.0 ],
                                    "id": "obj-229",
                                    "maxclass": "live.dial",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "float" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 847.0800170898438, 809.3333740234375, 44.0, 48.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 417.38538813591003, 195.906005859375, 44.0, 48.0 ],
                                    "saved_attribute_attributes": {
                                        "activedialcolor": {
                                            "expression": ""
                                        },
                                        "activeneedlecolor": {
                                            "expression": ""
                                        },
                                        "dialcolor": {
                                            "expression": ""
                                        },
                                        "textcolor": {
                                            "expression": ""
                                        },
                                        "valueof": {
                                            "parameter_longname": "A0",
                                            "parameter_mmax": 1023.0,
                                            "parameter_modmode": 0,
                                            "parameter_shortname": "A0",
                                            "parameter_type": 0,
                                            "parameter_unitstyle": 0
                                        }
                                    },
                                    "textcolor": [ 1.0, 1.0, 1.0, 1.0 ],
                                    "varname": "live.dial[4]"
                                }
                            },
                            {
                                "box": {
                                    "annotation": "",
                                    "comment": "A5 (0 - 1023) read analog data conneted to pin A5",
                                    "hint": "",
                                    "id": "obj-214",
                                    "index": 18,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 1123.659912109375, 889.0000610351562, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "annotation": "",
                                    "comment": "A5 (0 - 1023) read analog data conneted to pin A5",
                                    "hint": "",
                                    "id": "obj-213",
                                    "index": 17,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 1064.639892578125, 889.0000610351562, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "annotation": "",
                                    "comment": "A3 (0 - 1023) read analog data conneted to pin A3",
                                    "hint": "",
                                    "id": "obj-212",
                                    "index": 16,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 1005.6199340820312, 889.0000610351562, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "annotation": "",
                                    "comment": "A2 (0 - 1023) read analog data conneted to pin A2",
                                    "hint": "",
                                    "id": "obj-211",
                                    "index": 15,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 946.5999755859375, 889.0000610351562, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "annotation": "",
                                    "comment": "A1 (0 - 1023) read analog data conneted to pin A1",
                                    "hint": "",
                                    "id": "obj-210",
                                    "index": 14,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 887.5800170898438, 889.0000610351562, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "annotation": "",
                                    "comment": "A0 (0 - 1023) read analog data conneted to pin A0",
                                    "hint": "",
                                    "id": "obj-209",
                                    "index": 13,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 828.2216796875, 889.0000610351562, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "annotation": "Digital OUT (0 / 1)",
                                    "comment": "Digital OUT (0 / 1)",
                                    "hint": "Digital OUT (0 / 1)",
                                    "id": "obj-207",
                                    "index": 12,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 735.86376953125, 817.8333740234375, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "annotation": "Digital OUT (0 / 1)",
                                    "comment": "Digital OUT (0 / 1)",
                                    "hint": "Digital OUT (0 / 1)",
                                    "id": "obj-206",
                                    "index": 11,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 677.6256103515625, 817.8333740234375, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "annotation": "Digital OUT (0 / 1)",
                                    "comment": "Digital OUT (0 / 1)",
                                    "hint": "Digital OUT (0 / 1)",
                                    "id": "obj-205",
                                    "index": 10,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 619.387451171875, 817.8333740234375, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "annotation": "Digital OUT (0 / 1)",
                                    "comment": "Digital OUT (0 / 1)",
                                    "hint": "Digital OUT (0 / 1)",
                                    "id": "obj-204",
                                    "index": 9,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 561.1492919921875, 817.8333740234375, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "annotation": "Digital OUT (0 / 1)",
                                    "comment": "Digital OUT (0 / 1)",
                                    "hint": "Digital OUT (0 / 1)",
                                    "id": "obj-203",
                                    "index": 8,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 502.9111633300781, 817.8333740234375, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "annotation": "Digital OUT (0 / 1)",
                                    "comment": "Digital OUT (0 / 1)",
                                    "hint": "Digital OUT (0 / 1)",
                                    "id": "obj-202",
                                    "index": 7,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 443.873046875, 817.8333740234375, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "annotation": "Digital OUT (0 / 1)",
                                    "comment": "Digital OUT (0 / 1)",
                                    "hint": "Digital OUT (0 / 1)",
                                    "id": "obj-201",
                                    "index": 6,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 386.4349060058594, 817.8333740234375, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "annotation": "Digital OUT (0 / 1)",
                                    "comment": "Digital OUT (0 / 1)",
                                    "hint": "Digital OUT (0 / 1)",
                                    "id": "obj-200",
                                    "index": 5,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 327.39678955078125, 817.8333740234375, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "annotation": "Digital OUT (0 / 1)",
                                    "comment": "Digital OUT (0 / 1)",
                                    "hint": "Digital OUT (0 / 1)",
                                    "id": "obj-199",
                                    "index": 4,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 269.9586486816406, 817.8333740234375, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "annotation": "Digital OUT (0 / 1)",
                                    "comment": "Digital OUT (0 / 1)",
                                    "hint": "Digital OUT (0 / 1)",
                                    "id": "obj-198",
                                    "index": 3,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 211.7205047607422, 817.8333740234375, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "annotation": "Digital OUT (0 / 1)",
                                    "comment": "Digital OUT (0 / 1)",
                                    "hint": "Digital OUT (0 / 1)",
                                    "id": "obj-197",
                                    "index": 2,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 153.48236083984375, 817.8333740234375, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "annotation": "Digital OUT (0 / 1)",
                                    "comment": "Digital OUT (0 / 1)",
                                    "hint": "Digital OUT (0 / 1)",
                                    "id": "obj-196",
                                    "index": 1,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 95.24420166015625, 817.8333740234375, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 9.0,
                                    "id": "obj-190",
                                    "linecount": 2,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 1306.109619140625, 792.0093383789062, 23.0, 27.0 ],
                                    "text": "pin\nA0",
                                    "textcolor": [ 1.0, 1.0, 1.0, 1.0 ],
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 9.0,
                                    "id": "obj-191",
                                    "linecount": 2,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 1245.94384765625, 792.0093383789062, 23.0, 27.0 ],
                                    "text": "pin\nA1",
                                    "textcolor": [ 1.0, 1.0, 1.0, 1.0 ],
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 9.0,
                                    "id": "obj-192",
                                    "linecount": 2,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 1418.38720703125, 792.0093383789062, 23.0, 27.0 ],
                                    "text": "pin\nA5",
                                    "textcolor": [ 1.0, 1.0, 1.0, 1.0 ],
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 9.0,
                                    "id": "obj-193",
                                    "linecount": 2,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 1373.44677734375, 792.0093383789062, 23.0, 27.0 ],
                                    "text": "pin\nA4",
                                    "textcolor": [ 1.0, 1.0, 1.0, 1.0 ],
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 9.0,
                                    "id": "obj-194",
                                    "linecount": 2,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 1338.3299560546875, 792.0093383789062, 23.0, 27.0 ],
                                    "text": "pin\nA3",
                                    "textcolor": [ 1.0, 1.0, 1.0, 1.0 ],
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 9.0,
                                    "id": "obj-195",
                                    "linecount": 2,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 1276.6800537109375, 792.0093383789062, 23.0, 27.0 ],
                                    "text": "pin\nA2",
                                    "textcolor": [ 1.0, 1.0, 1.0, 1.0 ],
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 9.0,
                                    "id": "obj-178",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 735.86376953125, 854.3265991210938, 37.0, 17.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 392.0977294445038, 194.09088134765625, 31.03350830078125, 17.0 ],
                                    "text": "pin13",
                                    "textcolor": [ 1.0, 1.0, 1.0, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 9.0,
                                    "id": "obj-179",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 677.6256103515625, 854.3265991210938, 34.33333206176758, 17.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 356.6285216808319, 194.09088134765625, 33.048919677734375, 17.0 ],
                                    "text": "pin12",
                                    "textcolor": [ 1.0, 1.0, 1.0, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 9.0,
                                    "id": "obj-180",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 619.387451171875, 854.3265991210938, 35.6820068359375, 17.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 318.7910888195038, 194.09088134765625, 36.0, 17.0 ],
                                    "text": "pin11",
                                    "textcolor": [ 1.0, 1.0, 1.0, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 9.0,
                                    "id": "obj-181",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 561.1492919921875, 854.3265991210938, 33.66666793823242, 17.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 283.30421137809753, 194.09088134765625, 36.5, 17.0 ],
                                    "text": "pin10",
                                    "textcolor": [ 1.0, 1.0, 1.0, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 9.0,
                                    "id": "obj-182",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 502.9111633300781, 854.3265991210938, 31.0, 17.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 248.40229487419128, 194.09088134765625, 26.0, 17.0 ],
                                    "text": "pin9",
                                    "textcolor": [ 1.0, 1.0, 1.0, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 9.0,
                                    "id": "obj-183",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 443.873046875, 854.3265991210938, 31.0, 17.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 209.7738311290741, 194.09088134765625, 30.0, 17.0 ],
                                    "text": "pin8",
                                    "textcolor": [ 1.0, 1.0, 1.0, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 9.0,
                                    "id": "obj-184",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 386.4349060058594, 854.3265991210938, 31.0, 17.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 175.38998103141785, 194.09088134765625, 31.0, 17.0 ],
                                    "text": "pin7",
                                    "textcolor": [ 1.0, 1.0, 1.0, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 9.0,
                                    "id": "obj-185",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 328.76849365234375, 854.3265991210938, 27.66666603088379, 17.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 141.00614619255066, 194.09088134765625, 28.388513565063477, 17.0 ],
                                    "text": "pin6",
                                    "textcolor": [ 1.0, 1.0, 1.0, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 9.0,
                                    "id": "obj-186",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 269.9586486816406, 854.3265991210938, 31.0, 17.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 104.57664942741394, 194.09088134765625, 28.492828369140625, 17.0 ],
                                    "text": "pin5",
                                    "textcolor": [ 1.0, 1.0, 1.0, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 9.0,
                                    "id": "obj-187",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 211.7205047607422, 854.3265991210938, 31.0, 17.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 72.23845362663269, 194.09088134765625, 29.0, 17.0 ],
                                    "text": "pin4",
                                    "textcolor": [ 1.0, 1.0, 1.0, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 9.0,
                                    "id": "obj-188",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 153.48236083984375, 854.3265991210938, 29.0, 17.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 37.85461115837097, 194.09088134765625, 26.33333396911621, 17.0 ],
                                    "text": "pin3",
                                    "textcolor": [ 1.0, 1.0, 1.0, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 9.0,
                                    "id": "obj-189",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 95.24420166015625, 854.3265991210938, 28.0, 17.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 3.470763921737671, 194.09088134765625, 30.0, 17.0 ],
                                    "text": "pin2",
                                    "textcolor": [ 1.0, 1.0, 1.0, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 9.0,
                                    "hint": "",
                                    "id": "obj-177",
                                    "linecount": 2,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 1514.6666259765625, 252.5989990234375, 58.0, 27.0 ],
                                    "text": "read from ARDUINO",
                                    "textcolor": [ 1.0, 1.0, 1.0, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 9.0,
                                    "hint": "",
                                    "id": "obj-176",
                                    "linecount": 2,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 1514.6666259765625, 288.67236328125, 58.0, 27.0 ],
                                    "text": "read from ARDUINO",
                                    "textcolor": [ 1.0, 1.0, 1.0, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 9.0,
                                    "hint": "Open, close and reset menu",
                                    "id": "obj-173",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 1512.6666259765625, 223.6666717529297, 62.0, 17.0 ],
                                    "text": "on / off",
                                    "textcolor": [ 1.0, 1.0, 1.0, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 9.0,
                                    "hint": "Select the port",
                                    "id": "obj-172",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 1512.1666259765625, 195.51759338378906, 62.0, 17.0 ],
                                    "text": "port",
                                    "textcolor": [ 1.0, 1.0, 1.0, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "activebgcolor": [ 0.0, 0.0, 0.0, 1.0 ],
                                    "activebgoncolor": [ 1.0, 1.0, 1.0, 1.0 ],
                                    "bgcolor": [ 0.0, 0.0, 0.0, 1.0 ],
                                    "bgoncolor": [ 1.0, 1.0, 1.0, 1.0 ],
                                    "bordercolor": [ 1.0, 1.0, 1.0, 0.0 ],
                                    "focusbordercolor": [ 1.0, 1.0, 1.0, 0.0 ],
                                    "id": "obj-171",
                                    "ignoreclick": 1,
                                    "maxclass": "live.toggle",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 1037.8333740234375, 203.47613525390625, 15.0, 15.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 621.6096312999725, -0.734431505203247, 15.0, 15.0 ],
                                    "rounded": 15.0,
                                    "saved_attribute_attributes": {
                                        "activebgcolor": {
                                            "expression": ""
                                        },
                                        "activebgoncolor": {
                                            "expression": ""
                                        },
                                        "bgcolor": {
                                            "expression": ""
                                        },
                                        "bgoncolor": {
                                            "expression": ""
                                        },
                                        "bordercolor": {
                                            "expression": ""
                                        },
                                        "focusbordercolor": {
                                            "expression": ""
                                        },
                                        "valueof": {
                                            "parameter_enum": [ "off", "on" ],
                                            "parameter_initial": [ 0.0 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_longname": "live.toggle[12]",
                                            "parameter_mmax": 1,
                                            "parameter_modmode": 0,
                                            "parameter_shortname": "live.toggle",
                                            "parameter_type": 2
                                        }
                                    },
                                    "varname": "live.toggle[12]"
                                }
                            },
                            {
                                "box": {
                                    "activebgcolor": [ 0.0, 0.0, 0.0, 1.0 ],
                                    "activebgoncolor": [ 1.0, 1.0, 1.0, 1.0 ],
                                    "bgcolor": [ 0.0, 0.0, 0.0, 1.0 ],
                                    "bgoncolor": [ 1.0, 1.0, 1.0, 1.0 ],
                                    "bordercolor": [ 1.0, 1.0, 1.0, 0.0 ],
                                    "focusbordercolor": [ 1.0, 1.0, 1.0, 0.0 ],
                                    "id": "obj-170",
                                    "ignoreclick": 1,
                                    "maxclass": "live.toggle",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 980.610595703125, 203.47613525390625, 15.0, 15.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 571.6096312999725, -0.734431505203247, 15.0, 15.0 ],
                                    "rounded": 15.0,
                                    "saved_attribute_attributes": {
                                        "activebgcolor": {
                                            "expression": ""
                                        },
                                        "activebgoncolor": {
                                            "expression": ""
                                        },
                                        "bgcolor": {
                                            "expression": ""
                                        },
                                        "bgoncolor": {
                                            "expression": ""
                                        },
                                        "bordercolor": {
                                            "expression": ""
                                        },
                                        "focusbordercolor": {
                                            "expression": ""
                                        },
                                        "valueof": {
                                            "parameter_enum": [ "off", "on" ],
                                            "parameter_initial": [ 0.0 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_longname": "live.toggle[11]",
                                            "parameter_mmax": 1,
                                            "parameter_modmode": 0,
                                            "parameter_shortname": "live.toggle",
                                            "parameter_type": 2
                                        }
                                    },
                                    "varname": "live.toggle[11]"
                                }
                            },
                            {
                                "box": {
                                    "activebgcolor": [ 0.0, 0.0, 0.0, 1.0 ],
                                    "activebgoncolor": [ 1.0, 1.0, 1.0, 1.0 ],
                                    "bgcolor": [ 0.0, 0.0, 0.0, 1.0 ],
                                    "bgoncolor": [ 1.0, 1.0, 1.0, 1.0 ],
                                    "bordercolor": [ 1.0, 1.0, 1.0, 0.0 ],
                                    "focusbordercolor": [ 1.0, 1.0, 1.0, 0.0 ],
                                    "id": "obj-169",
                                    "ignoreclick": 1,
                                    "maxclass": "live.toggle",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 917.0, 187.11082458496094, 15.0, 15.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 514.333386182785, -0.734431505203247, 15.0, 15.0 ],
                                    "rounded": 15.0,
                                    "saved_attribute_attributes": {
                                        "activebgcolor": {
                                            "expression": ""
                                        },
                                        "activebgoncolor": {
                                            "expression": ""
                                        },
                                        "bgcolor": {
                                            "expression": ""
                                        },
                                        "bgoncolor": {
                                            "expression": ""
                                        },
                                        "bordercolor": {
                                            "expression": ""
                                        },
                                        "focusbordercolor": {
                                            "expression": ""
                                        },
                                        "valueof": {
                                            "parameter_enum": [ "off", "on" ],
                                            "parameter_initial": [ 0.0 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_longname": "live.toggle[10]",
                                            "parameter_mmax": 1,
                                            "parameter_modmode": 0,
                                            "parameter_shortname": "live.toggle",
                                            "parameter_type": 2
                                        }
                                    },
                                    "varname": "live.toggle[10]"
                                }
                            },
                            {
                                "box": {
                                    "activebgcolor": [ 0.0, 0.0, 0.0, 1.0 ],
                                    "activebgoncolor": [ 1.0, 1.0, 1.0, 1.0 ],
                                    "bgcolor": [ 0.0, 0.0, 0.0, 1.0 ],
                                    "bgoncolor": [ 1.0, 1.0, 1.0, 1.0 ],
                                    "bordercolor": [ 1.0, 1.0, 1.0, 0.0 ],
                                    "focusbordercolor": [ 1.0, 1.0, 1.0, 0.0 ],
                                    "id": "obj-168",
                                    "ignoreclick": 1,
                                    "maxclass": "live.toggle",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 817.1104736328125, 181.41220092773438, 15.0, 15.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 455.7891356945038, -0.734431505203247, 15.0, 15.0 ],
                                    "rounded": 15.0,
                                    "saved_attribute_attributes": {
                                        "activebgcolor": {
                                            "expression": ""
                                        },
                                        "activebgoncolor": {
                                            "expression": ""
                                        },
                                        "bgcolor": {
                                            "expression": ""
                                        },
                                        "bgoncolor": {
                                            "expression": ""
                                        },
                                        "bordercolor": {
                                            "expression": ""
                                        },
                                        "focusbordercolor": {
                                            "expression": ""
                                        },
                                        "valueof": {
                                            "parameter_enum": [ "off", "on" ],
                                            "parameter_initial": [ 0.0 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_longname": "live.toggle[9]",
                                            "parameter_mmax": 1,
                                            "parameter_modmode": 0,
                                            "parameter_shortname": "live.toggle",
                                            "parameter_type": 2
                                        }
                                    },
                                    "varname": "live.toggle[9]"
                                }
                            },
                            {
                                "box": {
                                    "activebgcolor": [ 0.0, 0.0, 0.0, 1.0 ],
                                    "activebgoncolor": [ 1.0, 1.0, 1.0, 1.0 ],
                                    "bgcolor": [ 0.0, 0.0, 0.0, 1.0 ],
                                    "bgoncolor": [ 1.0, 1.0, 1.0, 1.0 ],
                                    "bordercolor": [ 1.0, 1.0, 1.0, 0.0 ],
                                    "focusbordercolor": [ 1.0, 1.0, 1.0, 0.0 ],
                                    "id": "obj-167",
                                    "ignoreclick": 1,
                                    "maxclass": "live.toggle",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 734.272216796875, 160.142822265625, 15.0, 15.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 397.86646723747253, -0.734431505203247, 15.0, 15.0 ],
                                    "rounded": 15.0,
                                    "saved_attribute_attributes": {
                                        "activebgcolor": {
                                            "expression": ""
                                        },
                                        "activebgoncolor": {
                                            "expression": ""
                                        },
                                        "bgcolor": {
                                            "expression": ""
                                        },
                                        "bgoncolor": {
                                            "expression": ""
                                        },
                                        "bordercolor": {
                                            "expression": ""
                                        },
                                        "focusbordercolor": {
                                            "expression": ""
                                        },
                                        "valueof": {
                                            "parameter_enum": [ "off", "on" ],
                                            "parameter_initial": [ 0.0 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_longname": "live.toggle[8]",
                                            "parameter_mmax": 1,
                                            "parameter_modmode": 0,
                                            "parameter_shortname": "live.toggle",
                                            "parameter_type": 2
                                        }
                                    },
                                    "varname": "live.toggle[8]"
                                }
                            },
                            {
                                "box": {
                                    "activebgcolor": [ 0.0, 0.0, 0.0, 1.0 ],
                                    "activebgoncolor": [ 1.0, 1.0, 1.0, 1.0 ],
                                    "bgcolor": [ 0.0, 0.0, 0.0, 1.0 ],
                                    "bgoncolor": [ 1.0, 1.0, 1.0, 1.0 ],
                                    "bordercolor": [ 1.0, 1.0, 1.0, 0.0 ],
                                    "focusbordercolor": [ 1.0, 1.0, 1.0, 0.0 ],
                                    "id": "obj-166",
                                    "ignoreclick": 1,
                                    "maxclass": "live.toggle",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 588.272216796875, 165.04949951171875, 15.0, 15.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 341.9227111339569, -0.734431505203247, 15.0, 15.0 ],
                                    "rounded": 15.0,
                                    "saved_attribute_attributes": {
                                        "activebgcolor": {
                                            "expression": ""
                                        },
                                        "activebgoncolor": {
                                            "expression": ""
                                        },
                                        "bgcolor": {
                                            "expression": ""
                                        },
                                        "bgoncolor": {
                                            "expression": ""
                                        },
                                        "bordercolor": {
                                            "expression": ""
                                        },
                                        "focusbordercolor": {
                                            "expression": ""
                                        },
                                        "valueof": {
                                            "parameter_enum": [ "off", "on" ],
                                            "parameter_initial": [ 0.0 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_longname": "live.toggle[7]",
                                            "parameter_mmax": 1,
                                            "parameter_modmode": 0,
                                            "parameter_shortname": "live.toggle",
                                            "parameter_type": 2
                                        }
                                    },
                                    "varname": "live.toggle[7]"
                                }
                            },
                            {
                                "box": {
                                    "activebgcolor": [ 0.0, 0.0, 0.0, 1.0 ],
                                    "activebgoncolor": [ 1.0, 1.0, 1.0, 1.0 ],
                                    "bgcolor": [ 0.0, 0.0, 0.0, 1.0 ],
                                    "bgoncolor": [ 1.0, 1.0, 1.0, 1.0 ],
                                    "bordercolor": [ 1.0, 1.0, 1.0, 0.0 ],
                                    "focusbordercolor": [ 1.0, 1.0, 1.0, 0.0 ],
                                    "id": "obj-165",
                                    "ignoreclick": 1,
                                    "maxclass": "live.toggle",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 532.638916015625, 165.04949951171875, 15.0, 15.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 282.70560908317566, -0.734431505203247, 15.0, 15.0 ],
                                    "rounded": 15.0,
                                    "saved_attribute_attributes": {
                                        "activebgcolor": {
                                            "expression": ""
                                        },
                                        "activebgoncolor": {
                                            "expression": ""
                                        },
                                        "bgcolor": {
                                            "expression": ""
                                        },
                                        "bgoncolor": {
                                            "expression": ""
                                        },
                                        "bordercolor": {
                                            "expression": ""
                                        },
                                        "focusbordercolor": {
                                            "expression": ""
                                        },
                                        "valueof": {
                                            "parameter_enum": [ "off", "on" ],
                                            "parameter_initial": [ 0.0 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_longname": "live.toggle[6]",
                                            "parameter_mmax": 1,
                                            "parameter_modmode": 0,
                                            "parameter_shortname": "live.toggle",
                                            "parameter_type": 2
                                        }
                                    },
                                    "varname": "live.toggle[6]"
                                }
                            },
                            {
                                "box": {
                                    "activebgcolor": [ 0.0, 0.0, 0.0, 1.0 ],
                                    "activebgoncolor": [ 1.0, 1.0, 1.0, 1.0 ],
                                    "bgcolor": [ 0.0, 0.0, 0.0, 1.0 ],
                                    "bgoncolor": [ 1.0, 1.0, 1.0, 1.0 ],
                                    "bordercolor": [ 1.0, 1.0, 1.0, 0.0 ],
                                    "focusbordercolor": [ 1.0, 1.0, 1.0, 0.0 ],
                                    "id": "obj-164",
                                    "ignoreclick": 1,
                                    "maxclass": "live.toggle",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 474.224853515625, 181.41220092773438, 15.0, 15.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 223.4934356212616, -0.734431505203247, 15.0, 15.0 ],
                                    "rounded": 15.0,
                                    "saved_attribute_attributes": {
                                        "activebgcolor": {
                                            "expression": ""
                                        },
                                        "activebgoncolor": {
                                            "expression": ""
                                        },
                                        "bgcolor": {
                                            "expression": ""
                                        },
                                        "bgoncolor": {
                                            "expression": ""
                                        },
                                        "bordercolor": {
                                            "expression": ""
                                        },
                                        "focusbordercolor": {
                                            "expression": ""
                                        },
                                        "valueof": {
                                            "parameter_enum": [ "off", "on" ],
                                            "parameter_initial": [ 0.0 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_longname": "live.toggle[5]",
                                            "parameter_mmax": 1,
                                            "parameter_modmode": 0,
                                            "parameter_shortname": "live.toggle",
                                            "parameter_type": 2
                                        }
                                    },
                                    "varname": "live.toggle[5]"
                                }
                            },
                            {
                                "box": {
                                    "activebgcolor": [ 0.0, 0.0, 0.0, 1.0 ],
                                    "activebgoncolor": [ 1.0, 1.0, 1.0, 1.0 ],
                                    "bgcolor": [ 0.0, 0.0, 0.0, 1.0 ],
                                    "bgoncolor": [ 1.0, 1.0, 1.0, 1.0 ],
                                    "bordercolor": [ 1.0, 1.0, 1.0, 0.0 ],
                                    "focusbordercolor": [ 1.0, 1.0, 1.0, 0.0 ],
                                    "id": "obj-162",
                                    "ignoreclick": 1,
                                    "maxclass": "live.toggle",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 257.7869110107422, 157.31887817382812, 15.0, 15.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 108.21672511100769, -0.734431505203247, 15.0, 15.0 ],
                                    "rounded": 15.0,
                                    "saved_attribute_attributes": {
                                        "activebgcolor": {
                                            "expression": ""
                                        },
                                        "activebgoncolor": {
                                            "expression": ""
                                        },
                                        "bgcolor": {
                                            "expression": ""
                                        },
                                        "bgoncolor": {
                                            "expression": ""
                                        },
                                        "bordercolor": {
                                            "expression": ""
                                        },
                                        "focusbordercolor": {
                                            "expression": ""
                                        },
                                        "valueof": {
                                            "parameter_enum": [ "off", "on" ],
                                            "parameter_initial": [ 0.0 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_longname": "live.toggle[3]",
                                            "parameter_mmax": 1,
                                            "parameter_modmode": 0,
                                            "parameter_shortname": "live.toggle",
                                            "parameter_type": 2
                                        }
                                    },
                                    "varname": "live.toggle[3]"
                                }
                            },
                            {
                                "box": {
                                    "activebgcolor": [ 0.0, 0.0, 0.0, 1.0 ],
                                    "activebgoncolor": [ 1.0, 1.0, 1.0, 1.0 ],
                                    "bgcolor": [ 0.0, 0.0, 0.0, 1.0 ],
                                    "bgoncolor": [ 1.0, 1.0, 1.0, 1.0 ],
                                    "bordercolor": [ 1.0, 1.0, 1.0, 0.0 ],
                                    "focusbordercolor": [ 1.0, 1.0, 1.0, 0.0 ],
                                    "id": "obj-161",
                                    "ignoreclick": 1,
                                    "maxclass": "live.toggle",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 196.40272521972656, 134.75318908691406, 15.0, 15.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 58.95000910758972, -0.734431505203247, 15.0, 15.0 ],
                                    "rounded": 15.0,
                                    "saved_attribute_attributes": {
                                        "activebgcolor": {
                                            "expression": ""
                                        },
                                        "activebgoncolor": {
                                            "expression": ""
                                        },
                                        "bgcolor": {
                                            "expression": ""
                                        },
                                        "bgoncolor": {
                                            "expression": ""
                                        },
                                        "bordercolor": {
                                            "expression": ""
                                        },
                                        "focusbordercolor": {
                                            "expression": ""
                                        },
                                        "valueof": {
                                            "parameter_enum": [ "off", "on" ],
                                            "parameter_initial": [ 0.0 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_longname": "live.toggle[2]",
                                            "parameter_mmax": 1,
                                            "parameter_modmode": 0,
                                            "parameter_shortname": "live.toggle",
                                            "parameter_type": 2
                                        }
                                    },
                                    "varname": "live.toggle[2]"
                                }
                            },
                            {
                                "box": {
                                    "activebgcolor": [ 0.0, 0.0, 0.0, 1.0 ],
                                    "activebgoncolor": [ 1.0, 1.0, 1.0, 1.0 ],
                                    "bgcolor": [ 0.0, 0.0, 0.0, 1.0 ],
                                    "bgoncolor": [ 1.0, 1.0, 1.0, 1.0 ],
                                    "bordercolor": [ 1.0, 1.0, 1.0, 0.0 ],
                                    "focusbordercolor": [ 1.0, 1.0, 1.0, 0.0 ],
                                    "id": "obj-160",
                                    "ignoreclick": 1,
                                    "maxclass": "live.toggle",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 82.24420166015625, 157.31887817382812, 15.0, 15.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 0.0, -0.734431505203247, 15.0, 15.0 ],
                                    "rounded": 15.0,
                                    "saved_attribute_attributes": {
                                        "activebgcolor": {
                                            "expression": ""
                                        },
                                        "activebgoncolor": {
                                            "expression": ""
                                        },
                                        "bgcolor": {
                                            "expression": ""
                                        },
                                        "bgoncolor": {
                                            "expression": ""
                                        },
                                        "bordercolor": {
                                            "expression": ""
                                        },
                                        "focusbordercolor": {
                                            "expression": ""
                                        },
                                        "valueof": {
                                            "parameter_enum": [ "off", "on" ],
                                            "parameter_initial": [ 0.0 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_longname": "live.toggle[1]",
                                            "parameter_mmax": 1,
                                            "parameter_modmode": 0,
                                            "parameter_shortname": "live.toggle",
                                            "parameter_type": 2
                                        }
                                    },
                                    "varname": "live.toggle[1]"
                                }
                            },
                            {
                                "box": {
                                    "activebgcolor": [ 0.1, 0.1, 0.1, 1.0 ],
                                    "activebgoncolor": [ 1.0, 1.0, 1.0, 1.0 ],
                                    "bgcolor": [ 0.1, 0.1, 0.1, 1.0 ],
                                    "bgoncolor": [ 1.0, 1.0, 1.0, 1.0 ],
                                    "bordercolor": [ 1.0, 1.0, 1.0, 1.0 ],
                                    "focusbordercolor": [ 1.0, 1.0, 1.0, 1.0 ],
                                    "hint": "Mixed/scaled data out (0 - 1.0)",
                                    "id": "obj-144",
                                    "ignoreclick": 1,
                                    "maxclass": "live.toggle",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 1609.8333740234375, 152.5989990234375, 15.0, 15.0 ],
                                    "rounded": 15.0,
                                    "saved_attribute_attributes": {
                                        "activebgcolor": {
                                            "expression": ""
                                        },
                                        "activebgoncolor": {
                                            "expression": ""
                                        },
                                        "bgcolor": {
                                            "expression": ""
                                        },
                                        "bgoncolor": {
                                            "expression": ""
                                        },
                                        "bordercolor": {
                                            "expression": ""
                                        },
                                        "focusbordercolor": {
                                            "expression": ""
                                        },
                                        "valueof": {
                                            "parameter_enum": [ "off", "on" ],
                                            "parameter_initial": [ 1 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_longname": "pictctrl[1]",
                                            "parameter_mmax": 1,
                                            "parameter_modmode": 0,
                                            "parameter_shortname": "pictctrl[1]",
                                            "parameter_type": 2
                                        }
                                    },
                                    "varname": "pictctrl[1]"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-136",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 740.3316650390625, 360.0, 97.0, 22.0 ],
                                    "text": "s #0-digital-IO"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 10.450348,
                                    "id": "obj-135",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 1022.8333740234375, 227.5694580078125, 56.0, 20.0 ],
                                    "text": "w d 13 $1"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 10.450348,
                                    "id": "obj-134",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 965.610595703125, 227.5694580078125, 56.0, 20.0 ],
                                    "text": "w d 12 $1"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 10.450348,
                                    "id": "obj-133",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 863.2216796875, 271.9694519042969, 55.0, 20.0 ],
                                    "text": "w d 11 $1"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 10.450348,
                                    "id": "obj-132",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 769.3316650390625, 271.9694519042969, 56.0, 20.0 ],
                                    "text": "w d 10 $1"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 10.450348,
                                    "id": "obj-131",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 682.272216796875, 267.1694641113281, 50.0, 20.0 ],
                                    "text": "w d 9 $1"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 10.450348,
                                    "id": "obj-130",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 575.4405517578125, 189.142822265625, 50.0, 20.0 ],
                                    "text": "w d 8 $1"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 10.450348,
                                    "id": "obj-129",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 516.4459228515625, 189.142822265625, 50.0, 20.0 ],
                                    "text": "w d 7 $1"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 10.450348,
                                    "id": "obj-128",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 423.2637634277344, 275.3041534423828, 50.0, 20.0 ],
                                    "text": "w d 6 $1"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 10.450348,
                                    "id": "obj-126",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 242.00970458984375, 181.41220092773438, 50.0, 20.0 ],
                                    "text": "w d 4 $1"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 10.450348,
                                    "id": "obj-108",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 142.4076385498047, 260.9041442871094, 50.0, 20.0 ],
                                    "text": "w d 3 $1"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 10.450348,
                                    "id": "obj-107",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 67.24420166015625, 175.2775115966797, 50.0, 20.0 ],
                                    "text": "w d 2 $1"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 9.0,
                                    "hint": "Use the inputs to send / write data to your arduino.",
                                    "id": "obj-103",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 1482.163818359375, 164.5694580078125, 100.0, 17.0 ],
                                    "text": "Write to ARDUINO",
                                    "textcolor": [ 1.0, 1.0, 1.0, 1.0 ],
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 9.0,
                                    "id": "obj-98",
                                    "linecount": 2,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 1026.3333740234375, 127.56946563720703, 23.0, 27.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 606.9074828624725, 18.46556854248047, 31.092529296875, 17.0 ],
                                    "text": "pin13",
                                    "textcolor": [ 1.0, 1.0, 1.0, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 9.0,
                                    "id": "obj-95",
                                    "linecount": 2,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 969.2244873046875, 127.56946563720703, 23.0, 27.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 561.4270751476288, 18.46556854248047, 35.365142822265625, 17.0 ],
                                    "text": "pin12",
                                    "textcolor": [ 1.0, 1.0, 1.0, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 9.0,
                                    "id": "obj-93",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 794.4983520507812, 96.23612213134766, 34.33333206176758, 17.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 451.36710810661316, 18.46556854248047, 39.174957275390625, 17.0 ],
                                    "text": "pin10",
                                    "textcolor": [ 0.960784018039703, 0.82745099067688, 0.156863003969193, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 9.0,
                                    "id": "obj-92",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 708.6055297851562, 96.23612213134766, 34.33333206176758, 17.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 394.38538813591003, 18.46556854248047, 30.593780517578125, 17.0 ],
                                    "text": "pin9",
                                    "textcolor": [ 0.960784018039703, 0.82745099067688, 0.156863003969193, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 9.0,
                                    "id": "obj-91",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 575.4405517578125, 99.97081756591797, 30.0, 17.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 334.24110102653503, 18.46556854248047, 30.363250732421875, 17.0 ],
                                    "text": "pin8",
                                    "textcolor": [ 1.0, 1.0, 1.0, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 9.0,
                                    "id": "obj-90",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 521.8360176086426, 99.97081756591797, 31.799999237060547, 17.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 277.0054442882538, 18.46556854248047, 29.472686767578125, 17.0 ],
                                    "text": "pin7",
                                    "textcolor": [ 1.0, 1.0, 1.0, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 9.0,
                                    "id": "obj-89",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 448.4590759277344, 99.97081756591797, 31.799999237060547, 17.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 218.4934356212616, 18.46556854248047, 31.724624633789062, 17.0 ],
                                    "text": "pin6",
                                    "textcolor": [ 0.960784018039703, 0.82745099067688, 0.156863003969193, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 9.0,
                                    "id": "obj-86",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 242.00970458984375, 99.9708251953125, 39.0, 17.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 104.21672511100769, 18.46556854248047, 29.889083862304688, 17.0 ],
                                    "text": "pin4",
                                    "textcolor": [ 1.0, 1.0, 1.0, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 9.0,
                                    "id": "obj-85",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 164.9125518798828, 99.9708251953125, 33.99017333984375, 17.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 51.372307538986206, 18.46556854248047, 30.15540313720703, 17.0 ],
                                    "text": "pin3",
                                    "textcolor": [ 0.960784018039703, 0.82745099067688, 0.156863003969193, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 9.0,
                                    "id": "obj-84",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 68.24420166015625, 93.81887817382812, 27.24420166015625, 17.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 0.0, 18.46556854248047, 29.841611862182617, 17.0 ],
                                    "text": "pin2",
                                    "textcolor": [ 1.0, 1.0, 1.0, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 9.0,
                                    "id": "obj-101",
                                    "linecount": 2,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 1684.65966796875, 252.5989990234375, 23.0, 27.0 ],
                                    "text": "pin\n1",
                                    "textcolor": [ 1.0, 1.0, 1.0, 1.0 ],
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 9.0,
                                    "id": "obj-100",
                                    "linecount": 2,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 1635.079833984375, 252.5989990234375, 23.0, 27.0 ],
                                    "text": "pin\n1",
                                    "textcolor": [ 1.0, 1.0, 1.0, 1.0 ],
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 9.0,
                                    "id": "obj-99",
                                    "linecount": 2,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 1585.5, 252.5989990234375, 23.0, 27.0 ],
                                    "text": "pin\n1",
                                    "textcolor": [ 1.0, 1.0, 1.0, 1.0 ],
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "annotation": "",
                                    "comment": "Write to arduino Pin13  0/1",
                                    "hint": "",
                                    "id": "obj-81",
                                    "index": 12,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "patching_rect": [ 1022.8333740234375, 160.142822265625, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "annotation": "",
                                    "comment": "Write to arduino Pin12  0/1",
                                    "hint": "",
                                    "id": "obj-82",
                                    "index": 11,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 965.610595703125, 160.142822265625, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "annotation": "",
                                    "comment": "Write to arduino Pin11  0/1",
                                    "hint": "",
                                    "id": "obj-83",
                                    "index": 10,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 883.2216796875, 126.06946563720703, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "annotation": "",
                                    "comment": "Write to arduino Pin10  0/1",
                                    "hint": "",
                                    "id": "obj-78",
                                    "index": 9,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 789.4437866210938, 127.5694580078125, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "annotation": "",
                                    "comment": "Write to arduino Pin9  0/1",
                                    "hint": "",
                                    "id": "obj-79",
                                    "index": 8,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 702.272216796875, 121.71619415283203, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "annotation": "",
                                    "comment": "Write to arduino Pin8  0/1",
                                    "hint": "",
                                    "id": "obj-80",
                                    "index": 7,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 575.4405517578125, 121.71619415283203, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "annotation": "",
                                    "comment": "Write to arduino Pin7  0/1",
                                    "hint": "",
                                    "id": "obj-75",
                                    "index": 6,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 516.4459228515625, 121.71617889404297, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "annotation": "",
                                    "comment": "Write to arduino Pin6  0/1 or Analog Servo (0 to 180)",
                                    "hint": "",
                                    "id": "obj-76",
                                    "index": 5,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 443.2637634277344, 127.25318145751953, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 9.0,
                                    "id": "obj-74",
                                    "linecount": 2,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 1729.5, 252.5989990234375, 23.0, 27.0 ],
                                    "text": "pin\n1",
                                    "textcolor": [ 1.0, 1.0, 1.0, 1.0 ],
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "annotation": "",
                                    "comment": "Write to arduino Pin4  0/1",
                                    "hint": "",
                                    "id": "obj-67",
                                    "index": 3,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 242.00970458984375, 117.56947326660156, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "annotation": "",
                                    "comment": "Write to arduino Pin3  0/1 or Analog PWM (0 to 255)",
                                    "hint": "",
                                    "id": "obj-66",
                                    "index": 2,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 162.4076385498047, 117.56947326660156, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "annotation": "",
                                    "comment": "Write to arduino Pin2  0/1",
                                    "hint": "",
                                    "id": "obj-65",
                                    "index": 1,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 67.24420166015625, 113.81887817382812, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "obj-51",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 354.9911193847656, 675.0, 167.0, 20.0 ],
                                    "text": "data digital inputs (0 or 1)"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "obj-56",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 1003.139892578125, 651.9012451171875, 177.0, 20.0 ],
                                    "text": "data analog inputs (0 to 1023)"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 9.916958,
                                    "id": "obj-26",
                                    "linecount": 4,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 1742.989501953125, 159.5694580078125, 89.4516830444336, 51.0 ],
                                    "text": "Write servo value to pin 6\nPWM or ~\n(0 to 180)"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "obj-42",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 12,
                                    "outlettype": [ "int", "int", "int", "int", "int", "int", "int", "int", "int", "int", "int", "int" ],
                                    "patching_rect": [ 131.88235473632812, 699.3795776367188, 657.9814453125, 22.0 ],
                                    "text": "unpack i i i i i i i i i i i i"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 9.916958,
                                    "id": "obj-32",
                                    "linecount": 4,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 1947.0819091796875, 155.93496704101562, 74.36344909667969, 51.0 ],
                                    "text": "Write analog value to pin 3\nPWM or ~\n(0 to 255)"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "obj-31",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 234.53466796875, 675.0, 111.0, 20.0 ],
                                    "text": "Read digital inputs."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-11",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 6,
                                    "outlettype": [ "int", "int", "int", "int", "int", "int" ],
                                    "patching_rect": [ 863.2216796875, 675.0, 315.79168701171875, 22.0 ],
                                    "text": "unpack i i i i i i"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 9.892268,
                                    "id": "obj-12",
                                    "linecount": 2,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 1843.6197509765625, 155.93496704101562, 97.0, 29.0 ],
                                    "text": "Write pin 13 to HIGH(1) or LOW(0)."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-14",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "patcher": {
                                        "fileversion": 1,
                                        "appversion": {
                                            "major": 9,
                                            "minor": 1,
                                            "revision": 1,
                                            "architecture": "x64",
                                            "modernui": 1
                                        },
                                        "classnamespace": "box",
                                        "rect": [ 697.0, 354.0, 247.0, 308.0 ],
                                        "boxes": [
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-1",
                                                    "index": 1,
                                                    "maxclass": "outlet",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 42.0, 192.0, 15.0, 15.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-2",
                                                    "index": 1,
                                                    "maxclass": "inlet",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 42.0, 24.0, 15.0, 15.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 9.0,
                                                    "id": "obj-3",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 41.5, 125.0, 24.5, 19.0 ],
                                                    "text": "13"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 9.0,
                                                    "id": "obj-4",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "bang", "" ],
                                                    "patching_rect": [ 41.5, 76.0, 56.5, 19.0 ],
                                                    "text": "t b l"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 9.0,
                                                    "id": "obj-5",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "int" ],
                                                    "patching_rect": [ 79.0, 125.0, 27.0, 19.0 ],
                                                    "text": "spell"
                                                }
                                            }
                                        ],
                                        "lines": [
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-4", 0 ],
                                                    "source": [ "obj-2", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-1", 0 ],
                                                    "source": [ "obj-3", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-3", 0 ],
                                                    "source": [ "obj-4", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-5", 0 ],
                                                    "source": [ "obj-4", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-1", 0 ],
                                                    "source": [ "obj-5", 0 ]
                                                }
                                            }
                                        ],
                                        "toolbaradditions": [ "BEAP", "Vizzie" ]
                                    },
                                    "patching_rect": [ 485.0, 359.0, 205.7562379837036, 22.0 ],
                                    "text": "p max2asciimessage"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 10.104448,
                                    "id": "obj-17",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "" ],
                                    "patching_rect": [ 53.0, 651.9012451171875, 50.0, 20.0 ],
                                    "text": "route d a"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "obj-24",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 869.510986328125, 651.9012451171875, 127.0, 20.0 ],
                                    "text": "Read analog inputs."
                                }
                            },
                            {
                                "box": {
                                    "angle": 0.0,
                                    "bgcolor": [ 0.0, 0.0, 0.0, 1.0 ],
                                    "id": "obj-112",
                                    "maxclass": "panel",
                                    "mode": 0,
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 1703.609619140625, 287.0932922363281, 64.0, 64.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 0.0, -0.734431505203247, 638.0, 41.0 ],
                                    "proportion": 0.39,
                                    "rounded": 0
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-8",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 213.25, 583.4931030273438, 35.0, 22.0 ],
                                    "text": "clear"
                                }
                            },
                            {
                                "box": {
                                    "angle": 0.0,
                                    "background": 1,
                                    "bgcolor": [ 0.65098, 0.666667, 0.662745, 1.0 ],
                                    "id": "obj-174",
                                    "maxclass": "panel",
                                    "mode": 0,
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 1703.609619140625, 645.1864624023438, 64.0, 64.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 0.0, 90.0, 638.0, 72.61978149414062 ],
                                    "proportion": 0.39,
                                    "rounded": 0
                                }
                            },
                            {
                                "box": {
                                    "angle": 0.0,
                                    "background": 1,
                                    "bgcolor": [ 0.0, 0.0, 0.0, 1.0 ],
                                    "id": "obj-113",
                                    "maxclass": "panel",
                                    "mode": 0,
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 1703.609619140625, 568.65576171875, 64.0, 64.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 0.0, 181.41978454589844, 638.0, 65.972412109375 ],
                                    "proportion": 0.39,
                                    "rounded": 0
                                }
                            },
                            {
                                "box": {
                                    "angle": 0.0,
                                    "background": 1,
                                    "bgcolor": [ 0.367404, 0.389405, 0.430238, 1.0 ],
                                    "id": "obj-117",
                                    "maxclass": "panel",
                                    "mode": 0,
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 1703.609619140625, 424.584716796875, 64.0, 64.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 0.0, 6.465568542480469, 638.0, 240.92662048339844 ],
                                    "proportion": 0.39,
                                    "rounded": 0
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-17", 0 ],
                                    "source": [ "obj-1", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 0 ],
                                    "source": [ "obj-1", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-152", 0 ],
                                    "source": [ "obj-10", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-105", 0 ],
                                    "source": [ "obj-104", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-196", 0 ],
                                    "order": 1,
                                    "source": [ "obj-105", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-226", 0 ],
                                    "order": 0,
                                    "source": [ "obj-105", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-109", 0 ],
                                    "source": [ "obj-106", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-136", 0 ],
                                    "order": 0,
                                    "source": [ "obj-107", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-14", 0 ],
                                    "order": 1,
                                    "source": [ "obj-107", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-136", 0 ],
                                    "order": 0,
                                    "source": [ "obj-108", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-14", 0 ],
                                    "order": 1,
                                    "source": [ "obj-108", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-197", 0 ],
                                    "order": 1,
                                    "source": [ "obj-109", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-225", 0 ],
                                    "order": 0,
                                    "source": [ "obj-109", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-44", 1 ],
                                    "source": [ "obj-11", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-46", 1 ],
                                    "source": [ "obj-11", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-49", 1 ],
                                    "source": [ "obj-11", 2 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-52", 1 ],
                                    "source": [ "obj-11", 3 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-60", 1 ],
                                    "source": [ "obj-11", 4 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-68", 1 ],
                                    "source": [ "obj-11", 5 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-115", 0 ],
                                    "source": [ "obj-110", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-150", 1 ],
                                    "order": 0,
                                    "source": [ "obj-114", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-97", 0 ],
                                    "order": 1,
                                    "source": [ "obj-114", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-198", 0 ],
                                    "order": 1,
                                    "source": [ "obj-115", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-224", 0 ],
                                    "order": 0,
                                    "source": [ "obj-115", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-118", 0 ],
                                    "source": [ "obj-116", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-199", 0 ],
                                    "order": 1,
                                    "source": [ "obj-118", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-223", 0 ],
                                    "order": 0,
                                    "source": [ "obj-118", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-120", 0 ],
                                    "source": [ "obj-119", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-200", 0 ],
                                    "order": 1,
                                    "source": [ "obj-120", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-222", 0 ],
                                    "order": 0,
                                    "source": [ "obj-120", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-122", 0 ],
                                    "source": [ "obj-121", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-201", 0 ],
                                    "order": 1,
                                    "source": [ "obj-122", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-221", 0 ],
                                    "order": 0,
                                    "source": [ "obj-122", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-124", 0 ],
                                    "source": [ "obj-123", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-202", 0 ],
                                    "order": 1,
                                    "source": [ "obj-124", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-220", 0 ],
                                    "order": 0,
                                    "source": [ "obj-124", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-138", 0 ],
                                    "source": [ "obj-125", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-136", 0 ],
                                    "order": 0,
                                    "source": [ "obj-126", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-14", 0 ],
                                    "order": 1,
                                    "source": [ "obj-126", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-19", 0 ],
                                    "source": [ "obj-127", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-136", 0 ],
                                    "order": 0,
                                    "source": [ "obj-128", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-14", 0 ],
                                    "order": 1,
                                    "source": [ "obj-128", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-136", 0 ],
                                    "order": 0,
                                    "source": [ "obj-129", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-14", 0 ],
                                    "order": 1,
                                    "source": [ "obj-129", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-135", 0 ],
                                    "source": [ "obj-13", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-136", 0 ],
                                    "order": 0,
                                    "source": [ "obj-130", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-14", 0 ],
                                    "order": 1,
                                    "source": [ "obj-130", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-136", 0 ],
                                    "order": 0,
                                    "source": [ "obj-131", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-14", 0 ],
                                    "order": 1,
                                    "source": [ "obj-131", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-136", 0 ],
                                    "order": 0,
                                    "source": [ "obj-132", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-14", 0 ],
                                    "order": 1,
                                    "source": [ "obj-132", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-136", 0 ],
                                    "order": 0,
                                    "source": [ "obj-133", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-14", 0 ],
                                    "order": 1,
                                    "source": [ "obj-133", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-136", 0 ],
                                    "order": 0,
                                    "source": [ "obj-134", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-14", 0 ],
                                    "order": 1,
                                    "source": [ "obj-134", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-136", 0 ],
                                    "order": 0,
                                    "source": [ "obj-135", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-14", 0 ],
                                    "order": 1,
                                    "source": [ "obj-135", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-19", 0 ],
                                    "source": [ "obj-137", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-203", 0 ],
                                    "order": 1,
                                    "source": [ "obj-138", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-219", 0 ],
                                    "order": 0,
                                    "source": [ "obj-138", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-142", 0 ],
                                    "source": [ "obj-139", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 0 ],
                                    "source": [ "obj-14", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-19", 0 ],
                                    "source": [ "obj-140", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-204", 0 ],
                                    "order": 1,
                                    "source": [ "obj-142", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-218", 0 ],
                                    "order": 0,
                                    "source": [ "obj-142", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-145", 0 ],
                                    "source": [ "obj-143", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-205", 0 ],
                                    "order": 1,
                                    "source": [ "obj-145", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-217", 0 ],
                                    "order": 0,
                                    "source": [ "obj-145", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-147", 0 ],
                                    "source": [ "obj-146", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-206", 0 ],
                                    "order": 1,
                                    "source": [ "obj-147", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-216", 0 ],
                                    "order": 0,
                                    "source": [ "obj-147", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-149", 0 ],
                                    "source": [ "obj-148", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-207", 0 ],
                                    "order": 1,
                                    "source": [ "obj-149", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-215", 0 ],
                                    "order": 0,
                                    "source": [ "obj-149", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 4 ],
                                    "source": [ "obj-15", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-153", 0 ],
                                    "source": [ "obj-151", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-133", 0 ],
                                    "source": [ "obj-152", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-154", 0 ],
                                    "source": [ "obj-152", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-155", 0 ],
                                    "source": [ "obj-152", 2 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-108", 0 ],
                                    "source": [ "obj-153", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-34", 0 ],
                                    "source": [ "obj-153", 2 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-70", 0 ],
                                    "source": [ "obj-153", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-136", 0 ],
                                    "order": 0,
                                    "source": [ "obj-154", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-14", 0 ],
                                    "order": 1,
                                    "source": [ "obj-154", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-136", 0 ],
                                    "order": 0,
                                    "source": [ "obj-155", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-14", 0 ],
                                    "order": 1,
                                    "source": [ "obj-155", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-8", 0 ],
                                    "source": [ "obj-16", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-11", 0 ],
                                    "source": [ "obj-17", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-42", 0 ],
                                    "source": [ "obj-17", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-15", 0 ],
                                    "source": [ "obj-18", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 0 ],
                                    "source": [ "obj-19", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-5", 0 ],
                                    "source": [ "obj-2", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-6", 0 ],
                                    "source": [ "obj-20", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-19", 0 ],
                                    "source": [ "obj-22", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-7", 0 ],
                                    "source": [ "obj-25", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-131", 0 ],
                                    "source": [ "obj-28", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-4", 0 ],
                                    "source": [ "obj-28", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-73", 0 ],
                                    "source": [ "obj-28", 2 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 3 ],
                                    "midpoints": [ 244.75, 635.9930725097656, 333.625, 635.9930725097656, 333.625, 576.9930725097656, 146.5, 576.9930725097656 ],
                                    "source": [ "obj-3", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-58", 0 ],
                                    "source": [ "obj-30", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-136", 0 ],
                                    "order": 0,
                                    "source": [ "obj-34", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-14", 0 ],
                                    "order": 1,
                                    "source": [ "obj-34", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-37", 0 ],
                                    "source": [ "obj-35", 2 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-39", 0 ],
                                    "source": [ "obj-35", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-71", 0 ],
                                    "source": [ "obj-35", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-35", 0 ],
                                    "source": [ "obj-36", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-136", 0 ],
                                    "order": 0,
                                    "source": [ "obj-37", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-14", 0 ],
                                    "order": 1,
                                    "source": [ "obj-37", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-136", 0 ],
                                    "order": 0,
                                    "source": [ "obj-39", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-14", 0 ],
                                    "order": 1,
                                    "source": [ "obj-39", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-136", 0 ],
                                    "order": 0,
                                    "source": [ "obj-4", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-14", 0 ],
                                    "order": 1,
                                    "source": [ "obj-4", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-47", 0 ],
                                    "source": [ "obj-40", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-44", 0 ],
                                    "source": [ "obj-41", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-105", 1 ],
                                    "source": [ "obj-42", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-109", 1 ],
                                    "source": [ "obj-42", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-115", 1 ],
                                    "source": [ "obj-42", 2 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-118", 1 ],
                                    "source": [ "obj-42", 3 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-120", 1 ],
                                    "source": [ "obj-42", 4 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-122", 1 ],
                                    "source": [ "obj-42", 5 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-124", 1 ],
                                    "source": [ "obj-42", 6 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-138", 1 ],
                                    "source": [ "obj-42", 7 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-142", 1 ],
                                    "source": [ "obj-42", 8 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-145", 1 ],
                                    "source": [ "obj-42", 9 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-147", 1 ],
                                    "source": [ "obj-42", 10 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-149", 1 ],
                                    "source": [ "obj-42", 11 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-209", 0 ],
                                    "order": 1,
                                    "source": [ "obj-44", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-229", 0 ],
                                    "order": 0,
                                    "source": [ "obj-44", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-46", 0 ],
                                    "source": [ "obj-45", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-210", 0 ],
                                    "order": 1,
                                    "source": [ "obj-46", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-232", 0 ],
                                    "order": 0,
                                    "source": [ "obj-46", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-128", 0 ],
                                    "source": [ "obj-47", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-72", 0 ],
                                    "source": [ "obj-47", 2 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-9", 0 ],
                                    "source": [ "obj-47", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-49", 0 ],
                                    "source": [ "obj-48", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-211", 0 ],
                                    "order": 1,
                                    "source": [ "obj-49", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-233", 0 ],
                                    "order": 0,
                                    "source": [ "obj-49", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 1 ],
                                    "source": [ "obj-5", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-52", 0 ],
                                    "source": [ "obj-50", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-212", 0 ],
                                    "order": 1,
                                    "source": [ "obj-52", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-234", 0 ],
                                    "order": 0,
                                    "source": [ "obj-52", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-60", 0 ],
                                    "source": [ "obj-54", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-35", 1 ],
                                    "order": 1,
                                    "source": [ "obj-55", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-38", 0 ],
                                    "order": 0,
                                    "source": [ "obj-55", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-28", 0 ],
                                    "source": [ "obj-57", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-62", 0 ],
                                    "source": [ "obj-59", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 2 ],
                                    "order": 1,
                                    "source": [ "obj-6", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-15", 0 ],
                                    "order": 0,
                                    "source": [ "obj-6", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-2", 0 ],
                                    "order": 2,
                                    "source": [ "obj-6", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-213", 0 ],
                                    "order": 1,
                                    "source": [ "obj-60", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-235", 0 ],
                                    "order": 0,
                                    "source": [ "obj-60", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-68", 0 ],
                                    "source": [ "obj-61", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-132", 0 ],
                                    "source": [ "obj-62", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-63", 0 ],
                                    "source": [ "obj-62", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-77", 0 ],
                                    "source": [ "obj-62", 2 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-136", 0 ],
                                    "order": 0,
                                    "source": [ "obj-63", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-14", 0 ],
                                    "order": 1,
                                    "source": [ "obj-63", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-107", 0 ],
                                    "order": 1,
                                    "source": [ "obj-65", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-160", 0 ],
                                    "order": 0,
                                    "source": [ "obj-65", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-153", 1 ],
                                    "order": 1,
                                    "source": [ "obj-66", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-161", 0 ],
                                    "order": 0,
                                    "source": [ "obj-66", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-126", 0 ],
                                    "order": 1,
                                    "source": [ "obj-67", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-162", 0 ],
                                    "order": 0,
                                    "source": [ "obj-67", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-214", 0 ],
                                    "order": 1,
                                    "source": [ "obj-68", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-236", 0 ],
                                    "order": 0,
                                    "source": [ "obj-68", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-30", 0 ],
                                    "source": [ "obj-69", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-13", 0 ],
                                    "source": [ "obj-7", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-136", 0 ],
                                    "order": 0,
                                    "source": [ "obj-70", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-14", 0 ],
                                    "order": 1,
                                    "source": [ "obj-70", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-136", 0 ],
                                    "order": 0,
                                    "source": [ "obj-71", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-14", 0 ],
                                    "order": 1,
                                    "source": [ "obj-71", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-136", 0 ],
                                    "order": 0,
                                    "source": [ "obj-72", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-14", 0 ],
                                    "order": 1,
                                    "source": [ "obj-72", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-136", 0 ],
                                    "order": 0,
                                    "source": [ "obj-73", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-14", 0 ],
                                    "order": 1,
                                    "source": [ "obj-73", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-129", 0 ],
                                    "order": 1,
                                    "source": [ "obj-75", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-165", 0 ],
                                    "order": 0,
                                    "source": [ "obj-75", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-164", 0 ],
                                    "order": 0,
                                    "source": [ "obj-76", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-47", 1 ],
                                    "order": 1,
                                    "source": [ "obj-76", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-136", 0 ],
                                    "order": 0,
                                    "source": [ "obj-77", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-14", 0 ],
                                    "order": 1,
                                    "source": [ "obj-77", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-168", 0 ],
                                    "order": 0,
                                    "source": [ "obj-78", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-62", 1 ],
                                    "order": 1,
                                    "source": [ "obj-78", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-167", 0 ],
                                    "order": 0,
                                    "source": [ "obj-79", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-28", 1 ],
                                    "order": 1,
                                    "source": [ "obj-79", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 0 ],
                                    "source": [ "obj-8", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-130", 0 ],
                                    "order": 1,
                                    "source": [ "obj-80", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-166", 0 ],
                                    "order": 0,
                                    "source": [ "obj-80", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-135", 0 ],
                                    "order": 1,
                                    "source": [ "obj-81", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-171", 0 ],
                                    "order": 0,
                                    "source": [ "obj-81", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-134", 0 ],
                                    "order": 1,
                                    "source": [ "obj-82", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-170", 0 ],
                                    "order": 0,
                                    "source": [ "obj-82", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-152", 1 ],
                                    "order": 1,
                                    "source": [ "obj-83", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-169", 0 ],
                                    "order": 0,
                                    "source": [ "obj-83", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-69", 0 ],
                                    "source": [ "obj-88", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-136", 0 ],
                                    "order": 0,
                                    "source": [ "obj-9", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-14", 0 ],
                                    "order": 1,
                                    "source": [ "obj-9", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-127", 0 ],
                                    "source": [ "obj-97", 2 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-137", 0 ],
                                    "source": [ "obj-97", 3 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-140", 0 ],
                                    "source": [ "obj-97", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-22", 0 ],
                                    "source": [ "obj-97", 0 ]
                                }
                            }
                        ],
                        "toolbaradditions": [ "BEAP", "Vizzie", "TS.Modular", "Vsynth" ]
                    },
                    "patching_rect": [ 518.0, 186.0, 641.0, 249.0 ],
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-5",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 123.0, 674.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-4",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 199.0, 674.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "id": "obj-37",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 6.0, 12.0, 346.0, 20.0 ],
                    "presentation_linecount": 2,
                    "text": "Get data from the ISS space station location phase API"
                }
            },
            {
                "box": {
                    "id": "obj-38",
                    "linecount": 3,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 6.0, 34.0, 155.0, 47.0 ],
                    "presentation_linecount": 3,
                    "text": "By Mark Meeuwenoord\nwww.dinggoo.nl\n2025"
                }
            },
            {
                "box": {
                    "id": "obj-124",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 6.0, 77.0, 254.0, 33.0 ],
                    "presentation_linecount": 2,
                    "text": "For info and excact workings of the API see https://wheretheiss.at/w/developer"
                }
            },
            {
                "box": {
                    "id": "obj-83",
                    "maxclass": "number",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 165.0, 140.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-49",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 58.0, 144.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-41",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 58.0, 183.0, 126.0, 22.0 ],
                    "text": "metro 3000 @active 1"
                }
            },
            {
                "box": {
                    "id": "obj-40",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 123.0, 756.0, 54.0, 22.0 ],
                    "text": "s coords"
                }
            },
            {
                "box": {
                    "id": "obj-35",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 123.0, 723.0, 37.0, 22.0 ],
                    "text": "join 2"
                }
            },
            {
                "box": {
                    "id": "obj-29",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 123.0, 644.0, 66.0, 22.0 ],
                    "text": "string.tolist"
                }
            },
            {
                "box": {
                    "id": "obj-19",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 199.0, 644.0, 66.0, 22.0 ],
                    "text": "string.tolist"
                }
            },
            {
                "box": {
                    "id": "obj-14",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 123.0, 571.0, 135.0, 22.0 ],
                    "text": "route body::iss_position"
                }
            },
            {
                "box": {
                    "id": "obj-8",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 305.0, 401.0, 124.0, 22.0 ],
                    "text": "get body::iss_position"
                }
            },
            {
                "box": {
                    "id": "obj-7",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "" ],
                    "patching_rect": [ 123.0, 612.0, 170.0, 22.0 ],
                    "saved_object_attributes": {
                        "legacy": 0
                    },
                    "text": "dict.unpack longitude: latitude:"
                }
            },
            {
                "box": {
                    "id": "obj-6",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 306.0, 513.0, 169.0, 22.0 ],
                    "text": "get body::iss_position::latitude"
                }
            },
            {
                "box": {
                    "id": "obj-3",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 305.0, 459.0, 179.0, 22.0 ],
                    "text": "get body::iss_position::longitude"
                }
            },
            {
                "box": {
                    "id": "obj-2",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 58.0, 366.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-470",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 105.0, 493.0, 124.0, 22.0 ],
                    "text": "get body::iss_position"
                }
            },
            {
                "box": {
                    "id": "obj-471",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 105.0, 291.0, 206.0, 22.0 ],
                    "text": "http://api.open-notify.org/iss-now.json"
                }
            },
            {
                "box": {
                    "id": "obj-472",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 39.0, 452.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-473",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 105.0, 247.0, 150.0, 33.0 ],
                    "text": "Where is the ISS Spacestation"
                }
            },
            {
                "box": {
                    "id": "obj-474",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 153.0, 425.0, 141.0, 22.0 ],
                    "text": "progress 114. 114. 0. 0."
                }
            },
            {
                "box": {
                    "id": "obj-475",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 322.0, 291.0, 66.0, 22.0 ],
                    "text": "sprintf {url}"
                }
            },
            {
                "box": {
                    "id": "obj-476",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "bang", "" ],
                    "patching_rect": [ 105.0, 458.0, 189.10660907626152, 22.0 ],
                    "text": "t b l"
                }
            },
            {
                "box": {
                    "id": "obj-477",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 105.0, 349.0, 91.0, 22.0 ],
                    "text": "set url $1, bang"
                }
            },
            {
                "box": {
                    "id": "obj-478",
                    "maxclass": "dict.view",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 310.0, 566.0, 183.93464010953903, 137.1466616988182 ]
                }
            },
            {
                "box": {
                    "data": {
                        "body": {
                            "message": "success",
                            "timestamp": 1765544942,
                            "iss_position": {
                                "longitude": "-109.2251",
                                "latitude": "29.0381"
                            }
                        },
                        "header": "HTTP/1.1 200 OK\r\nServer: nginx/1.10.3\r\nDate: Fri, 12 Dec 2025 13:09:02 GMT\r\nContent-Type: application/json\r\nContent-Length: 114\r\nConnection: keep-alive\r\naccess-control-allow-origin: *\r\n\r\n",
                        "status": 200,
                        "connect_code": 0,
                        "url": "http://api.open-notify.org/iss-now.json",
                        "file_time": -1,
                        "total_time": 0.17139,
                        "size_upload": 0.0,
                        "size_download": 114.0,
                        "content_length_download": 114.0,
                        "content_length_upload": 0.0,
                        "content_type": "application/json"
                    },
                    "id": "obj-479",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 5,
                    "outlettype": [ "dictionary", "", "", "", "" ],
                    "patching_rect": [ 105.0, 537.0, 89.0, 22.0 ],
                    "saved_object_attributes": {
                        "embed": 1,
                        "legacy": 1,
                        "parameter_enable": 0,
                        "parameter_mappable": 0
                    },
                    "text": "dict @embed 1"
                }
            },
            {
                "box": {
                    "id": "obj-480",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "dictionary", "" ],
                    "patching_rect": [ 105.0, 425.0, 45.0, 22.0 ],
                    "text": "maxurl"
                }
            },
            {
                "box": {
                    "data": {
                        "http_method": "get",
                        "url": "http://api.open-notify.org/iss-now.json",
                        "parse_type": "json"
                    },
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "id": "obj-481",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 5,
                    "outlettype": [ "dictionary", "", "", "", "" ],
                    "patching_rect": [ 105.0, 391.0, 99.0, 23.0 ],
                    "saved_object_attributes": {
                        "embed": 1,
                        "legacy": 1,
                        "parameter_enable": 0,
                        "parameter_mappable": 0
                    },
                    "text": "dict @embed 1"
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "obj-1", 11 ],
                    "source": [ "obj-10", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 4 ],
                    "source": [ "obj-12", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-12", 0 ],
                    "source": [ "obj-13", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-7", 0 ],
                    "source": [ "obj-14", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-13", 0 ],
                    "source": [ "obj-16", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 4 ],
                    "source": [ "obj-18", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-4", 0 ],
                    "source": [ "obj-19", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-481", 0 ],
                    "source": [ "obj-2", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 4 ],
                    "source": [ "obj-20", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-5", 0 ],
                    "source": [ "obj-29", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-479", 0 ],
                    "source": [ "obj-3", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-40", 0 ],
                    "source": [ "obj-35", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-35", 1 ],
                    "source": [ "obj-4", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-2", 0 ],
                    "source": [ "obj-41", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-479", 0 ],
                    "source": [ "obj-470", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-477", 0 ],
                    "source": [ "obj-471", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-479", 0 ],
                    "source": [ "obj-472", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-477", 0 ],
                    "source": [ "obj-475", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-470", 0 ],
                    "source": [ "obj-476", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-479", 0 ],
                    "midpoints": [ 284.6066090762615, 529.331418260932, 114.5, 529.331418260932 ],
                    "source": [ "obj-476", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-481", 0 ],
                    "source": [ "obj-477", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-14", 0 ],
                    "source": [ "obj-479", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-478", 0 ],
                    "source": [ "obj-479", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-474", 1 ],
                    "source": [ "obj-480", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-476", 0 ],
                    "source": [ "obj-480", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-480", 0 ],
                    "source": [ "obj-481", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-41", 0 ],
                    "source": [ "obj-49", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-13", 1 ],
                    "midpoints": [ 132.5, 706.0, 503.58984375, 706.0, 503.58984375, 108.0, 689.5, 108.0 ],
                    "order": 0,
                    "source": [ "obj-5", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-35", 0 ],
                    "order": 1,
                    "source": [ "obj-5", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-479", 0 ],
                    "source": [ "obj-6", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-19", 0 ],
                    "source": [ "obj-7", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-29", 0 ],
                    "source": [ "obj-7", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-479", 0 ],
                    "source": [ "obj-8", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-41", 1 ],
                    "source": [ "obj-83", 0 ]
                }
            }
        ],
        "parameters": {
            "obj-1::obj-10": [ "servo[5]", "servo", 0 ],
            "obj-1::obj-104": [ "write[6]", "write", 0 ],
            "obj-1::obj-106": [ "write[9]", "write", 0 ],
            "obj-1::obj-110": [ "write[10]", "write", 0 ],
            "obj-1::obj-114": [ "tab", "tab", 0 ],
            "obj-1::obj-116": [ "write[11]", "write", 0 ],
            "obj-1::obj-119": [ "write[12]", "write", 0 ],
            "obj-1::obj-121": [ "write[13]", "write", 0 ],
            "obj-1::obj-123": [ "write[14]", "write", 0 ],
            "obj-1::obj-125": [ "write[15]", "write", 0 ],
            "obj-1::obj-139": [ "write[16]", "write", 0 ],
            "obj-1::obj-143": [ "write[17]", "write", 0 ],
            "obj-1::obj-144": [ "pictctrl[1]", "pictctrl[1]", 0 ],
            "obj-1::obj-146": [ "write[18]", "write", 0 ],
            "obj-1::obj-148": [ "write[19]", "write", 0 ],
            "obj-1::obj-151": [ "servo[1]", "servo", 0 ],
            "obj-1::obj-160": [ "live.toggle[1]", "live.toggle", 0 ],
            "obj-1::obj-161": [ "live.toggle[2]", "live.toggle", 0 ],
            "obj-1::obj-162": [ "live.toggle[3]", "live.toggle", 0 ],
            "obj-1::obj-164": [ "live.toggle[5]", "live.toggle", 0 ],
            "obj-1::obj-165": [ "live.toggle[6]", "live.toggle", 0 ],
            "obj-1::obj-166": [ "live.toggle[7]", "live.toggle", 0 ],
            "obj-1::obj-167": [ "live.toggle[8]", "live.toggle", 0 ],
            "obj-1::obj-168": [ "live.toggle[9]", "live.toggle", 0 ],
            "obj-1::obj-169": [ "live.toggle[10]", "live.toggle", 0 ],
            "obj-1::obj-170": [ "live.toggle[11]", "live.toggle", 0 ],
            "obj-1::obj-171": [ "live.toggle[12]", "live.toggle", 0 ],
            "obj-1::obj-20": [ "digital switch[2]", "digital switch", 0 ],
            "obj-1::obj-215": [ "live.toggle[13]", "live.toggle", 0 ],
            "obj-1::obj-216": [ "live.toggle[14]", "live.toggle", 0 ],
            "obj-1::obj-217": [ "live.toggle[15]", "live.toggle", 0 ],
            "obj-1::obj-218": [ "live.toggle[16]", "live.toggle", 0 ],
            "obj-1::obj-219": [ "live.toggle[17]", "live.toggle", 0 ],
            "obj-1::obj-220": [ "live.toggle[18]", "live.toggle", 0 ],
            "obj-1::obj-221": [ "live.toggle[19]", "live.toggle", 0 ],
            "obj-1::obj-222": [ "live.toggle[20]", "live.toggle", 0 ],
            "obj-1::obj-223": [ "live.toggle[21]", "live.toggle", 0 ],
            "obj-1::obj-224": [ "live.toggle[22]", "live.toggle", 0 ],
            "obj-1::obj-225": [ "live.toggle[23]", "live.toggle", 0 ],
            "obj-1::obj-226": [ "live.toggle[24]", "live.toggle", 0 ],
            "obj-1::obj-229": [ "A0", "A0", 0 ],
            "obj-1::obj-232": [ "A1", "A1", 0 ],
            "obj-1::obj-233": [ "A2", "A2", 0 ],
            "obj-1::obj-234": [ "A3", "A3", 0 ],
            "obj-1::obj-235": [ "A4", "A4", 0 ],
            "obj-1::obj-236": [ "A5", "A5", 0 ],
            "obj-1::obj-36": [ "servo[2]", "servo", 0 ],
            "obj-1::obj-38": [ "live.toggle[25]", "live.toggle", 0 ],
            "obj-1::obj-40": [ "servo", "servo", 0 ],
            "obj-1::obj-41": [ "write[8]", "write", 0 ],
            "obj-1::obj-45": [ "write[1]", "write", 0 ],
            "obj-1::obj-48": [ "write[2]", "write", 0 ],
            "obj-1::obj-50": [ "write[3]", "write", 0 ],
            "obj-1::obj-54": [ "write[4]", "write", 0 ],
            "obj-1::obj-57": [ "servo[3]", "servo", 0 ],
            "obj-1::obj-59": [ "servo[4]", "servo", 0 ],
            "obj-1::obj-61": [ "write[5]", "write", 0 ],
            "obj-1::obj-88": [ "live.text", "live.text", 0 ],
            "parameterbanks": {
                "0": {
                    "index": 0,
                    "name": "",
                    "parameters": [ "-", "-", "-", "-", "-", "-", "-", "-" ],
                    "buttons": [ "-", "-", "-", "-", "-", "-", "-", "-" ]
                }
            },
            "inherited_shortname": 1
        },
        "autosave": 0,
        "toolbaradditions": [ "BEAP", "Vizzie", "Vsynth" ]
    }
}