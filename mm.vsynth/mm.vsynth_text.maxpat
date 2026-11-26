{
    "patcher": {
        "fileversion": 1,
        "appversion": {
            "major": 9,
            "minor": 1,
            "revision": 3,
            "architecture": "x64",
            "modernui": 1
        },
        "classnamespace": "box",
        "rect": [ 76.0, 124.0, 1618.0, 959.0 ],
        "boxes": [
            {
                "box": {
                    "bgmode": 1,
                    "border": 1,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-25",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "vs_wfg_2.maxpat",
                    "numinlets": 3,
                    "numoutlets": 2,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "jit_gl_texture", "jit_gl_texture" ],
                    "patching_rect": [ 95.0, 262.0, 277.06883773913046, 99.5 ],
                    "varname": "vs_wfg_2",
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "id": "obj-22",
                    "maxclass": "number",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 883.0, 270.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-14",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 364.0, 9.0, 46.0, 22.0 ],
                    "text": "klasien"
                }
            },
            {
                "box": {
                    "bgmode": 1,
                    "border": 1,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-33",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "vector_grid_generator.maxpat",
                    "numinlets": 3,
                    "numoutlets": 3,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "multichannelsignal", "signal", "multichannelsignal" ],
                    "patching_rect": [ 1297.0, 545.1666665673256, 278.939394056797, 87.66666686534882 ],
                    "varname": "vector_grid_generator[2]",
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "bgmode": 1,
                    "border": 1,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-31",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "vs_wfg_polarizer.maxpat",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "jit_gl_texture", "jit_gl_texture" ],
                    "patching_rect": [ 1297.0, 354.0, 220.0, 132.0 ],
                    "varname": "vs_wfg_polarizer[1]",
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "id": "obj-130",
                    "maxclass": "number",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 782.75, 270.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "bgmode": 1,
                    "border": 1,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-128",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "vector_grid_generator.maxpat",
                    "numinlets": 3,
                    "numoutlets": 3,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "multichannelsignal", "signal", "multichannelsignal" ],
                    "patching_rect": [ 1297.0, 705.0, 278.939394056797, 87.66666686534882 ],
                    "varname": "vector_grid_generator[1]",
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "id": "obj-126",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1358.0, -14.83333349999998, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "bgmode": 0,
                    "border": 0,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-124",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "Abl.AutoFilter~.maxpat",
                    "numinlets": 5,
                    "numoutlets": 4,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "multichannelsignal", "signal", "signal", "" ],
                    "patching_rect": [ 990.0, 705.0, 169.0, 124.0 ],
                    "varname": "Abl.AutoFilter~",
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "bgmode": 0,
                    "border": 0,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-123",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "Abl.Doubler~.maxpat",
                    "numinlets": 4,
                    "numoutlets": 4,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "multichannelsignal", "signal", "signal", "" ],
                    "patching_rect": [ 988.0, 562.0, 169.0, 124.0 ],
                    "varname": "Abl.Doubler~",
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "id": "obj-122",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 841.25, 270.0, 29.5, 22.0 ],
                    "text": "0"
                }
            },
            {
                "box": {
                    "bgmode": 1,
                    "border": 1,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-117",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "vs_blendmode_mixer.maxpat",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "jit_gl_texture" ],
                    "patching_rect": [ 400.0, 555.0, 115.0, 94.0 ],
                    "varname": "vs_blendmode_mixer[1]",
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "bgmode": 1,
                    "border": 1,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-116",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "vector_audio2tex.maxpat",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "jit_gl_texture" ],
                    "patching_rect": [ 978.0, 477.0, 94.66666662693024, 18.0 ],
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "id": "obj-111",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "signal", "signal" ],
                    "patching_rect": [ 814.0, 747.0, 84.0, 22.0 ],
                    "text": "mc.unpack~ 2"
                }
            },
            {
                "box": {
                    "bgmode": 1,
                    "border": 1,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-106",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "vs_noise_s.maxpat",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "jit_gl_texture" ],
                    "patching_rect": [ 400.0, 520.0, 41.0, 19.0 ],
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "bgmode": 1,
                    "border": 1,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-99",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "vector_poly_raster_generator.maxpat",
                    "numinlets": 3,
                    "numoutlets": 3,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "multichannelsignal", "signal", "multichannelsignal" ],
                    "patching_rect": [ 1358.0, 21.16666650000002, 322.566117, 87.66666699999996 ],
                    "varname": "vector_grid_generator",
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "id": "obj-97",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 614.0, 242.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "bgmode": 0,
                    "border": 0,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-95",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "Abl.Output~.maxpat",
                    "numinlets": 3,
                    "numoutlets": 3,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "multichannelsignal", "signal", "" ],
                    "patching_rect": [ 990.0, 846.0, 169.0, 84.0 ],
                    "varname": "Abl.Output~",
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "id": "obj-92",
                    "int": 1,
                    "maxclass": "gswitch2",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 704.0, 382.0, 39.0, 32.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-91",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "bang", "int" ],
                    "patching_rect": [ 789.0, 425.0, 120.0, 22.0 ],
                    "text": "text ÉdouardGlissant"
                }
            },
            {
                "box": {
                    "id": "obj-90",
                    "linecount": 16,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1606.0, 607.0, 352.0, 234.0 ],
                    "text": "Thinking thought usually amounts to withdrawing into\na dimensionless place in which the idea of thought alone persists.\nBut thought in reality spaces itself out into the world.\nIt informs the imaginary of peoples, their varied poetics,\nwhich it then transforms, meaning, in them its risk becomes realized.\nCulture is the precaution of those who claim to think thought\nbut who steer clear of its chaotic journey.\nEvolving cultures infer Relation, the overstepping that grounds their unity-diversity.\nThought draws the imaginary of the past: a knowledge becoming.\nOne cannot stop it to assess it nor isolate it to transmit it.\nIt is sharing one can never not retain, nor ever, in standing still, boast about.\n"
                }
            },
            {
                "box": {
                    "annotation": "## The VIZZIE audio/video player/looper ##",
                    "bgmode": 1,
                    "border": 0,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-86",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "vz.avplayr.maxpat",
                    "numinlets": 7,
                    "numoutlets": 4,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "jit_gl_texture", "signal", "signal", "" ],
                    "patching_rect": [ 538.0, 504.0, 348.0, 170.0 ],
                    "prototypename": "pixl",
                    "varname": "avplayr",
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "bgmode": 1,
                    "border": 1,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-84",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "vs_blendmode_mixer.maxpat",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "jit_gl_texture" ],
                    "patching_rect": [ 304.0, 690.0, 115.0, 94.0 ],
                    "varname": "vs_blendmode_mixer",
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "id": "obj-81",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 748.0, 23.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.301961, 0.301961, 0.301961, 1.0 ],
                    "bgcolor2": [ 0.301961, 0.301961, 0.301961, 1.0 ],
                    "bgfillcolor_angle": 270.0,
                    "bgfillcolor_autogradient": 0.0,
                    "bgfillcolor_color": [ 0.764705882352941, 0.764705882352941, 0.764705882352941, 1.0 ],
                    "bgfillcolor_color1": [ 0.301961, 0.301961, 0.301961, 1.0 ],
                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1.0 ],
                    "bgfillcolor_proportion": 0.5,
                    "bgfillcolor_type": "color",
                    "gradient": 1,
                    "id": "obj-76",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 31.0, 36.0, 163.0, 22.0 ],
                    "text": "dim 2560 1600, size 400 400",
                    "textcolor": [ 0.0, 0.0, 0.0, 1.0 ]
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.301961, 0.301961, 0.301961, 1.0 ],
                    "bgcolor2": [ 0.301961, 0.301961, 0.301961, 1.0 ],
                    "bgfillcolor_angle": 270.0,
                    "bgfillcolor_autogradient": 0.0,
                    "bgfillcolor_color": [ 0.764705882352941, 0.764705882352941, 0.764705882352941, 1.0 ],
                    "bgfillcolor_color1": [ 0.301961, 0.301961, 0.301961, 1.0 ],
                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1.0 ],
                    "bgfillcolor_proportion": 0.5,
                    "bgfillcolor_type": "color",
                    "gradient": 1,
                    "id": "obj-9",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 31.0, -7.0, 163.0, 22.0 ],
                    "text": "dim 1280 1014, size 400 400",
                    "textcolor": [ 0.0, 0.0, 0.0, 1.0 ]
                }
            },
            {
                "box": {
                    "bgmode": 1,
                    "border": 1,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-74",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "vs_capture.maxpat",
                    "numinlets": 3,
                    "numoutlets": 0,
                    "offset": [ 0.0, 0.0 ],
                    "patching_rect": [ 594.6666666666666, 795.0, 125.0, 60.0 ],
                    "varname": "vs_capture",
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "id": "obj-17",
                    "maxclass": "number",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1046.0, 20.5, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-12",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1053.0, 54.0, 73.0, 22.0 ],
                    "text": "font_size $1"
                }
            },
            {
                "box": {
                    "id": "obj-5",
                    "linecount": 43,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1595.0, 10.5, 150.0, 583.0 ],
                    "text": "Girl in Love\n\nThat's my window. This minute\nSo gently did I alight\nFrom sleep—was still floating in it.\nWhere has my life its limit\nAnd where begins the night?\n\nI could fancy all things around me\nWere nothing but I as yet;\nLike a crystal's depth, profoundly\nMute, translucent, unlit.\n\nI have space to spare inside me\nFor the stars, too: so full of room\nFeels my heart; so lightly\nWould it let go of him, whom\n\nFor all I know I have started\nTo love, it may be to hold.\nStrange, as if never charted,\nStares my fortune untold.\n\nWhy is it I am bedded\nBeneath this infinitude,\nFragrant like a meadow,\nHither and thither moved,\n\nCalling out, yet fearing\nSomeone might hear the cry,\nDestined to disappearing\nWithin another I."
                }
            },
            {
                "box": {
                    "bgmode": 1,
                    "border": 1,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-55",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "vs_feedback.maxpat",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "jit_gl_texture" ],
                    "patching_rect": [ 356.0, 319.0, 46.0, 51.0 ],
                    "varname": "vs_feedback",
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "id": "obj-47",
                    "maxclass": "number",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 307.0, 89.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-48",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 257.0, 88.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-49",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 257.0, 126.0, 69.0, 22.0 ],
                    "text": "metro 4000"
                }
            },
            {
                "box": {
                    "id": "obj-46",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 226.0, 14.0, 120.0, 22.0 ],
                    "text": "is the moon the sun?"
                }
            },
            {
                "box": {
                    "id": "obj-45",
                    "maxclass": "number",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 749.0, 233.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-43",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 703.0, 465.0, 55.0, 22.0 ],
                    "text": "route set"
                }
            },
            {
                "box": {
                    "id": "obj-42",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 704.0, 348.0, 50.0, 22.0 ],
                    "text": "line $1"
                }
            },
            {
                "box": {
                    "id": "obj-41",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 709.0, 233.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-39",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 704.0, 270.0, 69.0, 22.0 ],
                    "text": "metro 4000"
                }
            },
            {
                "box": {
                    "id": "obj-38",
                    "maxclass": "newobj",
                    "numinlets": 5,
                    "numoutlets": 4,
                    "outlettype": [ "int", "", "", "int" ],
                    "patching_rect": [ 704.0, 319.0, 124.0, 22.0 ],
                    "text": "counter 1 32"
                }
            },
            {
                "box": {
                    "id": "obj-37",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "bang", "int" ],
                    "patching_rect": [ 704.0, 425.0, 62.0, 22.0 ],
                    "text": "text rainer"
                }
            },
            {
                "box": {
                    "id": "obj-36",
                    "maxclass": "number",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 626.0, 27.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-34",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 626.0, 59.0, 62.0, 22.0 ],
                    "text": "phrase $1"
                }
            },
            {
                "box": {
                    "id": "obj-30",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 562.0, 337.0, 55.0, 22.0 ],
                    "text": "route set"
                }
            },
            {
                "box": {
                    "id": "obj-26",
                    "maxclass": "number",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 562.0, 234.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-24",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "bang", "int" ],
                    "patching_rect": [ 562.0, 301.0, 40.0, 22.0 ],
                    "text": "text"
                }
            },
            {
                "box": {
                    "id": "obj-23",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 538.0, 14.0, 35.0, 22.0 ],
                    "text": "mark"
                }
            },
            {
                "box": {
                    "id": "obj-21",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 479.0, 14.0, 34.0, 22.0 ],
                    "text": "hello"
                }
            },
            {
                "box": {
                    "id": "obj-18",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 479.0, 54.0, 75.0, 22.0 ],
                    "text": "prepend text"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.235, 0.235, 0.235, 1.0 ],
                    "id": "obj-16",
                    "linecount": 12,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1177.0, 16.5, 153.0, 167.0 ],
                    "saved_attribute_attributes": {
                        "bgcolor": {
                            "expression": "themecolor.live_control_text_bg"
                        },
                        "textcolor": {
                            "expression": "themecolor.live_control_fg"
                        }
                    },
                    "text": "External Control Messages\n\nalign [0-2]\nfont_size [0-15]\nfontsize [whichever value]\nspread [0. - x.]\nmode [boolean]\ntype_mode [0-2]\nscroll_speed [0.-1.]\ntyper_speed [10-250]\nscale[0-5]\nfont [\"name of the font\"]",
                    "textjustification": 2
                }
            },
            {
                "box": {
                    "bgmode": 1,
                    "border": 1,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-11",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "vector_modules.maxpat",
                    "numinlets": 0,
                    "numoutlets": 0,
                    "offset": [ 0.0, 0.0 ],
                    "patching_rect": [ 10.0, 582.0, 80.0, 197.0 ],
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "bgmode": 1,
                    "border": 1,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-3",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "vs_displacement.maxpat",
                    "numinlets": 5,
                    "numoutlets": 1,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "jit_gl_texture" ],
                    "patching_rect": [ 356.0, 387.0, 162.0, 119.0 ],
                    "varname": "vs_displacement[1]",
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "bgmode": 1,
                    "border": 1,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-2",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "vs_render.maxpat",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "" ],
                    "patching_rect": [ 10.0, 99.0, 96.85526317358028, 146.5 ],
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "bgmode": 1,
                    "border": 1,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-1",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "vs_modules.maxpat",
                    "numinlets": 0,
                    "numoutlets": 0,
                    "offset": [ 0.0, 0.0 ],
                    "patching_rect": [ 10.0, 262.0, 79.0, 316.0 ],
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "bgmode": 1,
                    "border": 1,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-6",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "vsc_presets.maxpat",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "" ],
                    "patching_rect": [ 818.0, 69.0, 172.0, 147.0 ],
                    "varname": "vs_presets",
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "bgmode": 1,
                    "border": 1,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-15",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "vs_colorizer.maxpat",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "jit_gl_texture", "" ],
                    "patching_rect": [ 356.0, 228.0, 121.06883773913043, 72.5 ],
                    "varname": "vs_colorizer",
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "hidden": 1,
                    "id": "obj-20",
                    "linecount": 2,
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 818.0, 14.0, 193.0, 35.0 ],
                    "text": "name titlegen_example, read titlegen_example.json, 1"
                }
            },
            {
                "box": {
                    "autorestore": "Vsynth.json",
                    "hidden": 1,
                    "id": "obj-10",
                    "linecount": 2,
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 818.0, 220.0, 138.0, 35.0 ],
                    "priority": {
                        "vs_colorizer::clrizer_hue": 1,
                        "vs_displacement[1]::displacement_gui::displacement_anglemenu": -1,
                        "vs_displacement[1]::displacement_gui::displacement_x_range": -1,
                        "vs_displacement[1]::displacement_gui::displacement_y_range": -1,
                        "vs_displacement[1]::displacement_gui::displacement_scale_xm": -1,
                        "vs_displacement[1]::displacement_gui::displacement_scale_ym": -1,
                        "vs_displacement[1]::displacement_gui::displacement_angle_range": -1,
                        "vector_grid_generator::binv": -1,
                        "vs_wfg_polarizer::pm_range": -1,
                        "vs_wfg_polarizer::lock_freq": -1,
                        "vector_grid_generator[1]::b_inv": -1,
                        "vs_wfg_polarizer[1]::pm_range": -1,
                        "vs_wfg_polarizer[1]::lock_freq": -1,
                        "vector_grid_generator[2]::b_inv": -1,
                        "vs_wfg_2::wfg2_fm_range": -1,
                        "vs_wfg_2::wfg2_freq_range": -1,
                        "vs_wfg_2::wfg2_pm_range": -1
                    },
                    "saved_object_attributes": {
                        "client_rect": [ 0, 100, 437, 1034 ],
                        "parameter_enable": 0,
                        "parameter_mappable": 0,
                        "storage_rect": [ 0, 100, 1056, 848 ]
                    },
                    "text": "pattrstorage @greedy 1 @changemode 1",
                    "varname": "Vsynth"
                }
            },
            {
                "box": {
                    "bgmode": 1,
                    "border": 1,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-7",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "vs_output.maxpat",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "offset": [ 0.0, 0.0 ],
                    "patching_rect": [ 304.0, 843.0, 159.0, 23.0 ],
                    "varname": "vs_output",
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "bgmode": 1,
                    "border": 1,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-8",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "vs_title_generator.maxpat",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "jit_gl_texture" ],
                    "patching_rect": [ 356.0, 95.0, 353.0, 121.0 ],
                    "varname": "vs_title_generator",
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "bgmode": 1,
                    "border": 1,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-13",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "vs_luma_key.maxpat",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "jit_gl_texture" ],
                    "patching_rect": [ 1032.0, 208.5, 139.0, 71.0 ],
                    "varname": "vs_luma_key",
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "id": "obj-29",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 562.0, 270.0, 50.0, 22.0 ],
                    "text": "line $1"
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "obj-117", 0 ],
                    "source": [ "obj-106", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-74", 2 ],
                    "source": [ "obj-111", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-74", 1 ],
                    "source": [ "obj-111", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-117", 1 ],
                    "source": [ "obj-116", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-84", 1 ],
                    "source": [ "obj-117", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-8", 0 ],
                    "source": [ "obj-12", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-38", 3 ],
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
                    "destination": [ "obj-95", 0 ],
                    "source": [ "obj-124", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-99", 0 ],
                    "source": [ "obj-126", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-123", 0 ],
                    "source": [ "obj-128", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-38", 3 ],
                    "source": [ "obj-130", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-18", 0 ],
                    "source": [ "obj-14", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-55", 0 ],
                    "source": [ "obj-15", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-12", 0 ],
                    "source": [ "obj-17", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-8", 0 ],
                    "source": [ "obj-18", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-6", 0 ],
                    "hidden": 1,
                    "source": [ "obj-20", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-18", 0 ],
                    "source": [ "obj-21", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-38", 4 ],
                    "source": [ "obj-22", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-18", 0 ],
                    "source": [ "obj-23", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-30", 0 ],
                    "source": [ "obj-24", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-29", 0 ],
                    "source": [ "obj-26", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-24", 0 ],
                    "source": [ "obj-29", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-84", 0 ],
                    "source": [ "obj-3", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-18", 0 ],
                    "source": [ "obj-30", 0 ]
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
                    "destination": [ "obj-116", 0 ],
                    "order": 1,
                    "source": [ "obj-33", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-128", 0 ],
                    "order": 0,
                    "source": [ "obj-33", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-8", 0 ],
                    "source": [ "obj-34", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-34", 0 ],
                    "source": [ "obj-36", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-43", 0 ],
                    "source": [ "obj-37", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-42", 0 ],
                    "source": [ "obj-38", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-38", 0 ],
                    "source": [ "obj-39", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-39", 0 ],
                    "source": [ "obj-41", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-92", 1 ],
                    "source": [ "obj-42", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-18", 0 ],
                    "source": [ "obj-43", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-39", 1 ],
                    "source": [ "obj-45", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-18", 0 ],
                    "source": [ "obj-46", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-49", 1 ],
                    "source": [ "obj-47", 0 ]
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
                    "destination": [ "obj-46", 0 ],
                    "source": [ "obj-49", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-3", 0 ],
                    "source": [ "obj-55", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-10", 0 ],
                    "hidden": 1,
                    "source": [ "obj-6", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-2", 0 ],
                    "source": [ "obj-76", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-15", 0 ],
                    "source": [ "obj-8", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-18", 0 ],
                    "source": [ "obj-81", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-7", 0 ],
                    "order": 1,
                    "source": [ "obj-84", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-74", 0 ],
                    "order": 0,
                    "source": [ "obj-84", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-74", 2 ],
                    "source": [ "obj-86", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-74", 1 ],
                    "source": [ "obj-86", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-2", 0 ],
                    "source": [ "obj-9", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-43", 0 ],
                    "source": [ "obj-91", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-37", 0 ],
                    "source": [ "obj-92", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-91", 0 ],
                    "source": [ "obj-92", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-111", 0 ],
                    "source": [ "obj-95", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-38", 3 ],
                    "order": 0,
                    "source": [ "obj-97", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-41", 0 ],
                    "order": 1,
                    "source": [ "obj-97", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-86", 0 ],
                    "order": 2,
                    "source": [ "obj-97", 0 ]
                }
            }
        ],
        "parameters": {
            "obj-116::obj-44": [ "live.numbox[8]", "live.numbox", 0 ],
            "obj-117::obj-1": [ "bm_master[1]", "Master", 0 ],
            "obj-117::obj-26": [ "live.arrows[1]", "live.arrows", 0 ],
            "obj-117::obj-27": [ "bm_mode[1]", "live.menu", 0 ],
            "obj-117::obj-94": [ "bm_ch1[1]", "In 1", 0 ],
            "obj-117::obj-98": [ "bm_ch2[1]", "In 2", 0 ],
            "obj-11::obj-14": [ "live.menu[19]", "live.menu", 0 ],
            "obj-11::obj-2": [ "live.menu[38]", "live.menu", 0 ],
            "obj-11::obj-24": [ "live.menu[39]", "live.menu", 0 ],
            "obj-11::obj-25": [ "live.menu[47]", "live.menu", 0 ],
            "obj-11::obj-26": [ "live.menu[48]", "live.menu", 0 ],
            "obj-11::obj-27": [ "live.menu[40]", "live.menu", 0 ],
            "obj-11::obj-36": [ "live.menu[35]", "live.menu", 0 ],
            "obj-11::obj-52": [ "live.menu[34]", "live.menu", 0 ],
            "obj-11::obj-53": [ "live.menu[49]", "live.menu", 0 ],
            "obj-11::obj-56": [ "live.menu[44]", "live.menu", 0 ],
            "obj-123::obj-13": [ "View", "View", 0 ],
            "obj-123::obj-154": [ "Abl.Doubler", "Abl.Doubler", 0 ],
            "obj-123::obj-167": [ "ModOutB", "ModOutB", -1 ],
            "obj-123::obj-45": [ "ModInALed", "ModInALed", 0 ],
            "obj-123::obj-47": [ "ModInBLed", "ModInBLed", 0 ],
            "obj-123::obj-49": [ "ModInA", "ModInA", -1 ],
            "obj-123::obj-50": [ "ModInB", "ModInB", -1 ],
            "obj-123::obj-52": [ "ModOutA", "ModOutA", -1 ],
            "obj-123::obj-59": [ "ModOutALed", "ModOutALed", 0 ],
            "obj-123::obj-60": [ "ModOutBLed", "ModOutBLed", 0 ],
            "obj-123::obj-83::obj-19": [ "Time", "Time", 0 ],
            "obj-123::obj-83::obj-6": [ "Warmth", "Warm", 0 ],
            "obj-123::obj-83::obj-8": [ "BassFreq", "BassF", 0 ],
            "obj-123::obj-83::obj-9": [ "Mix", "Mix", 0 ],
            "obj-123::obj-90::obj-112": [ "LFOInvert", "Invert", 0 ],
            "obj-123::obj-90::obj-116": [ "LFOWaveform", "Wave", 0 ],
            "obj-123::obj-90::obj-17": [ "LFODuty", "Duty", 0 ],
            "obj-123::obj-90::obj-3": [ "LFOPhaseMode", "Mode", 0 ],
            "obj-123::obj-90::obj-39": [ "LFOWaveDisplay", "Display", 0 ],
            "obj-123::obj-90::obj-51": [ "LFOPhase", "Phase", 0 ],
            "obj-123::obj-90::obj-53": [ "LFO2Freq", "Freq2", 0 ],
            "obj-123::obj-90::obj-54": [ "LFO2", "LFO2", 0 ],
            "obj-123::obj-90::obj-55": [ "LFOSpin", "Spin", 0 ],
            "obj-123::obj-90::obj-6": [ "LFOFreq", "Freq", 0 ],
            "obj-123::obj-90::obj-8": [ "LFOMod", "Mod", 0 ],
            "obj-123::obj-90::obj-9": [ "LFOFeedback", "Feed", 0 ],
            "obj-123::obj-92::obj-112": [ "EnvOnOff", "OnOff", 0 ],
            "obj-123::obj-92::obj-6": [ "EnvAmount", "Amount", 0 ],
            "obj-123::obj-92::obj-8": [ "EnvAttack", "Attack", 0 ],
            "obj-123::obj-92::obj-9": [ "EnvRelease", "Release", 0 ],
            "obj-123::obj-99": [ "Active[1]", "Active", 0 ],
            "obj-124::obj-13": [ "View[1]", "View", 0 ],
            "obj-124::obj-154": [ "Abl.AutoFilter", "Abl.AutoFilter", 0 ],
            "obj-124::obj-167": [ "ModOutB[1]", "ModOutB", -1 ],
            "obj-124::obj-45": [ "ModInALed[1]", "ModInALed", 0 ],
            "obj-124::obj-47": [ "ModInBLed[1]", "ModInBLed", 0 ],
            "obj-124::obj-49": [ "ModInA[1]", "ModInA", -1 ],
            "obj-124::obj-50": [ "ModInB[1]", "ModInB", -1 ],
            "obj-124::obj-52": [ "ModOutA[1]", "ModOutA", -1 ],
            "obj-124::obj-59": [ "ModOutALed[1]", "ModOutALed", 0 ],
            "obj-124::obj-60": [ "ModOutBLed[1]", "ModOutBLed", 0 ],
            "obj-124::obj-83::obj-116": [ "Type", "Type", 0 ],
            "obj-124::obj-83::obj-124": [ "Gain[1]", "Gain", 0 ],
            "obj-124::obj-83::obj-190": [ "Drive", "Drive", 0 ],
            "obj-124::obj-83::obj-195": [ "Softclip", "Softclip", 0 ],
            "obj-124::obj-83::obj-196": [ "Mix[1]", "Mix", 0 ],
            "obj-124::obj-83::obj-204": [ "Oversample", "Oversample", 0 ],
            "obj-124::obj-83::obj-210": [ "Env", "Env", 0 ],
            "obj-124::obj-83::obj-214": [ "Att", "Att", 0 ],
            "obj-124::obj-83::obj-216": [ "Rel", "Rel", 0 ],
            "obj-124::obj-83::obj-218": [ "Hold", "Hold", 0 ],
            "obj-124::obj-83::obj-34": [ "Freq", "Freq", 0 ],
            "obj-124::obj-83::obj-54": [ "Circuit", "Circuit", 0 ],
            "obj-124::obj-83::obj-65": [ "Pitch", "Pitch", 0 ],
            "obj-124::obj-83::obj-78": [ "Morph", "Morph", 0 ],
            "obj-124::obj-83::obj-81": [ "Slope", "Slope", 0 ],
            "obj-124::obj-83::obj-82": [ "MorphSlope", "Slope", 0 ],
            "obj-124::obj-83::obj-83": [ "Ctrl", "Ctrl", 0 ],
            "obj-124::obj-83::obj-86": [ "Res", "Res", 0 ],
            "obj-124::obj-83::obj-87": [ "Form", "Form", 0 ],
            "obj-124::obj-90::obj-250": [ "LFOAmount", "LFO", 0 ],
            "obj-124::obj-90::obj-254": [ "LFORate", "Rate", 0 ],
            "obj-124::obj-90::obj-255": [ "LFOWave", "Wave", 0 ],
            "obj-124::obj-90::obj-259": [ "LFOMorph", "Morph", 0 ],
            "obj-124::obj-90::obj-263": [ "LFOPhase[1]", "Phase", 0 ],
            "obj-124::obj-90::obj-269": [ "LFOOffset", "Offset", 0 ],
            "obj-124::obj-90::obj-273": [ "LFOSmooth", "Smooth", 0 ],
            "obj-124::obj-90::obj-280": [ "LFOQuantize", "Quantize", 0 ],
            "obj-124::obj-90::obj-292": [ "LFOSteps", "Steps", 0 ],
            "obj-124::obj-90::obj-3": [ "LFOMode", "Mode", 0 ],
            "obj-124::obj-90::obj-55": [ "LFOSpin[1]", "Spin", 0 ],
            "obj-124::obj-92::obj-309": [ "SCIntern", "Intern", 0 ],
            "obj-124::obj-92::obj-310": [ "SCExternal", "External", 0 ],
            "obj-124::obj-92::obj-311": [ "SCMono", "Mono", 0 ],
            "obj-124::obj-92::obj-318": [ "SCSolo", "Solo", 0 ],
            "obj-124::obj-92::obj-323": [ "SCExtern", "Extern", 0 ],
            "obj-124::obj-92::obj-325": [ "SCFreq", "Freq", 0 ],
            "obj-124::obj-92::obj-327": [ "SCEQ", "EQ", 0 ],
            "obj-124::obj-92::obj-329": [ "SCRes", "Res", 0 ],
            "obj-124::obj-92::obj-330": [ "SCType", "Type", 0 ],
            "obj-124::obj-99": [ "Active[2]", "Active", 0 ],
            "obj-128::obj-24": [ "bm[3]", "bm", 0 ],
            "obj-128::obj-25": [ "ym[2]", "ym", 0 ],
            "obj-128::obj-26": [ "xm[2]", "xm", 0 ],
            "obj-128::obj-27": [ "dir[1]", "dir", 0 ],
            "obj-128::obj-28": [ "lines[1]", "lines", 0 ],
            "obj-128::obj-29": [ "hSpeed[1]", "hSpeed", 0 ],
            "obj-128::obj-30": [ "refresh[2]", "refresh", 0 ],
            "obj-128::obj-33": [ "vSpeed[1]", "vSpeed", 0 ],
            "obj-128::obj-35": [ "b[1]", "b", 0 ],
            "obj-13::obj-20": [ "luma_invert", "live.text", 0 ],
            "obj-13::obj-21": [ "luma_smth", "Smooth", 0 ],
            "obj-13::obj-3": [ "luma_thrshld", "Threshold", 0 ],
            "obj-15::obj-31": [ "asdfasdfa", "Hue", 0 ],
            "obj-15::obj-60": [ "clrizer_color", "color", 0 ],
            "obj-1::obj-14": [ "live.menu[1]", "live.menu", 0 ],
            "obj-1::obj-16": [ "live.menu[2]", "live.menu", 0 ],
            "obj-1::obj-18": [ "live.menu[5]", "live.menu", 0 ],
            "obj-1::obj-2": [ "live.menu", "live.menu", 0 ],
            "obj-1::obj-22": [ "live.menu[17]", "live.menu", 0 ],
            "obj-1::obj-24": [ "live.menu[9]", "live.menu", 0 ],
            "obj-1::obj-25": [ "live.menu[15]", "live.menu", 0 ],
            "obj-1::obj-26": [ "live.menu[11]", "live.menu", 0 ],
            "obj-1::obj-27": [ "live.menu[12]", "live.menu", 0 ],
            "obj-1::obj-29": [ "live.menu[13]", "live.menu", 0 ],
            "obj-1::obj-30": [ "live.menu[14]", "live.menu", 0 ],
            "obj-1::obj-33": [ "live.menu[18]", "live.menu", 0 ],
            "obj-1::obj-36": [ "live.menu[3]", "live.menu", 0 ],
            "obj-1::obj-52": [ "live.menu[4]", "live.menu", 0 ],
            "obj-1::obj-53": [ "live.menu[10]", "live.menu", 0 ],
            "obj-1::obj-56": [ "live.menu[6]", "live.menu", 0 ],
            "obj-25::obj-10": [ "wfg2_pm", "PM", 0 ],
            "obj-25::obj-13": [ "live.toggle", "live.toggle", 0 ],
            "obj-25::obj-130": [ "wfg2_time", "Time", 0 ],
            "obj-25::obj-139": [ "wfg2_sync_lock[1]", "wfg2_sync_lock", 0 ],
            "obj-25::obj-23": [ "wfg2_pwm", "PWM", 0 ],
            "obj-25::obj-24": [ "wfg2_pw", "PW", 0 ],
            "obj-25::obj-25": [ "wfg2_fm", "FM", 0 ],
            "obj-25::obj-26": [ "wfg2_freq", "Freq", 0 ],
            "obj-25::obj-27": [ "wfg2_wf[1]", "wfg2_wf", 0 ],
            "obj-25::obj-28": [ "live.toggle[2]", "live.toggle[1]", 0 ],
            "obj-25::obj-6": [ "live.toggle[1]", "live.toggle[1]", 0 ],
            "obj-25::obj-63": [ "wfg2_phase", "Phase", 0 ],
            "obj-25::obj-72": [ "wfg2_phase_time_switch", "wfg2_phase_time_switch", 0 ],
            "obj-25::obj-73": [ "wfg2_time_range", "wfg2_time_range", 0 ],
            "obj-2::obj-19": [ "dim_x[2]", "dim_x", 0 ],
            "obj-2::obj-23": [ "pwm[1]", "pwm", 0 ],
            "obj-2::obj-36": [ "live.text[11]", "live.text", 0 ],
            "obj-2::obj-40": [ "live.text[6]", "live.text", 0 ],
            "obj-2::obj-41": [ "dim_y[2]", "dim_y", 0 ],
            "obj-2::obj-42": [ "dim_x[3]", "dim_x", 0 ],
            "obj-2::obj-45": [ "live.text[10]", "live.text", 0 ],
            "obj-2::obj-48": [ "live.text[7]", "live.text", 0 ],
            "obj-2::obj-5": [ "live.text[9]", "live.text", 0 ],
            "obj-2::obj-6": [ "live.text[8]", "live.text", 0 ],
            "obj-31::obj-10": [ "bias[1]", "Bias", 0 ],
            "obj-31::obj-14": [ "bm[4]", "BM", 0 ],
            "obj-31::obj-17": [ "live.menu[23]", "live.menu", 0 ],
            "obj-31::obj-22": [ "live.text[14]", "live.text", 0 ],
            "obj-31::obj-29": [ "freq[1]", "Freq", 0 ],
            "obj-31::obj-30": [ "angle[2]", "Angle", 0 ],
            "obj-31::obj-42": [ "live.toggle[3]", "live.toggle", 0 ],
            "obj-31::obj-47": [ "polarizer[1]", "Morph", 0 ],
            "obj-31::obj-51": [ "live.menu[22]", "live.menu", 0 ],
            "obj-31::obj-53": [ "speed[2]", "Speed", 0 ],
            "obj-31::obj-54": [ "morph[1]", "Morph", 0 ],
            "obj-31::obj-6": [ "pm[1]", "PM", 0 ],
            "obj-31::obj-65": [ "shape[1]", "Shape", 0 ],
            "obj-31::obj-71": [ "phase[2]", "Phase", 0 ],
            "obj-31::obj-72": [ "phase_time_switch[1]", "phase_time_switch", 0 ],
            "obj-33::obj-24": [ "bm[2]", "bm", 0 ],
            "obj-33::obj-25": [ "ym[3]", "ym", 0 ],
            "obj-33::obj-26": [ "xm[3]", "xm", 0 ],
            "obj-33::obj-27": [ "dir", "dir", 0 ],
            "obj-33::obj-28": [ "lines", "lines", 0 ],
            "obj-33::obj-29": [ "hSpeed", "hSpeed", 0 ],
            "obj-33::obj-30": [ "refresh[3]", "refresh", 0 ],
            "obj-33::obj-33": [ "vSpeed", "vSpeed", 0 ],
            "obj-33::obj-35": [ "b", "b", 0 ],
            "obj-3::obj-22::obj-19": [ "displacement_angle[1]", "Angle", 0 ],
            "obj-3::obj-22::obj-29": [ "live.numbox[6]", "live.numbox", 0 ],
            "obj-3::obj-22::obj-35": [ "displacement_zoom[1]", "Zoom", 0 ],
            "obj-3::obj-22::obj-4": [ "disp_ang_range[1]", "angle", 0 ],
            "obj-3::obj-22::obj-40": [ "displacement_y_m[1]", "YM", 0 ],
            "obj-3::obj-22::obj-42": [ "displacement_x_m[1]", "XM", 0 ],
            "obj-3::obj-22::obj-44": [ "displacement_zoom_m[1]", "ZM", 0 ],
            "obj-3::obj-22::obj-47": [ "displacement_angle_m[1]", "AGLM", 0 ],
            "obj-3::obj-22::obj-52": [ "MENU[1]", "angle", 0 ],
            "obj-3::obj-22::obj-55": [ "MENU[2]", "angle", 0 ],
            "obj-3::obj-22::obj-56": [ "MENU[7]", "angle", 0 ],
            "obj-3::obj-22::obj-57": [ "MENU[8]", "angle", 0 ],
            "obj-3::obj-22::obj-6": [ "offrot_x[1]", "X", 0 ],
            "obj-3::obj-22::obj-67": [ "menu[1]", "angle", 0 ],
            "obj-3::obj-22::obj-8": [ "displacement_y[1]", "Y", 0 ],
            "obj-3::obj-33": [ "displacement_init_point[1]", "live.text", 2 ],
            "obj-3::obj-49": [ "a_lock", "a_lock", 0 ],
            "obj-3::obj-8": [ "displacement_polar[1]", "live.text", 2 ],
            "obj-3::obj-96": [ "displacement_boundmode[1]", "live.menu", 0 ],
            "obj-55::obj-4": [ "fdbck_amount", "amount", 0 ],
            "obj-6::obj-10": [ "textedit", "vs_preset_name", 0 ],
            "obj-6::obj-11": [ "live.text", "live.text", 0 ],
            "obj-6::obj-15": [ "live.tab", "live.tab", 0 ],
            "obj-6::obj-32": [ "live.numbox[5]", "live.numbox", 0 ],
            "obj-6::obj-44": [ "live.tab[3]", "live.tab", 0 ],
            "obj-6::obj-45::obj-16": [ "live.menu[16]", "live.menu[16]", 0 ],
            "obj-6::obj-45::obj-17": [ "live.button", "live.button", 0 ],
            "obj-6::obj-45::obj-19": [ "live.numbox[2]", "live.numbox[1]", 0 ],
            "obj-6::obj-45::obj-32": [ "live.numbox[4]", "live.numbox", 0 ],
            "obj-6::obj-45::obj-9": [ "live.numbox[3]", "live.numbox", 0 ],
            "obj-74::obj-12": [ "live.text[13]", "live.text", 0 ],
            "obj-74::obj-15": [ "live.menu[20]", "live.menu", 0 ],
            "obj-74::obj-19": [ "live.numbox", "live.numbox", 0 ],
            "obj-7::obj-1": [ "toggle[1]", "toggle[1]", 0 ],
            "obj-7::obj-10": [ "toggle[3]", "toggle[2]", 0 ],
            "obj-7::obj-36": [ "uppr_x", "uppr_x", 0 ],
            "obj-84::obj-1": [ "bm_master", "Master", 0 ],
            "obj-84::obj-26": [ "live.arrows", "live.arrows", 0 ],
            "obj-84::obj-27": [ "bm_mode", "live.menu", 0 ],
            "obj-84::obj-94": [ "bm_ch1", "In 1", 0 ],
            "obj-84::obj-98": [ "bm_ch2", "In 2", 0 ],
            "obj-86::obj-112::obj-119": [ "Speed high", "Speed high", 0 ],
            "obj-86::obj-112::obj-120": [ "Rate range", "Rate range", 0 ],
            "obj-86::obj-112::obj-121": [ "Speed low", "Speed low", 0 ],
            "obj-86::obj-112::obj-16": [ "Playback range", "Playback range", 0 ],
            "obj-86::obj-112::obj-40": [ "Playback controls", "Playback controls", 0 ],
            "obj-86::obj-112::obj-79": [ "Playback position", "Playback position", 0 ],
            "obj-86::obj-112::obj-89": [ "Reset range", "Reset range", 0 ],
            "obj-86::obj-112::obj-92": [ "Reset speed", "Reset speed", 0 ],
            "obj-86::obj-16": [ "pictctrl[1]", "pictctrl[1]", 0 ],
            "obj-86::obj-20": [ "pictctrl[2]", "pictctrl[1]", 0 ],
            "obj-86::obj-28": [ "pictctrl[279]", "pictctrl[1]", 0 ],
            "obj-86::obj-40": [ "pictctrl[283]", "pictctrl[1]", 0 ],
            "obj-86::obj-51": [ "moviepath", "moviepath", 0 ],
            "obj-86::obj-60": [ "pictctrl[282]", "pictctrl[1]", 0 ],
            "obj-86::obj-64": [ "pictctrl[284]", "pictctrl[1]", 0 ],
            "obj-86::obj-81": [ "pictctrl[281]", "pictctrl[1]", 0 ],
            "obj-86::obj-83": [ "pictctrl[280]", "pictctrl[1]", 0 ],
            "obj-86::obj-89": [ "moviename", "moviename", 0 ],
            "obj-8::obj-12": [ "title_pos_x[1]", "live.numbox[5]", 0 ],
            "obj-8::obj-26": [ "title_scale", "number", 0 ],
            "obj-8::obj-3": [ "title_textbox", "title_textbox", 0 ],
            "obj-8::obj-35": [ "title_align", "live.menu[1]", 0 ],
            "obj-8::obj-40": [ "title_font", "live.menu", 0 ],
            "obj-8::obj-54": [ "title_mode", "live.text[5]", 0 ],
            "obj-8::obj-56": [ "title_pos_y", "live.numbox[4]", 0 ],
            "obj-8::obj-57": [ "title_pos_x", "live.numbox[5]", 0 ],
            "obj-8::obj-64": [ "title_mode_speed", "Speed", 0 ],
            "obj-8::obj-79": [ "title_fontsize", "live.menu[19]", 0 ],
            "obj-8::obj-83": [ "title_typer_speed", "Speed", 0 ],
            "obj-8::obj-91": [ "title_type_mode", "live.tab", 0 ],
            "obj-95::obj-154": [ "Abl.Output", "Abl.Output", 0 ],
            "obj-95::obj-17": [ "Dac", "Dac", 0 ],
            "obj-95::obj-44": [ "Limiter", "Limiter", 0 ],
            "obj-95::obj-49": [ "ModIn", "ModIn", -1 ],
            "obj-95::obj-60": [ "ModOutLed", "ModOutLed", 0 ],
            "obj-95::obj-69": [ "ModOut", "ModOut", -1 ],
            "obj-95::obj-71": [ "ModInLed", "ModInLed", 0 ],
            "obj-95::obj-8": [ "Gain", "Gain", 0 ],
            "obj-95::obj-99": [ "Active", "Active", 0 ],
            "obj-99::obj-11": [ "asym", "asym", 0 ],
            "obj-99::obj-40": [ "b_inv", "b_inv", 0 ],
            "obj-99::obj-45": [ "phase[1]", "phase", 0 ],
            "obj-99::obj-55": [ "bm", "bm", 0 ],
            "obj-99::obj-56": [ "angle[1]", "angle", 0 ],
            "obj-99::obj-57": [ "cycles", "cycles", 0 ],
            "obj-99::obj-58": [ "xm", "xm", 0 ],
            "obj-99::obj-60": [ "vertex", "vertex", 0 ],
            "obj-99::obj-63": [ "speed[1]", "speed", 0 ],
            "obj-99::obj-66": [ "refresh", "refresh", 0 ],
            "obj-99::obj-67": [ "smooth", "smooth", 0 ],
            "obj-99::obj-75": [ "ym", "ym", 0 ],
            "parameterbanks": {
                "0": {
                    "index": 0,
                    "name": "",
                    "parameters": [ "-", "-", "-", "-", "-", "-", "-", "-" ],
                    "buttons": [ "-", "-", "-", "-", "-", "-", "-", "-" ]
                }
            },
            "parameter_overrides": {
                "obj-116::obj-44": {
                    "parameter_longname": "live.numbox[8]"
                },
                "obj-117::obj-1": {
                    "parameter_longname": "bm_master[1]"
                },
                "obj-117::obj-27": {
                    "parameter_longname": "bm_mode[1]"
                },
                "obj-117::obj-94": {
                    "parameter_longname": "bm_ch1[1]"
                },
                "obj-117::obj-98": {
                    "parameter_longname": "bm_ch2[1]"
                },
                "obj-11::obj-14": {
                    "parameter_longname": "live.menu[19]"
                },
                "obj-123::obj-99": {
                    "parameter_longname": "Active[1]"
                },
                "obj-124::obj-45": {
                    "parameter_longname": "ModInALed[1]"
                },
                "obj-124::obj-47": {
                    "parameter_longname": "ModInBLed[1]"
                },
                "obj-124::obj-59": {
                    "parameter_longname": "ModOutALed[1]"
                },
                "obj-124::obj-60": {
                    "parameter_longname": "ModOutBLed[1]"
                },
                "obj-124::obj-83::obj-124": {
                    "parameter_longname": "Gain[1]"
                },
                "obj-124::obj-83::obj-196": {
                    "parameter_longname": "Mix[1]"
                },
                "obj-124::obj-90::obj-263": {
                    "parameter_longname": "LFOPhase[1]"
                },
                "obj-124::obj-90::obj-55": {
                    "parameter_longname": "LFOSpin[1]"
                },
                "obj-124::obj-99": {
                    "parameter_longname": "Active[2]"
                },
                "obj-128::obj-24": {
                    "parameter_longname": "bm[3]"
                },
                "obj-128::obj-25": {
                    "parameter_longname": "ym[2]"
                },
                "obj-128::obj-26": {
                    "parameter_longname": "xm[2]"
                },
                "obj-128::obj-27": {
                    "parameter_longname": "dir[1]"
                },
                "obj-128::obj-28": {
                    "parameter_longname": "lines[1]"
                },
                "obj-128::obj-29": {
                    "parameter_longname": "hSpeed[1]"
                },
                "obj-128::obj-30": {
                    "parameter_longname": "refresh[2]"
                },
                "obj-128::obj-33": {
                    "parameter_longname": "vSpeed[1]"
                },
                "obj-128::obj-35": {
                    "parameter_longname": "b[1]"
                },
                "obj-1::obj-14": {
                    "parameter_longname": "live.menu[1]"
                },
                "obj-1::obj-16": {
                    "parameter_longname": "live.menu[2]"
                },
                "obj-1::obj-18": {
                    "parameter_longname": "live.menu[5]"
                },
                "obj-1::obj-22": {
                    "parameter_longname": "live.menu[17]"
                },
                "obj-1::obj-25": {
                    "parameter_longname": "live.menu[15]"
                },
                "obj-1::obj-33": {
                    "parameter_longname": "live.menu[18]"
                },
                "obj-1::obj-53": {
                    "parameter_longname": "live.menu[10]"
                },
                "obj-25::obj-10": {
                    "parameter_range": [ -1.0, 1.0 ]
                },
                "obj-25::obj-25": {
                    "parameter_range": [ -1.0, 1.0 ]
                },
                "obj-25::obj-26": {
                    "parameter_range": [ 0.0, 1020.0 ]
                },
                "obj-31::obj-10": {
                    "parameter_longname": "bias[1]"
                },
                "obj-31::obj-14": {
                    "parameter_longname": "bm[4]"
                },
                "obj-31::obj-17": {
                    "parameter_longname": "live.menu[23]"
                },
                "obj-31::obj-22": {
                    "parameter_longname": "live.text[14]"
                },
                "obj-31::obj-29": {
                    "parameter_longname": "freq[1]"
                },
                "obj-31::obj-30": {
                    "parameter_longname": "angle[2]"
                },
                "obj-31::obj-42": {
                    "parameter_longname": "live.toggle[3]"
                },
                "obj-31::obj-47": {
                    "parameter_longname": "polarizer[1]"
                },
                "obj-31::obj-51": {
                    "parameter_longname": "live.menu[22]"
                },
                "obj-31::obj-53": {
                    "parameter_longname": "speed[2]"
                },
                "obj-31::obj-54": {
                    "parameter_longname": "morph[1]"
                },
                "obj-31::obj-6": {
                    "parameter_longname": "pm[1]",
                    "parameter_range": [ -1.0, 1.0 ]
                },
                "obj-31::obj-65": {
                    "parameter_longname": "shape[1]"
                },
                "obj-31::obj-71": {
                    "parameter_longname": "phase[2]"
                },
                "obj-31::obj-72": {
                    "parameter_longname": "phase_time_switch[1]"
                },
                "obj-33::obj-24": {
                    "parameter_longname": "bm[2]"
                },
                "obj-33::obj-25": {
                    "parameter_longname": "ym[3]"
                },
                "obj-33::obj-26": {
                    "parameter_longname": "xm[3]"
                },
                "obj-33::obj-30": {
                    "parameter_longname": "refresh[3]"
                },
                "obj-3::obj-22::obj-19": {
                    "parameter_longname": "displacement_angle[1]",
                    "parameter_range": [ -360.0, 360.0 ]
                },
                "obj-3::obj-22::obj-29": {
                    "parameter_longname": "live.numbox[6]"
                },
                "obj-3::obj-22::obj-35": {
                    "parameter_longname": "displacement_zoom[1]"
                },
                "obj-3::obj-22::obj-4": {
                    "parameter_longname": "disp_ang_range[1]"
                },
                "obj-3::obj-22::obj-40": {
                    "parameter_longname": "displacement_y_m[1]",
                    "parameter_range": [ -1.0, 1.0 ]
                },
                "obj-3::obj-22::obj-42": {
                    "parameter_longname": "displacement_x_m[1]",
                    "parameter_range": [ -1.0, 1.0 ]
                },
                "obj-3::obj-22::obj-44": {
                    "parameter_longname": "displacement_zoom_m[1]"
                },
                "obj-3::obj-22::obj-47": {
                    "parameter_longname": "displacement_angle_m[1]",
                    "parameter_range": [ -6.28, 6.28 ]
                },
                "obj-3::obj-22::obj-56": {
                    "parameter_longname": "MENU[7]"
                },
                "obj-3::obj-22::obj-57": {
                    "parameter_longname": "MENU[8]"
                },
                "obj-3::obj-22::obj-6": {
                    "parameter_longname": "offrot_x[1]",
                    "parameter_range": [ -1.0, 1.0 ]
                },
                "obj-3::obj-22::obj-67": {
                    "parameter_longname": "menu[1]"
                },
                "obj-3::obj-22::obj-8": {
                    "parameter_longname": "displacement_y[1]",
                    "parameter_range": [ -1.0, 1.0 ]
                },
                "obj-3::obj-33": {
                    "parameter_longname": "displacement_init_point[1]"
                },
                "obj-3::obj-8": {
                    "parameter_longname": "displacement_polar[1]"
                },
                "obj-3::obj-96": {
                    "parameter_longname": "displacement_boundmode[1]"
                },
                "obj-6::obj-32": {
                    "parameter_longname": "live.numbox[5]"
                },
                "obj-6::obj-45::obj-32": {
                    "parameter_longname": "live.numbox[4]"
                },
                "obj-74::obj-12": {
                    "parameter_longname": "live.text[13]"
                },
                "obj-74::obj-15": {
                    "parameter_invisible": 0,
                    "parameter_longname": "live.menu[20]",
                    "parameter_modmode": 0,
                    "parameter_range": [ "prores4444", "prores422", "h264", "jpeg" ],
                    "parameter_type": 2,
                    "parameter_unitstyle": 10
                },
                "obj-8::obj-12": {
                    "parameter_longname": "title_pos_x[1]"
                },
                "obj-8::obj-40": {
                    "parameter_invisible": 0,
                    "parameter_modmode": 0,
                    "parameter_range": [ "Ableton Sans", "Ableton Sans Regular Italic", "Ableton Sans ExtraLight", "Ableton Sans ExtraLight Italic", "Ableton Sans Light", "Ableton Sans Light Italic", "Ableton Sans Medium", "Ableton Sans Medium Italic", "Ableton Sans Bold", "Ableton Sans Bold Italic", "Ableton Sans Bold", "Ableton Sans Light", "Ableton Sans Medium", "Ableton Sans Small", "Ableton Sans Small Regular Italic", "Ableton Sans Small Bold", "Ableton Sans Small Bold Italic", "Academy Engraved LET Plain", "Actium", "Actium Regular Italic", "Actium SemiBold", "Al Bayan Plain", "Al Bayan Bold", "Al Nile", "Al Nile Bold", "Al Tarikh", "American Typewriter", "American Typewriter Light", "American Typewriter Semibold", "American Typewriter Bold", "American Typewriter Condensed", "American Typewriter Condensed Light", "American Typewriter Condensed Bold", "Andale Mono", "Apple Braille Outline 6 Dot", "Apple Braille Outline 8 Dot", "Apple Braille Pinpoint 6 Dot", "Apple Braille Pinpoint 8 Dot", "Apple Braille", "Apple Chancery Chancery", "Apple Color Emoji", "Apple SD Gothic Neo", "Apple SD Gothic Neo Thin", "Apple SD Gothic Neo UltraLight", "Apple SD Gothic Neo Light", "Apple SD Gothic Neo Medium", "Apple SD Gothic Neo SemiBold", "Apple SD Gothic Neo Bold", "Apple SD Gothic Neo ExtraBold", "Apple SD Gothic Neo Heavy", "Apple Symbols", "AppleGothic", "AppleMyungjo", "Arial", "Arial Italic", "Arial Bold", "Arial Bold Italic", "Arial Black", "Arial Hebrew", "Arial Hebrew Light", "Arial Hebrew Bold", "Arial Hebrew Scholar", "Arial Hebrew Scholar Light", "Arial Hebrew Scholar Bold", "Arial Narrow", "Arial Narrow Italic", "Arial Narrow Bold", "Arial Narrow Bold Italic", "Arial Rounded MT Bold", "Arial Unicode MS", "Avenir Book", "Avenir Roman", "Avenir Book Oblique", "Avenir Oblique", "Avenir Light", "Avenir Light Oblique", "Avenir Medium", "Avenir Medium Oblique", "Avenir Heavy", "Avenir Heavy Oblique", "Avenir Black", "Avenir Black Oblique", "Avenir Next", "Avenir Next Italic", "Avenir Next Ultra Light", "Avenir Next Ultra Light Italic", "Avenir Next Medium", "Avenir Next Medium Italic", "Avenir Next Demi Bold", "Avenir Next Demi Bold Italic", "Avenir Next Bold", "Avenir Next Bold Italic", "Avenir Next Heavy", "Avenir Next Heavy Italic", "Avenir Next Condensed", "Avenir Next Condensed Italic", "Avenir Next Condensed Ultra Light", "Avenir Next Condensed Ultra Light Italic", "Avenir Next Condensed Medium", "Avenir Next Condensed Medium Italic", "Avenir Next Condensed Demi Bold", "Avenir Next Condensed Demi Bold Italic", "Avenir Next Condensed Bold", "Avenir Next Condensed Bold Italic", "Avenir Next Condensed Heavy", "Avenir Next Condensed Heavy Italic", "Ayuthaya", "Baghdad", "Bangla MN", "Bangla MN Bold", "Bangla Sangam MN", "Bangla Sangam MN Bold", "Baskerville", "Baskerville Italic", "Baskerville SemiBold", "Baskerville SemiBold Italic", "Baskerville Bold", "Baskerville Bold Italic", "Beirut", "Big Caslon Medium", "Bodoni 72 Book", "Bodoni 72 Book Italic", "Bodoni 72 Bold", "Bodoni 72 Oldstyle Book", "Bodoni 72 Oldstyle Book Italic", "Bodoni 72 Oldstyle Bold", "Bodoni 72 Smallcaps Book", "Bodoni Ornaments", "Bradley Hand Bold", "Brush Script MT Italic", "Chalkboard", "Chalkboard Bold", "Chalkboard SE", "Chalkboard SE Light", "Chalkboard SE Bold", "Chalkduster", "Charter Roman", "Charter Italic", "Charter Bold", "Charter Bold Italic", "Charter Black", "Charter Black Italic", "Cochin", "Cochin Italic", "Cochin Bold", "Cochin Bold Italic", "Comic Sans MS", "Comic Sans MS Bold", "Copperplate", "Copperplate Light", "Copperplate Bold", "Corsiva Hebrew", "Corsiva Hebrew Bold", "Courier New", "Courier New Italic", "Courier New Bold", "Courier New Bold Italic", "Damascus", "Damascus Light", "Damascus Medium", "Damascus Semi Bold", "Damascus Bold", "DecoType Naskh", "Devanagari MT", "Devanagari MT Bold", "Devanagari Sangam MN", "Devanagari Sangam MN Bold", "Didot", "Didot Italic", "Didot Bold", "DIN Alternate Bold", "DIN Condensed Bold", "Diwan Kufi", "Diwan Thuluth", "Euphemia UCAS", "Euphemia UCAS Italic", "Euphemia UCAS Bold", "Farah", "Farisi", "Futura Medium", "Futura Medium Italic", "Futura Bold", "Futura Condensed Medium", "Futura Condensed ExtraBold", "Galvji", "Galvji Oblique", "Galvji Bold", "Galvji Bold Oblique", "GB18030 Bitmap", "Geeza Pro", "Geeza Pro Bold", "Geneva", "Georgia", "Georgia Italic", "Georgia Bold", "Georgia Bold Italic", "Gill Sans", "Gill Sans Italic", "Gill Sans Light", "Gill Sans Light Italic", "Gill Sans SemiBold", "Gill Sans SemiBold Italic", "Gill Sans Bold", "Gill Sans Bold Italic", "Gill Sans UltraBold", "Grantha Sangam MN", "Grantha Sangam MN Bold", "Gujarati MT", "Gujarati MT Bold", "Gujarati Sangam MN", "Gujarati Sangam MN Bold", "Gurmukhi MN", "Gurmukhi MN Bold", "Gurmukhi MT", "Gurmukhi Sangam MN", "Gurmukhi Sangam MN Bold", "Heiti SC Light", "Heiti SC Medium", "Heiti TC Light", "Heiti TC Medium", "Helvetica", "Helvetica Oblique", "Helvetica Light", "Helvetica Light Oblique", "Helvetica Bold", "Helvetica Bold Oblique", "Helvetica Neue", "Helvetica Neue Italic", "Helvetica Neue UltraLight", "Helvetica Neue UltraLight Italic", "Helvetica Neue Thin", "Helvetica Neue Thin Italic", "Helvetica Neue Light", "Helvetica Neue Light Italic", "Helvetica Neue Medium", "Helvetica Neue Medium Italic", "Helvetica Neue Bold", "Helvetica Neue Bold Italic", "Helvetica Neue Condensed Bold", "Helvetica Neue Condensed Black", "Herculanum", "Hiragino Maru Gothic ProN W4", "Hiragino Mincho ProN W3", "Hiragino Mincho ProN W6", "Hiragino Sans W0", "Hiragino Sans W1", "Hiragino Sans W2", "Hiragino Sans W3", "Hiragino Sans W4", "Hiragino Sans W5", "Hiragino Sans W6", "Hiragino Sans W7", "Hiragino Sans W8", "Hiragino Sans W9", "Hiragino Sans GB W3", "Hiragino Sans GB W6", "Hoefler Text", "Hoefler Text Ornaments", "Hoefler Text Italic", "Hoefler Text Black", "Hoefler Text Black Italic", "Impact", "InaiMathi", "InaiMathi Bold", "ITF Devanagari Book", "ITF Devanagari Light", "ITF Devanagari Medium", "ITF Devanagari Demi", "ITF Devanagari Bold", "ITF Devanagari Marathi Book", "ITF Devanagari Marathi Light", "ITF Devanagari Marathi Medium", "ITF Devanagari Marathi Demi", "ITF Devanagari Marathi Bold", "Kailasa", "Kailasa Bold", "Kannada MN", "Kannada MN Bold", "Kannada Sangam MN", "Kannada Sangam MN Bold", "Kefa", "Kefa Bold", "Khmer MN", "Khmer MN Bold", "Khmer Sangam MN", "Kohinoor Bangla", "Kohinoor Bangla Light", "Kohinoor Bangla Medium", "Kohinoor Bangla Semibold", "Kohinoor Bangla Bold", "Kohinoor Devanagari", "Kohinoor Devanagari Light", "Kohinoor Devanagari Medium", "Kohinoor Devanagari Semibold", "Kohinoor Devanagari Bold", "Kohinoor Gujarati", "Kohinoor Gujarati Light", "Kohinoor Gujarati Medium", "Kohinoor Gujarati Semibold", "Kohinoor Gujarati Bold", "Kohinoor Telugu", "Kohinoor Telugu Light", "Kohinoor Telugu Medium", "Kohinoor Telugu Semibold", "Kohinoor Telugu Bold", "Kokonor", "Krungthep", "KufiStandardGK", "Lao MN", "Lao MN Bold", "Lao Sangam MN", "Lato", "Lato Italic", "Lato Hairline", "Lato Hairline Italic", "Lato Thin", "Lato Thin Italic", "Lato Light", "Lato Light Italic", "Lato Medium", "Lato Medium Italic", "Lato Semibold", "Lato Semibold Italic", "Lato Bold", "Lato Bold Italic", "Lato Heavy", "Lato Heavy Italic", "Lato Black", "Lato Black Italic", "Lucida Grande", "Lucida Grande Bold", "Luminari", "Malayalam MN", "Malayalam MN Bold", "Malayalam Sangam MN", "Malayalam Sangam MN Bold", "Marker Felt Thin", "Marker Felt Wide", "Menlo", "Menlo Italic", "Menlo Bold", "Menlo Bold Italic", "Microsoft Sans Serif", "Mishafi", "Mishafi Gold", "Monaco", "Mshtakan", "Mshtakan Oblique", "Mshtakan Bold", "Mshtakan BoldOblique", "Mukta Mahee", "Mukta Mahee ExtraLight", "Mukta Mahee Light", "Mukta Mahee Medium", "Mukta Mahee SemiBold", "Mukta Mahee Bold", "Mukta Mahee ExtraBold", "Muna", "Muna Bold", "Muna Black", "Myanmar MN", "Myanmar MN Bold", "Myanmar Sangam MN", "Myanmar Sangam MN Bold", "Nadeem", "New Peninim MT", "New Peninim MT Inclined", "New Peninim MT Bold", "New Peninim MT Bold Inclined", "Noteworthy Light", "Noteworthy Bold", "Noto Nastaliq Urdu", "Noto Nastaliq Urdu Bold", "Noto Sans Batak", "Noto Sans Kannada", "Noto Sans Kannada ExtraLight", "Noto Sans Kannada Thin", "Noto Sans Kannada Light", "Noto Sans Kannada Medium", "Noto Sans Kannada SemiBold", "Noto Sans Kannada Bold", "Noto Sans Kannada ExtraBold", "Noto Sans Kannada Black", "Noto Sans Myanmar", "Noto Sans Myanmar ExtraLight", "Noto Sans Myanmar Thin", "Noto Sans Myanmar Light", "Noto Sans Myanmar Medium", "Noto Sans Myanmar SemiBold", "Noto Sans Myanmar Bold", "Noto Sans Myanmar ExtraBold", "Noto Sans Myanmar Black", "Noto Sans NKo", "Noto Sans Oriya", "Noto Sans Oriya Bold", "Noto Sans Syriac", "Noto Sans Syriac Thin", "Noto Sans Syriac ExtraLight", "Noto Sans Syriac Light", "Noto Sans Syriac Medium", "Noto Sans Syriac SemiBold", "Noto Sans Syriac Bold", "Noto Sans Syriac ExtraBold", "Noto Sans Syriac Black", "Noto Sans Tagalog", "Noto Serif Myanmar", "Noto Serif Myanmar ExtraLight", "Noto Serif Myanmar Thin", "Noto Serif Myanmar Light", "Noto Serif Myanmar Medium", "Noto Serif Myanmar SemiBold", "Noto Serif Myanmar Bold", "Noto Serif Myanmar ExtraBold", "Noto Serif Myanmar Black", "November for bach", "Optima", "Optima Italic", "Optima Bold", "Optima Bold Italic", "Optima ExtraBlack", "Opus", "Opus Big Time Std", "Opus Chords", "Opus Chords Sans", "Opus Chords Sans Condensed", "Opus Chords Sans Condensed Std", "Opus Chords Sans Std", "Opus Chords Std", "Opus Figured Bass", "Opus Figured Bass Extras", "Opus Figured Bass Extras Std", "Opus Figured Bass Std", "Opus Function Symbols", "Opus Function Symbols Std", "Opus Japanese Chords", "Opus Metronome", "Opus Metronome Std", "Opus Note Names", "Opus Note Names Std", "Opus Ornaments", "Opus Ornaments Std", "Opus Percussion", "Opus Percussion Std", "Opus PlainChords", "Opus PlainChords Std", "Opus Roman Chords", "Opus Roman Chords Std", "Opus Special", "Opus Special Extra", "Opus Special Extra Std", "Opus Special Std", "Opus Std", "Opus Text", "Opus Text Std", "Oriya MN", "Oriya MN Bold", "Oriya Sangam MN", "Oriya Sangam MN Bold", "Palatino", "Palatino Italic", "Palatino Bold", "Palatino Bold Italic", "Papyrus", "Papyrus Condensed", "Party LET Plain", "Phosphate Inline", "Phosphate Solid", "PingFang HK", "PingFang HK Ultralight", "PingFang HK Thin", "PingFang HK Light", "PingFang HK Medium", "PingFang HK Semibold", "PingFang MO", "PingFang MO Ultralight", "PingFang MO Thin", "PingFang MO Light", "PingFang MO Medium", "PingFang MO Semibold", "PingFang SC", "PingFang SC Ultralight", "PingFang SC Thin", "PingFang SC Light", "PingFang SC Medium", "PingFang SC Semibold", "PingFang TC", "PingFang TC Ultralight", "PingFang TC Thin", "PingFang TC Light", "PingFang TC Medium", "PingFang TC Semibold", "Plantagenet Cherokee", "Plus Jakarta Sans", "Plus Jakarta Sans", "Plus Jakarta Sans", "Plus Jakarta Sans Italic", "Plus Jakarta Sans Italic", "Plus Jakarta Sans ExtraLight", "Plus Jakarta Sans ExtraLight", "Plus Jakarta Sans ExtraLight", "Plus Jakarta Sans ExtraLight Italic", "Plus Jakarta Sans ExtraLight Italic", "Plus Jakarta Sans ExtraLight Italic", "Plus Jakarta Sans Light", "Plus Jakarta Sans Light", "Plus Jakarta Sans Light", "Plus Jakarta Sans Light Italic", "Plus Jakarta Sans Light Italic", "Plus Jakarta Sans Light Italic", "Plus Jakarta Sans Medium", "Plus Jakarta Sans Medium", "Plus Jakarta Sans Medium Italic", "Plus Jakarta Sans Medium Italic", "Plus Jakarta Sans SemiBold", "Plus Jakarta Sans SemiBold", "Plus Jakarta Sans SemiBold", "Plus Jakarta Sans SemiBold Italic", "Plus Jakarta Sans SemiBold Italic", "Plus Jakarta Sans Bold", "Plus Jakarta Sans Bold", "Plus Jakarta Sans Bold Italic", "Plus Jakarta Sans Bold Italic", "Plus Jakarta Sans Bold Italic", "Plus Jakarta Sans ExtraBold", "Plus Jakarta Sans ExtraBold", "Plus Jakarta Sans ExtraBold", "Plus Jakarta Sans ExtraBold Italic", "Plus Jakarta Sans ExtraBold Italic", "Plus Jakarta Sans ExtraBold Italic", "PT Mono", "PT Mono Bold", "PT Sans", "PT Sans Italic", "PT Sans Bold", "PT Sans Bold Italic", "PT Sans Caption", "PT Sans Caption Bold", "PT Sans Narrow", "PT Sans Narrow Bold", "PT Serif", "PT Serif Italic", "PT Serif Bold", "PT Serif Bold Italic", "PT Serif Caption", "PT Serif Caption Italic", "Raanana", "Raanana Bold", "Rockwell", "Rockwell Italic", "Rockwell Bold", "Rockwell Bold Italic", "Sana", "Sathu", "Savoye LET Plain", "Shree Devanagari 714", "Shree Devanagari 714 Italic", "Shree Devanagari 714 Bold", "Shree Devanagari 714 Bold Italic", "SignPainter HouseScript", "SignPainter HouseScript Semibold", "Silom", "Sinhala MN", "Sinhala MN Bold", "Sinhala Sangam MN", "Sinhala Sangam MN Bold", "Skia", "Skia Light", "Skia Bold", "Skia Black", "Skia Extended", "Skia Light Extended", "Skia Black Extended", "Skia Condensed", "Skia Light Condensed", "Skia Black Condensed", "Snell Roundhand", "Snell Roundhand Bold", "Snell Roundhand Black", "Songti SC", "Songti SC Light", "Songti SC Bold", "Songti SC Black", "Songti TC", "Songti TC Light", "Songti TC Bold", "STIX Two Math", "STIX Two Text", "STIX Two Text Italic", "STIX Two Text Medium", "STIX Two Text Medium Italic", "STIX Two Text SemiBold", "STIX Two Text SemiBold Italic", "STIX Two Text Bold", "STIX Two Text Bold Italic", "STSong", "Sukhumvit Set Text", "Sukhumvit Set Light", "Sukhumvit Set Medium", "Sukhumvit Set Semi Bold", "Sukhumvit Set Bold", "Sukhumvit Set Thin", "Symbol", "Tahoma", "Tahoma Bold", "Tamil MN", "Tamil MN Bold", "Tamil Sangam MN", "Tamil Sangam MN Bold", "Telugu MN", "Telugu MN Bold", "Telugu Sangam MN", "Telugu Sangam MN Bold", "Thonburi", "Thonburi Light", "Thonburi Bold", "Times New Roman", "Times New Roman Italic", "Times New Roman Bold", "Times New Roman Bold Italic", "Trattatello", "Trebuchet MS", "Trebuchet MS Italic", "Trebuchet MS Bold", "Trebuchet MS Bold Italic", "Verdana", "Verdana Italic", "Verdana Bold", "Verdana Bold Italic", "Waseem", "Waseem Light", "Webdings", "Wingdings", "Wingdings 2", "Wingdings 3", "Zapf Dingbats", "Zapfino" ],
                    "parameter_type": 2,
                    "parameter_unitstyle": 10
                },
                "obj-8::obj-79": {
                    "parameter_invisible": 0,
                    "parameter_modmode": 0,
                    "parameter_range": [ "8", "9", "10", "11", "12", "13", "14", "16", "18", "20", "24", "30", "36", "48", "64", "72", "84", "92", "104", "112", "120", "130", "144", "156", "170", "190", "220", "260", "320", "400", "560" ],
                    "parameter_type": 2,
                    "parameter_unitstyle": 10
                },
                "obj-99::obj-45": {
                    "parameter_longname": "phase[1]"
                },
                "obj-99::obj-56": {
                    "parameter_longname": "angle[1]"
                },
                "obj-99::obj-63": {
                    "parameter_longname": "speed[1]"
                }
            },
            "inherited_shortname": 1
        },
        "autosave": 0,
        "toolbaradditions": [ "BEAP", "Vizzie", "Vsynth", "Data Knot", "Auzzie", "ABL Effect Modules", "RNBO Synth Building Blocks" ]
    }
}