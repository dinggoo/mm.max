{
    "patcher": {
        "fileversion": 1,
        "appversion": {
            "major": 9,
            "minor": 1,
            "revision": 4,
            "architecture": "x64",
            "modernui": 1
        },
        "classnamespace": "box",
        "rect": [ 528.0, 266.0, 394.0, 241.0 ],
        "openinpresentation": 1,
        "gridonopen": 2,
        "subpatcher_template": "Untitled1_template",
        "boxes": [
            {
                "box": {
                    "id": "obj-25",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 891.0, 214.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "activebgcolor": [ 0.228829, 0.218749, 0.211649, 1.0 ],
                    "fontsize": 11.0,
                    "id": "obj-26",
                    "maxclass": "live.numbox",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 972.0, 263.0, 41.0, 17.0 ],
                    "saved_attribute_attributes": {
                        "activebgcolor": {
                            "expression": ""
                        },
                        "textcolor": {
                            "expression": ""
                        },
                        "valueof": {
                            "parameter_initial": [ 640 ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "dim_y[4]",
                            "parameter_mmax": 4096.0,
                            "parameter_modmode": 0,
                            "parameter_shortname": "dim_y",
                            "parameter_type": 0,
                            "parameter_unitstyle": 0
                        }
                    },
                    "textcolor": [ 0.862745, 0.870588, 0.878431, 1.0 ],
                    "varname": "dim_y[2]"
                }
            },
            {
                "box": {
                    "activebgcolor": [ 0.228829, 0.218749, 0.211649, 1.0 ],
                    "fontsize": 11.0,
                    "id": "obj-27",
                    "maxclass": "live.numbox",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 891.0, 263.0, 41.0, 17.0 ],
                    "saved_attribute_attributes": {
                        "activebgcolor": {
                            "expression": ""
                        },
                        "textcolor": {
                            "expression": ""
                        },
                        "valueof": {
                            "parameter_initial": [ 640 ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "dim_x[4]",
                            "parameter_mmax": 4096.0,
                            "parameter_modmode": 0,
                            "parameter_shortname": "dim_x",
                            "parameter_type": 0,
                            "parameter_unitstyle": 0
                        }
                    },
                    "textcolor": [ 0.862745, 0.870588, 0.878431, 1.0 ],
                    "varname": "dim_x[2]"
                }
            },
            {
                "box": {
                    "id": "obj-28",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 810.0, 243.0, 58.0, 22.0 ],
                    "text": "r trig_res"
                }
            },
            {
                "box": {
                    "id": "obj-29",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 810.0, 289.0, 181.0, 22.0 ],
                    "text": "pak dim i i"
                }
            },
            {
                "box": {
                    "activebgcolor": [ 0.4745098039215686, 0.4627450980392157, 0.4470588235294118, 1.0 ],
                    "fontsize": 13.0,
                    "id": "obj-17",
                    "maxclass": "live.numbox",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 470.0, 94.0, 48.0, 19.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 48.0, 2.0, 47.0, 19.0 ],
                    "saved_attribute_attributes": {
                        "activebgcolor": {
                            "expression": ""
                        },
                        "textcolor": {
                            "expression": ""
                        },
                        "valueof": {
                            "parameter_initial": [ 640 ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "dim_y[3]",
                            "parameter_mmax": 4096.0,
                            "parameter_modmode": 0,
                            "parameter_shortname": "dim_y",
                            "parameter_type": 0,
                            "parameter_unitstyle": 0
                        }
                    },
                    "textcolor": [ 0.85, 0.85, 0.85, 1.0 ],
                    "varname": "dim_y[1]"
                }
            },
            {
                "box": {
                    "activebgcolor": [ 0.4745098039215686, 0.4627450980392157, 0.4470588235294118, 1.0 ],
                    "fontsize": 13.0,
                    "id": "obj-20",
                    "maxclass": "live.numbox",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 420.0, 94.0, 48.0, 19.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1.0, 2.0, 47.0, 19.0 ],
                    "saved_attribute_attributes": {
                        "activebgcolor": {
                            "expression": ""
                        },
                        "textcolor": {
                            "expression": ""
                        },
                        "valueof": {
                            "parameter_initial": [ 640 ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "dim_x[3]",
                            "parameter_mmax": 4096.0,
                            "parameter_modmode": 0,
                            "parameter_shortname": "dim_x",
                            "parameter_type": 0,
                            "parameter_unitstyle": 0
                        }
                    },
                    "textcolor": [ 0.85, 0.85, 0.85, 1.0 ],
                    "varname": "dim_x[1]"
                }
            },
            {
                "box": {
                    "id": "obj-21",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 389.0, 138.0, 100.0, 22.0 ],
                    "text": "pak dim i i"
                }
            },
            {
                "box": {
                    "activebgcolor": [ 0.875, 0.85, 0.825, 1.0 ],
                    "fontname": "Verdana",
                    "fontsize": 14.0,
                    "hint": "Render's Window Size",
                    "hltcolor": [ 1.0, 0.648910641670227, 0.313351899385452, 1.0 ],
                    "hlttextcolor": [ 0.109803921568627, 0.109803921568627, 0.109803921568627, 1.0 ],
                    "id": "obj-22",
                    "maxclass": "live.menu",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 200.0, 59.0, 100.0, 21.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1.0, 23.0, 94.0, 21.0 ],
                    "saved_attribute_attributes": {
                        "activebgcolor": {
                            "expression": ""
                        },
                        "hltcolor": {
                            "expression": ""
                        },
                        "hlttextcolor": {
                            "expression": ""
                        },
                        "textcolor": {
                            "expression": ""
                        },
                        "tricolor": {
                            "expression": ""
                        },
                        "valueof": {
                            "parameter_enum": [ "320x320", "400x400", "640x640", "800x800", "1280x1280", "1920x1920", "2560x2560", "320x240", "640x360", "1280x720", "1920x1080", "2560x1600" ],
                            "parameter_longname": "live.menu[7]",
                            "parameter_mmax": 11,
                            "parameter_modmode": 0,
                            "parameter_shortname": "live.menu",
                            "parameter_type": 2
                        }
                    },
                    "textcolor": [ 0.05, 0.05, 0.05, 1.0 ],
                    "tricolor": [ 0.05, 0.05, 0.05, 1.0 ],
                    "varname": "live.menu[2]"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "id": "obj-24",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 200.0, 17.0, 56.0, 22.0 ],
                    "text": "r trig_res"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "id": "obj-122",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 389.0, 237.0, 42.0, 22.0 ],
                    "text": "s dim"
                }
            },
            {
                "box": {
                    "id": "obj-45",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 5,
                    "outlettype": [ "", "", "", "", "" ],
                    "patching_rect": [ 241.0, 138.0, 139.0, 22.0 ],
                    "saved_object_attributes": {
                        "legacyoutputorder": 1
                    },
                    "text": "regexp x @substitute \" \""
                }
            },
            {
                "box": {
                    "id": "obj-41",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 240.0, 92.0, 59.0, 22.0 ],
                    "text": "tosymbol"
                }
            },
            {
                "box": {
                    "id": "obj-36",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 241.0, 185.0, 77.0, 22.0 ],
                    "text": "prepend dim"
                }
            },
            {
                "box": {
                    "id": "obj-15",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "bang", "" ],
                    "patching_rect": [ 241.0, 237.0, 29.5, 22.0 ],
                    "text": "t b l"
                }
            },
            {
                "box": {
                    "id": "obj-14",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 578.0, 255.0, 35.0, 22.0 ],
                    "text": "reset"
                }
            },
            {
                "box": {
                    "id": "obj-18",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 578.0, 234.0, 71.0, 22.0 ],
                    "text": "route /reset"
                }
            },
            {
                "box": {
                    "id": "obj-11",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 578.0, 181.0, 63.0, 22.0 ],
                    "text": "r time_ctrl"
                }
            },
            {
                "box": {
                    "id": "obj-9",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 810.0, 331.0, 39.0, 22.0 ],
                    "text": "s dim"
                }
            },
            {
                "box": {
                    "id": "obj-10",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 403.0, 397.0, 44.0, 22.0 ],
                    "text": "s draw"
                }
            },
            {
                "box": {
                    "id": "obj-7",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 50.0, 237.0, 58.0, 22.0 ],
                    "text": "loadbang"
                }
            },
            {
                "box": {
                    "id": "obj-6",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "jit_gl_texture", "", "" ],
                    "patching_rect": [ 29.0, 137.0, 143.0, 22.0 ],
                    "text": "jit.gl.node @name vsynth"
                }
            },
            {
                "box": {
                    "id": "obj-5",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 403.0, 289.0, 47.0, 22.0 ],
                    "text": "jit.bang"
                }
            },
            {
                "box": {
                    "comment": "",
                    "id": "obj-4",
                    "index": 0,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 482.0, 202.0, 30.0, 30.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-3",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 482.0, 346.0, 43.0, 22.0 ],
                    "text": "jit.time"
                }
            },
            {
                "box": {
                    "id": "obj-2",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 482.0, 397.0, 41.0, 22.0 ],
                    "text": "s time"
                }
            },
            {
                "box": {
                    "id": "obj-59",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "jit_gl_texture", "" ],
                    "patching_rect": [ 50.0, 346.0, 108.0, 22.0 ],
                    "text": "jit.gl.texture vsynth"
                }
            },
            {
                "box": {
                    "id": "obj-61",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "jit_gl_texture", "" ],
                    "patching_rect": [ 241.0, 346.0, 108.0, 22.0 ],
                    "text": "jit.gl.texture vsynth"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "id": "obj-31",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "jit_matrix", "" ],
                    "patching_rect": [ 50.0, 289.0, 115.0, 22.0 ],
                    "text": "jit.matrix 1 char 1 1"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "id": "obj-58",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "jit_matrix", "" ],
                    "patching_rect": [ 241.0, 289.0, 142.0, 22.0 ],
                    "text": "jit.matrix 1 char 640 640"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "id": "obj-1",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 50.0, 397.0, 80.0, 22.0 ],
                    "text": "s canvas_lfo"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "id": "obj-92",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 241.0, 397.0, 61.0, 22.0 ],
                    "text": "s canvas"
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "obj-18", 0 ],
                    "source": [ "obj-11", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-3", 0 ],
                    "source": [ "obj-14", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-58", 0 ],
                    "source": [ "obj-15", 1 ]
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
                    "destination": [ "obj-21", 2 ],
                    "source": [ "obj-17", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-14", 0 ],
                    "source": [ "obj-18", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-21", 1 ],
                    "source": [ "obj-20", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-122", 0 ],
                    "source": [ "obj-21", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-41", 0 ],
                    "source": [ "obj-22", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-22", 0 ],
                    "source": [ "obj-24", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-27", 0 ],
                    "source": [ "obj-25", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-29", 2 ],
                    "source": [ "obj-26", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-29", 1 ],
                    "source": [ "obj-27", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-29", 0 ],
                    "source": [ "obj-28", 0 ]
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
                    "destination": [ "obj-59", 0 ],
                    "source": [ "obj-31", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-122", 0 ],
                    "order": 0,
                    "source": [ "obj-36", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-15", 0 ],
                    "order": 1,
                    "source": [ "obj-36", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-3", 0 ],
                    "order": 0,
                    "source": [ "obj-4", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-5", 0 ],
                    "order": 1,
                    "source": [ "obj-4", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-45", 0 ],
                    "source": [ "obj-41", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-36", 0 ],
                    "source": [ "obj-45", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-10", 0 ],
                    "order": 0,
                    "source": [ "obj-5", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-59", 0 ],
                    "order": 2,
                    "source": [ "obj-5", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-61", 0 ],
                    "order": 1,
                    "source": [ "obj-5", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-61", 0 ],
                    "source": [ "obj-58", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "source": [ "obj-59", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-92", 0 ],
                    "source": [ "obj-61", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-31", 0 ],
                    "order": 1,
                    "source": [ "obj-7", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-58", 0 ],
                    "order": 0,
                    "source": [ "obj-7", 0 ]
                }
            }
        ],
        "parameters": {
            "obj-17": [ "dim_y[3]", "dim_y", 0 ],
            "obj-20": [ "dim_x[3]", "dim_x", 0 ],
            "obj-22": [ "live.menu[7]", "live.menu", 0 ],
            "obj-26": [ "dim_y[4]", "dim_y", 0 ],
            "obj-27": [ "dim_x[4]", "dim_x", 0 ],
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
        "toolbaradditions": [ "BEAP", "Vizzie", "Vsynth", "Data Knot" ]
    }
}