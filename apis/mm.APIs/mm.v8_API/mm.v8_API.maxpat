{
 "patcher": {
  "fileversion": 1,
  "appversion": {
   "major": 9,
   "minor": 2,
   "revision": 1,
   "architecture": "x64",
   "modernui": 1
  },
  "classnamespace": "box",
  "rect": [
   40.0,
   60.0,
   1450.0,
   1310.0
  ],
  "gridsize": [
   15.0,
   15.0
  ],
  "default_fontsize": 12.0,
  "boxes": [
   {
    "box": {
     "id": "obj-1",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      20,
      12,
      600,
      34.0
     ],
     "text": "Web API  \u2192  Max  \u2192  Arduino",
     "fontsize": 24.0,
     "textcolor": [
      1.0,
      1.0,
      1.0,
      1.0
     ],
     "fontface": 1
    }
   },
   {
    "box": {
     "id": "obj-2",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      1110,
      20,
      310,
      20.0
     ],
     "text": "By Mark Meeuwenoord \u00b7 www.dinggoo.nl \u00b7 2026",
     "fontsize": 12.0,
     "textcolor": [
      1.0,
      1.0,
      1.0,
      1.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-3",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      20,
      46,
      1300,
      20.0
     ],
     "text": "Work from 1 to 5. All code lives in api_reader.js (double-click [v8] or open the file in VS Code). Add your own APIs in api_presets.js.",
     "fontsize": 12.0,
     "textcolor": [
      1.0,
      1.0,
      1.0,
      1.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-4",
     "maxclass": "panel",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      15,
      75,
      445,
      425
     ],
     "background": 1,
     "ignoreclick": 1,
     "bgcolor": [
      0.16,
      0.22,
      0.34,
      1.0
     ],
     "rounded": 10,
     "border": 0,
     "mode": 0
    }
   },
   {
    "box": {
     "id": "obj-5",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      30,
      85,
      420,
      24.0
     ],
     "text": "1 \u00b7 CHOOSE AN API",
     "fontsize": 16.0,
     "textcolor": [
      1.0,
      1.0,
      1.0,
      1.0
     ],
     "fontface": 1
    }
   },
   {
    "box": {
     "id": "obj-6",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 0,
     "outlettype": [],
     "patching_rect": [
      30,
      460,
      93.0,
      22.0
     ],
     "text": "s v8api.cmd"
    }
   },
   {
    "box": {
     "id": "obj-7",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      30,
      120,
      110,
      22.0
     ],
     "text": "api weather"
    }
   },
   {
    "box": {
     "id": "obj-8",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      150,
      121,
      300,
      20.0
     ],
     "text": "weather in Amsterdam (Open-Meteo)",
     "fontsize": 12.0,
     "textcolor": [
      1.0,
      1.0,
      1.0,
      1.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-9",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      30,
      150,
      110,
      22.0
     ],
     "text": "api air"
    }
   },
   {
    "box": {
     "id": "obj-10",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      150,
      151,
      300,
      20.0
     ],
     "text": "air quality / particulate matter",
     "fontsize": 12.0,
     "textcolor": [
      1.0,
      1.0,
      1.0,
      1.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-11",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      30,
      180,
      110,
      22.0
     ],
     "text": "api energy"
    }
   },
   {
    "box": {
     "id": "obj-12",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      150,
      181,
      300,
      20.0
     ],
     "text": "UK power mix: wind / solar / gas",
     "fontsize": 12.0,
     "textcolor": [
      1.0,
      1.0,
      1.0,
      1.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-13",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      30,
      210,
      110,
      22.0
     ],
     "text": "api iss"
    }
   },
   {
    "box": {
     "id": "obj-14",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      150,
      211,
      300,
      20.0
     ],
     "text": "ISS position, new every 2 s",
     "fontsize": 12.0,
     "textcolor": [
      1.0,
      1.0,
      1.0,
      1.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-15",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      30,
      240,
      110,
      22.0
     ],
     "text": "api bitcoin"
    }
   },
   {
    "box": {
     "id": "obj-16",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      150,
      241,
      300,
      20.0
     ],
     "text": "crypto prices (CoinGecko)",
     "fontsize": 12.0,
     "textcolor": [
      1.0,
      1.0,
      1.0,
      1.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-17",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      30,
      270,
      110,
      22.0
     ],
     "text": "api quakes"
    }
   },
   {
    "box": {
     "id": "obj-18",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      150,
      271,
      300,
      20.0
     ],
     "text": "earthquakes in the past hour",
     "fontsize": 12.0,
     "textcolor": [
      1.0,
      1.0,
      1.0,
      1.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-19",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      30,
      305,
      410,
      20.0
     ],
     "text": "or your own API (a comma = next message):",
     "fontsize": 12.0,
     "textcolor": [
      1.0,
      1.0,
      1.0,
      1.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-20",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      30,
      330,
      415,
      38.0
     ],
     "text": "clear, url https://api.wheretheiss.at/v1/satellites/25544, watch 1 latitude, bang"
    }
   },
   {
    "box": {
     "id": "obj-21",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      30,
      380,
      135.0,
      22.0
     ],
     "text": "watch 2 longitude"
    }
   },
   {
    "box": {
     "id": "obj-22",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      175,
      380,
      128.0,
      22.0
     ],
     "text": "range 2 -180 180"
    }
   },
   {
    "box": {
     "id": "obj-23",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      30,
      415,
      191.0,
      22.0
     ],
     "text": "header x-api-key YOUR_KEY"
    }
   },
   {
    "box": {
     "id": "obj-24",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      229.0,
      416,
      190,
      20.0
     ],
     "text": "\u2190 for APIs that need a key",
     "fontsize": 12.0,
     "textcolor": [
      1.0,
      1.0,
      1.0,
      1.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-25",
     "maxclass": "panel",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      475,
      75,
      430,
      425
     ],
     "background": 1,
     "ignoreclick": 1,
     "bgcolor": [
      0.15,
      0.28,
      0.2,
      1.0
     ],
     "rounded": 10,
     "border": 0,
     "mode": 0
    }
   },
   {
    "box": {
     "id": "obj-26",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      490,
      85,
      420,
      24.0
     ],
     "text": "2 \u00b7 FETCH",
     "fontsize": 16.0,
     "textcolor": [
      1.0,
      1.0,
      1.0,
      1.0
     ],
     "fontface": 1
    }
   },
   {
    "box": {
     "id": "obj-27",
     "maxclass": "button",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      490,
      120,
      24,
      24.0
     ],
     "parameter_enable": 0
    }
   },
   {
    "box": {
     "id": "obj-28",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      520,
      122,
      200,
      20.0
     ],
     "text": "fetch once, now",
     "fontsize": 12.0,
     "textcolor": [
      1.0,
      1.0,
      1.0,
      1.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-29",
     "maxclass": "newobj",
     "numinlets": 0,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      490,
      155,
      100.0,
      22.0
     ],
     "text": "r v8api.auto"
    }
   },
   {
    "box": {
     "id": "obj-30",
     "maxclass": "newobj",
     "numinlets": 0,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      680,
      155,
      128.0,
      22.0
     ],
     "text": "r v8api.interval"
    }
   },
   {
    "box": {
     "id": "obj-31",
     "maxclass": "toggle",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      490,
      185,
      24,
      24.0
     ],
     "parameter_enable": 0
    }
   },
   {
    "box": {
     "id": "obj-32",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      520,
      187,
      150,
      20.0
     ],
     "text": "automatically, every",
     "fontsize": 12.0,
     "textcolor": [
      1.0,
      1.0,
      1.0,
      1.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-33",
     "maxclass": "number",
     "numinlets": 1,
     "numoutlets": 2,
     "outlettype": [
      "",
      ""
     ],
     "patching_rect": [
      680,
      185,
      80,
      22.0
     ],
     "parameter_enable": 0
    }
   },
   {
    "box": {
     "id": "obj-34",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      765,
      187,
      30,
      20.0
     ],
     "text": "ms",
     "fontsize": 12.0,
     "textcolor": [
      1.0,
      1.0,
      1.0,
      1.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-35",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      490,
      220,
      100.0,
      22.0
     ],
     "text": "prepend auto"
    }
   },
   {
    "box": {
     "id": "obj-36",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      680,
      220,
      128.0,
      22.0
     ],
     "text": "prepend interval"
    }
   },
   {
    "box": {
     "id": "obj-37",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      775,
      250,
      135.0,
      22.0
     ],
     "text": "loadmess set 5000"
    }
   },
   {
    "box": {
     "id": "obj-38",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 0,
     "outlettype": [],
     "patching_rect": [
      490,
      250,
      93.0,
      22.0
     ],
     "text": "s v8api.cmd"
    }
   },
   {
    "box": {
     "id": "obj-39",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      490,
      290,
      300,
      20.0
     ],
     "text": "the heart of the patch:",
     "fontsize": 12.0,
     "textcolor": [
      1.0,
      1.0,
      1.0,
      1.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-40",
     "maxclass": "newobj",
     "numinlets": 0,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      490,
      315,
      93.0,
      22.0
     ],
     "text": "r v8api.cmd"
    }
   },
   {
    "box": {
     "id": "obj-41",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 3,
     "outlettype": [
      "",
      "",
      ""
     ],
     "patching_rect": [
      490,
      345,
      220,
      22.0
     ],
     "text": "v8 api_reader.js api_data"
    }
   },
   {
    "box": {
     "id": "obj-42",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 0,
     "outlettype": [],
     "patching_rect": [
      490,
      380,
      100.0,
      22.0
     ],
     "text": "s v8api.dict"
    }
   },
   {
    "box": {
     "id": "obj-43",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      596.0,
      381,
      120,
      20.0
     ],
     "text": "JSON \u2192 section 3",
     "fontsize": 12.0,
     "textcolor": [
      1.0,
      1.0,
      1.0,
      1.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-91",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 0,
     "outlettype": [],
     "patching_rect": [
      760,
      380,
      72.0,
      22.0
     ],
     "text": "p router",
     "patcher": {
      "fileversion": 1,
      "appversion": {
       "major": 9,
       "minor": 2,
       "revision": 1,
       "architecture": "x64",
       "modernui": 1
      },
      "classnamespace": "box",
      "rect": [
       100,
       100,
       1150,
       560
      ],
      "gridsize": [
       15.0,
       15.0
      ],
      "default_fontsize": 12.0,
      "boxes": [
       {
        "box": {
         "id": "obj-44",
         "maxclass": "newobj",
         "numinlets": 0,
         "numoutlets": 1,
         "outlettype": [
          ""
         ],
         "patching_rect": [
          30,
          20,
          30,
          22.0
         ],
         "text": "inlet",
         "comment": "channel number"
        }
       },
       {
        "box": {
         "id": "obj-45",
         "maxclass": "newobj",
         "numinlets": 0,
         "numoutlets": 1,
         "outlettype": [
          ""
         ],
         "patching_rect": [
          640,
          20,
          30,
          22.0
         ],
         "text": "inlet",
         "comment": "info"
        }
       },
       {
        "box": {
         "id": "obj-46",
         "maxclass": "comment",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          30,
          50,
          360,
          20.0
         ],
         "text": "numbers \u2192 [r v8api.val1] .. [r v8api.val4]",
         "fontsize": 12.0,
         "textcolor": [
          1.0,
          1.0,
          1.0,
          1.0
         ]
        }
       },
       {
        "box": {
         "id": "obj-47",
         "maxclass": "newobj",
         "numinlets": 2,
         "numoutlets": 5,
         "outlettype": [
          "",
          "",
          "",
          "",
          ""
         ],
         "patching_rect": [
          30,
          80,
          107.0,
          22.0
         ],
         "text": "route 1 2 3 4"
        }
       },
       {
        "box": {
         "id": "obj-48",
         "maxclass": "newobj",
         "numinlets": 1,
         "numoutlets": 0,
         "outlettype": [],
         "patching_rect": [
          200,
          20,
          114.0,
          22.0
         ],
         "text": "s v8api.values"
        }
       },
       {
        "box": {
         "id": "obj-49",
         "maxclass": "newobj",
         "numinlets": 1,
         "numoutlets": 0,
         "outlettype": [],
         "patching_rect": [
          760,
          20,
          100.0,
          22.0
         ],
         "text": "s v8api.info"
        }
       },
       {
        "box": {
         "id": "obj-50",
         "maxclass": "newobj",
         "numinlets": 1,
         "numoutlets": 0,
         "outlettype": [],
         "patching_rect": [
          30,
          120,
          100.0,
          22.0
         ],
         "text": "s v8api.val1"
        }
       },
       {
        "box": {
         "id": "obj-51",
         "maxclass": "newobj",
         "numinlets": 1,
         "numoutlets": 0,
         "outlettype": [],
         "patching_rect": [
          170,
          120,
          100.0,
          22.0
         ],
         "text": "s v8api.val2"
        }
       },
       {
        "box": {
         "id": "obj-52",
         "maxclass": "newobj",
         "numinlets": 1,
         "numoutlets": 0,
         "outlettype": [],
         "patching_rect": [
          310,
          120,
          100.0,
          22.0
         ],
         "text": "s v8api.val3"
        }
       },
       {
        "box": {
         "id": "obj-53",
         "maxclass": "newobj",
         "numinlets": 1,
         "numoutlets": 0,
         "outlettype": [],
         "patching_rect": [
          450,
          120,
          100.0,
          22.0
         ],
         "text": "s v8api.val4"
        }
       },
       {
        "box": {
         "id": "obj-54",
         "maxclass": "comment",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          640,
          50,
          400,
          20.0
         ],
         "text": "info \u2192 displays, channel labels, ranges, menu",
         "fontsize": 12.0,
         "textcolor": [
          1.0,
          1.0,
          1.0,
          1.0
         ]
        }
       },
       {
        "box": {
         "id": "obj-55",
         "maxclass": "newobj",
         "numinlets": 2,
         "numoutlets": 9,
         "outlettype": [
          "",
          "",
          "",
          "",
          "",
          "",
          "",
          "",
          ""
         ],
         "patching_rect": [
          640,
          80,
          394.0,
          22.0
         ],
         "text": "route label show range status auto interval paths peek"
        }
       },
       {
        "box": {
         "id": "obj-56",
         "maxclass": "comment",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          30,
          170,
          80,
          20.0
         ],
         "text": "label",
         "fontsize": 12.0,
         "textcolor": [
          1.0,
          1.0,
          1.0,
          1.0
         ]
        }
       },
       {
        "box": {
         "id": "obj-57",
         "maxclass": "newobj",
         "numinlets": 2,
         "numoutlets": 5,
         "outlettype": [
          "",
          "",
          "",
          "",
          ""
         ],
         "patching_rect": [
          30,
          192,
          107.0,
          22.0
         ],
         "text": "route 1 2 3 4"
        }
       },
       {
        "box": {
         "id": "obj-58",
         "maxclass": "newobj",
         "numinlets": 1,
         "numoutlets": 0,
         "outlettype": [],
         "patching_rect": [
          30,
          252,
          114.0,
          22.0
         ],
         "text": "s v8api.label1"
        }
       },
       {
        "box": {
         "id": "obj-59",
         "maxclass": "newobj",
         "numinlets": 1,
         "numoutlets": 1,
         "outlettype": [
          ""
         ],
         "patching_rect": [
          30,
          222,
          93.0,
          22.0
         ],
         "text": "prepend set"
        }
       },
       {
        "box": {
         "id": "obj-60",
         "maxclass": "newobj",
         "numinlets": 1,
         "numoutlets": 0,
         "outlettype": [],
         "patching_rect": [
          170,
          252,
          114.0,
          22.0
         ],
         "text": "s v8api.label2"
        }
       },
       {
        "box": {
         "id": "obj-61",
         "maxclass": "newobj",
         "numinlets": 1,
         "numoutlets": 1,
         "outlettype": [
          ""
         ],
         "patching_rect": [
          170,
          222,
          93.0,
          22.0
         ],
         "text": "prepend set"
        }
       },
       {
        "box": {
         "id": "obj-62",
         "maxclass": "newobj",
         "numinlets": 1,
         "numoutlets": 0,
         "outlettype": [],
         "patching_rect": [
          310,
          252,
          114.0,
          22.0
         ],
         "text": "s v8api.label3"
        }
       },
       {
        "box": {
         "id": "obj-63",
         "maxclass": "newobj",
         "numinlets": 1,
         "numoutlets": 1,
         "outlettype": [
          ""
         ],
         "patching_rect": [
          310,
          222,
          93.0,
          22.0
         ],
         "text": "prepend set"
        }
       },
       {
        "box": {
         "id": "obj-64",
         "maxclass": "newobj",
         "numinlets": 1,
         "numoutlets": 0,
         "outlettype": [],
         "patching_rect": [
          450,
          252,
          114.0,
          22.0
         ],
         "text": "s v8api.label4"
        }
       },
       {
        "box": {
         "id": "obj-65",
         "maxclass": "newobj",
         "numinlets": 1,
         "numoutlets": 1,
         "outlettype": [
          ""
         ],
         "patching_rect": [
          450,
          222,
          93.0,
          22.0
         ],
         "text": "prepend set"
        }
       },
       {
        "box": {
         "id": "obj-66",
         "maxclass": "comment",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          30,
          280,
          80,
          20.0
         ],
         "text": "show",
         "fontsize": 12.0,
         "textcolor": [
          1.0,
          1.0,
          1.0,
          1.0
         ]
        }
       },
       {
        "box": {
         "id": "obj-67",
         "maxclass": "newobj",
         "numinlets": 2,
         "numoutlets": 5,
         "outlettype": [
          "",
          "",
          "",
          "",
          ""
         ],
         "patching_rect": [
          30,
          302,
          107.0,
          22.0
         ],
         "text": "route 1 2 3 4"
        }
       },
       {
        "box": {
         "id": "obj-68",
         "maxclass": "newobj",
         "numinlets": 1,
         "numoutlets": 0,
         "outlettype": [],
         "patching_rect": [
          30,
          362,
          107.0,
          22.0
         ],
         "text": "s v8api.show1"
        }
       },
       {
        "box": {
         "id": "obj-69",
         "maxclass": "newobj",
         "numinlets": 1,
         "numoutlets": 1,
         "outlettype": [
          ""
         ],
         "patching_rect": [
          30,
          332,
          93.0,
          22.0
         ],
         "text": "prepend set"
        }
       },
       {
        "box": {
         "id": "obj-70",
         "maxclass": "newobj",
         "numinlets": 1,
         "numoutlets": 0,
         "outlettype": [],
         "patching_rect": [
          170,
          362,
          107.0,
          22.0
         ],
         "text": "s v8api.show2"
        }
       },
       {
        "box": {
         "id": "obj-71",
         "maxclass": "newobj",
         "numinlets": 1,
         "numoutlets": 1,
         "outlettype": [
          ""
         ],
         "patching_rect": [
          170,
          332,
          93.0,
          22.0
         ],
         "text": "prepend set"
        }
       },
       {
        "box": {
         "id": "obj-72",
         "maxclass": "newobj",
         "numinlets": 1,
         "numoutlets": 0,
         "outlettype": [],
         "patching_rect": [
          310,
          362,
          107.0,
          22.0
         ],
         "text": "s v8api.show3"
        }
       },
       {
        "box": {
         "id": "obj-73",
         "maxclass": "newobj",
         "numinlets": 1,
         "numoutlets": 1,
         "outlettype": [
          ""
         ],
         "patching_rect": [
          310,
          332,
          93.0,
          22.0
         ],
         "text": "prepend set"
        }
       },
       {
        "box": {
         "id": "obj-74",
         "maxclass": "newobj",
         "numinlets": 1,
         "numoutlets": 0,
         "outlettype": [],
         "patching_rect": [
          450,
          362,
          107.0,
          22.0
         ],
         "text": "s v8api.show4"
        }
       },
       {
        "box": {
         "id": "obj-75",
         "maxclass": "newobj",
         "numinlets": 1,
         "numoutlets": 1,
         "outlettype": [
          ""
         ],
         "patching_rect": [
          450,
          332,
          93.0,
          22.0
         ],
         "text": "prepend set"
        }
       },
       {
        "box": {
         "id": "obj-76",
         "maxclass": "comment",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          30,
          390,
          80,
          20.0
         ],
         "text": "range",
         "fontsize": 12.0,
         "textcolor": [
          1.0,
          1.0,
          1.0,
          1.0
         ]
        }
       },
       {
        "box": {
         "id": "obj-77",
         "maxclass": "newobj",
         "numinlets": 2,
         "numoutlets": 5,
         "outlettype": [
          "",
          "",
          "",
          "",
          ""
         ],
         "patching_rect": [
          30,
          412,
          107.0,
          22.0
         ],
         "text": "route 1 2 3 4"
        }
       },
       {
        "box": {
         "id": "obj-78",
         "maxclass": "newobj",
         "numinlets": 1,
         "numoutlets": 0,
         "outlettype": [],
         "patching_rect": [
          30,
          472,
          114.0,
          22.0
         ],
         "text": "s v8api.range1"
        }
       },
       {
        "box": {
         "id": "obj-79",
         "maxclass": "newobj",
         "numinlets": 1,
         "numoutlets": 0,
         "outlettype": [],
         "patching_rect": [
          170,
          472,
          114.0,
          22.0
         ],
         "text": "s v8api.range2"
        }
       },
       {
        "box": {
         "id": "obj-80",
         "maxclass": "newobj",
         "numinlets": 1,
         "numoutlets": 0,
         "outlettype": [],
         "patching_rect": [
          310,
          472,
          114.0,
          22.0
         ],
         "text": "s v8api.range3"
        }
       },
       {
        "box": {
         "id": "obj-81",
         "maxclass": "newobj",
         "numinlets": 1,
         "numoutlets": 0,
         "outlettype": [],
         "patching_rect": [
          450,
          472,
          114.0,
          22.0
         ],
         "text": "s v8api.range4"
        }
       },
       {
        "box": {
         "id": "obj-82",
         "maxclass": "newobj",
         "numinlets": 1,
         "numoutlets": 0,
         "outlettype": [],
         "patching_rect": [
          640,
          230,
          114.0,
          22.0
         ],
         "text": "s v8api.status"
        }
       },
       {
        "box": {
         "id": "obj-83",
         "maxclass": "newobj",
         "numinlets": 1,
         "numoutlets": 1,
         "outlettype": [
          ""
         ],
         "patching_rect": [
          640,
          120,
          93.0,
          22.0
         ],
         "text": "prepend set"
        }
       },
       {
        "box": {
         "id": "obj-84",
         "maxclass": "newobj",
         "numinlets": 1,
         "numoutlets": 0,
         "outlettype": [],
         "patching_rect": [
          725,
          260,
          100.0,
          22.0
         ],
         "text": "s v8api.auto"
        }
       },
       {
        "box": {
         "id": "obj-85",
         "maxclass": "newobj",
         "numinlets": 1,
         "numoutlets": 1,
         "outlettype": [
          ""
         ],
         "patching_rect": [
          725,
          150,
          93.0,
          22.0
         ],
         "text": "prepend set"
        }
       },
       {
        "box": {
         "id": "obj-86",
         "maxclass": "newobj",
         "numinlets": 1,
         "numoutlets": 0,
         "outlettype": [],
         "patching_rect": [
          810,
          230,
          128.0,
          22.0
         ],
         "text": "s v8api.interval"
        }
       },
       {
        "box": {
         "id": "obj-87",
         "maxclass": "newobj",
         "numinlets": 1,
         "numoutlets": 1,
         "outlettype": [
          ""
         ],
         "patching_rect": [
          810,
          120,
          93.0,
          22.0
         ],
         "text": "prepend set"
        }
       },
       {
        "box": {
         "id": "obj-88",
         "maxclass": "newobj",
         "numinlets": 1,
         "numoutlets": 0,
         "outlettype": [],
         "patching_rect": [
          895,
          260,
          107.0,
          22.0
         ],
         "text": "s v8api.paths"
        }
       },
       {
        "box": {
         "id": "obj-89",
         "maxclass": "newobj",
         "numinlets": 1,
         "numoutlets": 0,
         "outlettype": [],
         "patching_rect": [
          980,
          230,
          100.0,
          22.0
         ],
         "text": "s v8api.peek"
        }
       },
       {
        "box": {
         "id": "obj-90",
         "maxclass": "newobj",
         "numinlets": 1,
         "numoutlets": 1,
         "outlettype": [
          ""
         ],
         "patching_rect": [
          980,
          120,
          93.0,
          22.0
         ],
         "text": "prepend set"
        }
       }
      ],
      "lines": [
       {
        "patchline": {
         "source": [
          "obj-44",
          0
         ],
         "destination": [
          "obj-47",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-44",
          0
         ],
         "destination": [
          "obj-48",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-45",
          0
         ],
         "destination": [
          "obj-49",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-47",
          0
         ],
         "destination": [
          "obj-50",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-47",
          1
         ],
         "destination": [
          "obj-51",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-47",
          2
         ],
         "destination": [
          "obj-52",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-47",
          3
         ],
         "destination": [
          "obj-53",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-45",
          0
         ],
         "destination": [
          "obj-55",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-55",
          0
         ],
         "destination": [
          "obj-57",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-57",
          0
         ],
         "destination": [
          "obj-59",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-59",
          0
         ],
         "destination": [
          "obj-58",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-57",
          1
         ],
         "destination": [
          "obj-61",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-61",
          0
         ],
         "destination": [
          "obj-60",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-57",
          2
         ],
         "destination": [
          "obj-63",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-63",
          0
         ],
         "destination": [
          "obj-62",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-57",
          3
         ],
         "destination": [
          "obj-65",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-65",
          0
         ],
         "destination": [
          "obj-64",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-55",
          1
         ],
         "destination": [
          "obj-67",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-67",
          0
         ],
         "destination": [
          "obj-69",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-69",
          0
         ],
         "destination": [
          "obj-68",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-67",
          1
         ],
         "destination": [
          "obj-71",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-71",
          0
         ],
         "destination": [
          "obj-70",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-67",
          2
         ],
         "destination": [
          "obj-73",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-73",
          0
         ],
         "destination": [
          "obj-72",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-67",
          3
         ],
         "destination": [
          "obj-75",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-75",
          0
         ],
         "destination": [
          "obj-74",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-55",
          2
         ],
         "destination": [
          "obj-77",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-77",
          0
         ],
         "destination": [
          "obj-78",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-77",
          1
         ],
         "destination": [
          "obj-79",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-77",
          2
         ],
         "destination": [
          "obj-80",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-77",
          3
         ],
         "destination": [
          "obj-81",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-55",
          3
         ],
         "destination": [
          "obj-83",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-83",
          0
         ],
         "destination": [
          "obj-82",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-55",
          4
         ],
         "destination": [
          "obj-85",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-85",
          0
         ],
         "destination": [
          "obj-84",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-55",
          5
         ],
         "destination": [
          "obj-87",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-87",
          0
         ],
         "destination": [
          "obj-86",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-55",
          6
         ],
         "destination": [
          "obj-88",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-55",
          7
         ],
         "destination": [
          "obj-90",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-90",
          0
         ],
         "destination": [
          "obj-89",
          0
         ]
        }
       }
      ]
     }
    }
   },
   {
    "box": {
     "id": "obj-92",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      760,
      405,
      140,
      48.0
     ],
     "text": "\u2190 sorts the answers for the patch (double-click)",
     "fontsize": 12.0,
     "textcolor": [
      1.0,
      1.0,
      1.0,
      1.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-93",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      490,
      445,
      50,
      20.0
     ],
     "text": "status:",
     "fontsize": 12.0,
     "textcolor": [
      1.0,
      1.0,
      1.0,
      1.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-94",
     "maxclass": "newobj",
     "numinlets": 0,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      545,
      445,
      114.0,
      22.0
     ],
     "text": "r v8api.status"
    }
   },
   {
    "box": {
     "id": "obj-95",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      490,
      470,
      400,
      22.0
     ],
     "text": ""
    }
   },
   {
    "box": {
     "id": "obj-96",
     "maxclass": "panel",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      920,
      75,
      500,
      640
     ],
     "background": 1,
     "ignoreclick": 1,
     "bgcolor": [
      0.32,
      0.27,
      0.13,
      1.0
     ],
     "rounded": 10,
     "border": 0,
     "mode": 0
    }
   },
   {
    "box": {
     "id": "obj-97",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      935,
      85,
      420,
      24.0
     ],
     "text": "3 \u00b7 LOOK AT THE DATA",
     "fontsize": 16.0,
     "textcolor": [
      1.0,
      1.0,
      1.0,
      1.0
     ],
     "fontface": 1
    }
   },
   {
    "box": {
     "id": "obj-98",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      935,
      112,
      360,
      20.0
     ],
     "text": "the full JSON, click \u25b8 to unfold",
     "fontsize": 12.0,
     "textcolor": [
      1.0,
      1.0,
      1.0,
      1.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-99",
     "maxclass": "newobj",
     "numinlets": 0,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      1300,
      112,
      100.0,
      22.0
     ],
     "text": "r v8api.dict"
    }
   },
   {
    "box": {
     "id": "obj-100",
     "maxclass": "dict.view",
     "numinlets": 1,
     "numoutlets": 0,
     "outlettype": [],
     "patching_rect": [
      935,
      140,
      470,
      260.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-101",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      935,
      415,
      50,
      22.0
     ],
     "text": "paths"
    }
   },
   {
    "box": {
     "id": "obj-102",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      992,
      416,
      420,
      20.0
     ],
     "text": "\u2190 put every path in the menu (and in the Max Console)",
     "fontsize": 12.0,
     "textcolor": [
      1.0,
      1.0,
      1.0,
      1.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-103",
     "maxclass": "newobj",
     "numinlets": 0,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      935,
      445,
      107.0,
      22.0
     ],
     "text": "r v8api.paths"
    }
   },
   {
    "box": {
     "id": "obj-104",
     "maxclass": "umenu",
     "numinlets": 1,
     "numoutlets": 3,
     "outlettype": [
      "",
      "",
      ""
     ],
     "patching_rect": [
      935,
      470,
      470,
      22.0
     ],
     "parameter_enable": 0
    }
   },
   {
    "box": {
     "id": "obj-105",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 2,
     "outlettype": [
      "",
      ""
     ],
     "patching_rect": [
      935,
      500,
      51.0,
      22.0
     ],
     "text": "t s s"
    }
   },
   {
    "box": {
     "id": "obj-106",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      1000,
      530,
      100.0,
      22.0
     ],
     "text": "prepend peek"
    }
   },
   {
    "box": {
     "id": "obj-107",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 0,
     "outlettype": [],
     "patching_rect": [
      1000,
      560,
      93.0,
      22.0
     ],
     "text": "s v8api.cmd"
    }
   },
   {
    "box": {
     "id": "obj-108",
     "maxclass": "newobj",
     "numinlets": 0,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      1150,
      530,
      100.0,
      22.0
     ],
     "text": "r v8api.peek"
    }
   },
   {
    "box": {
     "id": "obj-109",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      1150,
      560,
      255,
      22.0
     ],
     "text": ""
    }
   },
   {
    "box": {
     "id": "obj-110",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      935,
      600,
      170,
      20.0
     ],
     "text": "chosen path \u2192 channel:",
     "fontsize": 12.0,
     "textcolor": [
      1.0,
      1.0,
      1.0,
      1.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-111",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      1110,
      630,
      72.0,
      22.0
     ],
     "text": "pack 0 s"
    }
   },
   {
    "box": {
     "id": "obj-112",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      1110,
      600,
      30,
      22.0
     ],
     "text": "1"
    }
   },
   {
    "box": {
     "id": "obj-113",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      1148,
      600,
      30,
      22.0
     ],
     "text": "2"
    }
   },
   {
    "box": {
     "id": "obj-114",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      1186,
      600,
      30,
      22.0
     ],
     "text": "3"
    }
   },
   {
    "box": {
     "id": "obj-115",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      1224,
      600,
      30,
      22.0
     ],
     "text": "4"
    }
   },
   {
    "box": {
     "id": "obj-116",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      1110,
      660,
      107.0,
      22.0
     ],
     "text": "prepend watch"
    }
   },
   {
    "box": {
     "id": "obj-117",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 0,
     "outlettype": [],
     "patching_rect": [
      1110,
      688,
      93.0,
      22.0
     ],
     "text": "s v8api.cmd"
    }
   },
   {
    "box": {
     "id": "obj-118",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      935,
      630,
      165,
      34.0
     ],
     "text": "pick a path in the menu, then click 1-4",
     "fontsize": 12.0,
     "textcolor": [
      1.0,
      1.0,
      1.0,
      1.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-119",
     "maxclass": "panel",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      15,
      515,
      890,
      655
     ],
     "background": 1,
     "ignoreclick": 1,
     "bgcolor": [
      0.27,
      0.18,
      0.32,
      1.0
     ],
     "rounded": 10,
     "border": 0,
     "mode": 0
    }
   },
   {
    "box": {
     "id": "obj-120",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      30,
      525,
      600,
      24.0
     ],
     "text": "4 \u00b7 CHANNELS: from data to 0..255",
     "fontsize": 16.0,
     "textcolor": [
      1.0,
      1.0,
      1.0,
      1.0
     ],
     "fontface": 1
    }
   },
   {
    "box": {
     "id": "obj-121",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      30,
      550,
      860,
      20.0
     ],
     "text": "range = the values you expect; that becomes 0..255. Feel free to change it.",
     "fontsize": 12.0,
     "textcolor": [
      1.0,
      1.0,
      1.0,
      1.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-122",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      30,
      585,
      110,
      24.0
     ],
     "text": "CHANNEL 1",
     "fontsize": 16.0,
     "textcolor": [
      1.0,
      1.0,
      1.0,
      1.0
     ],
     "fontface": 1
    }
   },
   {
    "box": {
     "id": "obj-123",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      145,
      588,
      95,
      20.0
     ],
     "text": "servo, pin 9",
     "fontsize": 12.0,
     "textcolor": [
      1.0,
      1.0,
      1.0,
      1.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-124",
     "maxclass": "newobj",
     "numinlets": 0,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      30,
      615,
      114.0,
      22.0
     ],
     "text": "r v8api.label1"
    }
   },
   {
    "box": {
     "id": "obj-125",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      30,
      640,
      205,
      22.0
     ],
     "text": ""
    }
   },
   {
    "box": {
     "id": "obj-126",
     "maxclass": "newobj",
     "numinlets": 0,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      30,
      670,
      107.0,
      22.0
     ],
     "text": "r v8api.show1"
    }
   },
   {
    "box": {
     "id": "obj-127",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      30,
      695,
      205,
      22.0
     ],
     "text": ""
    }
   },
   {
    "box": {
     "id": "obj-128",
     "maxclass": "newobj",
     "numinlets": 0,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      30,
      730,
      100.0,
      22.0
     ],
     "text": "r v8api.val1"
    }
   },
   {
    "box": {
     "id": "obj-129",
     "maxclass": "flonum",
     "numinlets": 1,
     "numoutlets": 2,
     "outlettype": [
      "",
      ""
     ],
     "patching_rect": [
      30,
      755,
      75,
      22.0
     ],
     "parameter_enable": 0
    }
   },
   {
    "box": {
     "id": "obj-130",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      110,
      756,
      60,
      20.0
     ],
     "text": "number",
     "fontsize": 12.0,
     "textcolor": [
      1.0,
      1.0,
      1.0,
      1.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-131",
     "maxclass": "newobj",
     "numinlets": 0,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      30,
      790,
      114.0,
      22.0
     ],
     "text": "r v8api.range1"
    }
   },
   {
    "box": {
     "id": "obj-132",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 2,
     "outlettype": [
      "",
      ""
     ],
     "patching_rect": [
      30,
      815,
      133,
      22.0
     ],
     "text": "unpack 0. 0."
    }
   },
   {
    "box": {
     "id": "obj-133",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      30,
      846,
      50,
      20.0
     ],
     "text": "range",
     "fontsize": 12.0,
     "textcolor": [
      1.0,
      1.0,
      1.0,
      1.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-134",
     "maxclass": "flonum",
     "numinlets": 1,
     "numoutlets": 2,
     "outlettype": [
      "",
      ""
     ],
     "patching_rect": [
      85,
      845,
      72,
      22.0
     ],
     "parameter_enable": 0
    }
   },
   {
    "box": {
     "id": "obj-135",
     "maxclass": "flonum",
     "numinlets": 1,
     "numoutlets": 2,
     "outlettype": [
      "",
      ""
     ],
     "patching_rect": [
      163,
      845,
      72,
      22.0
     ],
     "parameter_enable": 0
    }
   },
   {
    "box": {
     "id": "obj-136",
     "maxclass": "newobj",
     "numinlets": 6,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      30,
      880,
      205,
      22.0
     ],
     "text": "scale 0. 1. 0. 255."
    }
   },
   {
    "box": {
     "id": "obj-137",
     "maxclass": "newobj",
     "numinlets": 3,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      30,
      910,
      100.0,
      22.0
     ],
     "text": "clip 0. 255."
    }
   },
   {
    "box": {
     "id": "obj-138",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      30,
      940,
      55,
      22.0
     ],
     "text": "$1 300"
    }
   },
   {
    "box": {
     "id": "obj-139",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      90,
      941,
      145,
      20.0
     ],
     "text": "glide over 300 ms",
     "fontsize": 12.0,
     "textcolor": [
      1.0,
      1.0,
      1.0,
      1.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-140",
     "maxclass": "newobj",
     "numinlets": 3,
     "numoutlets": 3,
     "outlettype": [
      "",
      "",
      ""
     ],
     "patching_rect": [
      30,
      970,
      79.0,
      22.0
     ],
     "text": "line 0 50"
    }
   },
   {
    "box": {
     "id": "obj-141",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 3,
     "outlettype": [
      "",
      "",
      ""
     ],
     "patching_rect": [
      30,
      1000,
      58.0,
      22.0
     ],
     "text": "change"
    }
   },
   {
    "box": {
     "id": "obj-142",
     "maxclass": "slider",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      30,
      1030,
      205,
      22.0
     ],
     "size": 256.0,
     "parameter_enable": 0
    }
   },
   {
    "box": {
     "id": "obj-143",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      30,
      1054,
      205,
      20.0
     ],
     "text": "0 \u2026\u2026\u2026 255   (drag = test)",
     "fontsize": 12.0,
     "textcolor": [
      1.0,
      1.0,
      1.0,
      1.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-144",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      30,
      1080,
      114.0,
      22.0
     ],
     "text": "mm.cmd_out s 9"
    }
   },
   {
    "box": {
     "id": "obj-145",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 0,
     "outlettype": [],
     "patching_rect": [
      30,
      1110,
      93.0,
      22.0
     ],
     "text": "s v8api.out"
    }
   },
   {
    "box": {
     "id": "obj-146",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      250,
      585,
      110,
      24.0
     ],
     "text": "CHANNEL 2",
     "fontsize": 16.0,
     "textcolor": [
      1.0,
      1.0,
      1.0,
      1.0
     ],
     "fontface": 1
    }
   },
   {
    "box": {
     "id": "obj-147",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      365,
      588,
      95,
      20.0
     ],
     "text": "PWM, pin 5",
     "fontsize": 12.0,
     "textcolor": [
      1.0,
      1.0,
      1.0,
      1.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-148",
     "maxclass": "newobj",
     "numinlets": 0,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      250,
      615,
      114.0,
      22.0
     ],
     "text": "r v8api.label2"
    }
   },
   {
    "box": {
     "id": "obj-149",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      250,
      640,
      205,
      22.0
     ],
     "text": ""
    }
   },
   {
    "box": {
     "id": "obj-150",
     "maxclass": "newobj",
     "numinlets": 0,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      250,
      670,
      107.0,
      22.0
     ],
     "text": "r v8api.show2"
    }
   },
   {
    "box": {
     "id": "obj-151",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      250,
      695,
      205,
      22.0
     ],
     "text": ""
    }
   },
   {
    "box": {
     "id": "obj-152",
     "maxclass": "newobj",
     "numinlets": 0,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      250,
      730,
      100.0,
      22.0
     ],
     "text": "r v8api.val2"
    }
   },
   {
    "box": {
     "id": "obj-153",
     "maxclass": "flonum",
     "numinlets": 1,
     "numoutlets": 2,
     "outlettype": [
      "",
      ""
     ],
     "patching_rect": [
      250,
      755,
      75,
      22.0
     ],
     "parameter_enable": 0
    }
   },
   {
    "box": {
     "id": "obj-154",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      330,
      756,
      60,
      20.0
     ],
     "text": "number",
     "fontsize": 12.0,
     "textcolor": [
      1.0,
      1.0,
      1.0,
      1.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-155",
     "maxclass": "newobj",
     "numinlets": 0,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      250,
      790,
      114.0,
      22.0
     ],
     "text": "r v8api.range2"
    }
   },
   {
    "box": {
     "id": "obj-156",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 2,
     "outlettype": [
      "",
      ""
     ],
     "patching_rect": [
      250,
      815,
      133,
      22.0
     ],
     "text": "unpack 0. 0."
    }
   },
   {
    "box": {
     "id": "obj-157",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      250,
      846,
      50,
      20.0
     ],
     "text": "range",
     "fontsize": 12.0,
     "textcolor": [
      1.0,
      1.0,
      1.0,
      1.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-158",
     "maxclass": "flonum",
     "numinlets": 1,
     "numoutlets": 2,
     "outlettype": [
      "",
      ""
     ],
     "patching_rect": [
      305,
      845,
      72,
      22.0
     ],
     "parameter_enable": 0
    }
   },
   {
    "box": {
     "id": "obj-159",
     "maxclass": "flonum",
     "numinlets": 1,
     "numoutlets": 2,
     "outlettype": [
      "",
      ""
     ],
     "patching_rect": [
      383,
      845,
      72,
      22.0
     ],
     "parameter_enable": 0
    }
   },
   {
    "box": {
     "id": "obj-160",
     "maxclass": "newobj",
     "numinlets": 6,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      250,
      880,
      205,
      22.0
     ],
     "text": "scale 0. 1. 0. 255."
    }
   },
   {
    "box": {
     "id": "obj-161",
     "maxclass": "newobj",
     "numinlets": 3,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      250,
      910,
      100.0,
      22.0
     ],
     "text": "clip 0. 255."
    }
   },
   {
    "box": {
     "id": "obj-162",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      250,
      940,
      55,
      22.0
     ],
     "text": "$1 300"
    }
   },
   {
    "box": {
     "id": "obj-163",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      310,
      941,
      145,
      20.0
     ],
     "text": "glide over 300 ms",
     "fontsize": 12.0,
     "textcolor": [
      1.0,
      1.0,
      1.0,
      1.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-164",
     "maxclass": "newobj",
     "numinlets": 3,
     "numoutlets": 3,
     "outlettype": [
      "",
      "",
      ""
     ],
     "patching_rect": [
      250,
      970,
      79.0,
      22.0
     ],
     "text": "line 0 50"
    }
   },
   {
    "box": {
     "id": "obj-165",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 3,
     "outlettype": [
      "",
      "",
      ""
     ],
     "patching_rect": [
      250,
      1000,
      58.0,
      22.0
     ],
     "text": "change"
    }
   },
   {
    "box": {
     "id": "obj-166",
     "maxclass": "slider",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      250,
      1030,
      205,
      22.0
     ],
     "size": 256.0,
     "parameter_enable": 0
    }
   },
   {
    "box": {
     "id": "obj-167",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      250,
      1054,
      205,
      20.0
     ],
     "text": "0 \u2026\u2026\u2026 255   (drag = test)",
     "fontsize": 12.0,
     "textcolor": [
      1.0,
      1.0,
      1.0,
      1.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-168",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      250,
      1080,
      114.0,
      22.0
     ],
     "text": "mm.cmd_out a 5"
    }
   },
   {
    "box": {
     "id": "obj-169",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 0,
     "outlettype": [],
     "patching_rect": [
      250,
      1110,
      93.0,
      22.0
     ],
     "text": "s v8api.out"
    }
   },
   {
    "box": {
     "id": "obj-170",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      470,
      585,
      110,
      24.0
     ],
     "text": "CHANNEL 3",
     "fontsize": 16.0,
     "textcolor": [
      1.0,
      1.0,
      1.0,
      1.0
     ],
     "fontface": 1
    }
   },
   {
    "box": {
     "id": "obj-171",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      585,
      588,
      95,
      20.0
     ],
     "text": "PWM, pin 6",
     "fontsize": 12.0,
     "textcolor": [
      1.0,
      1.0,
      1.0,
      1.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-172",
     "maxclass": "newobj",
     "numinlets": 0,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      470,
      615,
      114.0,
      22.0
     ],
     "text": "r v8api.label3"
    }
   },
   {
    "box": {
     "id": "obj-173",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      470,
      640,
      205,
      22.0
     ],
     "text": ""
    }
   },
   {
    "box": {
     "id": "obj-174",
     "maxclass": "newobj",
     "numinlets": 0,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      470,
      670,
      107.0,
      22.0
     ],
     "text": "r v8api.show3"
    }
   },
   {
    "box": {
     "id": "obj-175",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      470,
      695,
      205,
      22.0
     ],
     "text": ""
    }
   },
   {
    "box": {
     "id": "obj-176",
     "maxclass": "newobj",
     "numinlets": 0,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      470,
      730,
      100.0,
      22.0
     ],
     "text": "r v8api.val3"
    }
   },
   {
    "box": {
     "id": "obj-177",
     "maxclass": "flonum",
     "numinlets": 1,
     "numoutlets": 2,
     "outlettype": [
      "",
      ""
     ],
     "patching_rect": [
      470,
      755,
      75,
      22.0
     ],
     "parameter_enable": 0
    }
   },
   {
    "box": {
     "id": "obj-178",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      550,
      756,
      60,
      20.0
     ],
     "text": "number",
     "fontsize": 12.0,
     "textcolor": [
      1.0,
      1.0,
      1.0,
      1.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-179",
     "maxclass": "newobj",
     "numinlets": 0,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      470,
      790,
      114.0,
      22.0
     ],
     "text": "r v8api.range3"
    }
   },
   {
    "box": {
     "id": "obj-180",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 2,
     "outlettype": [
      "",
      ""
     ],
     "patching_rect": [
      470,
      815,
      133,
      22.0
     ],
     "text": "unpack 0. 0."
    }
   },
   {
    "box": {
     "id": "obj-181",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      470,
      846,
      50,
      20.0
     ],
     "text": "range",
     "fontsize": 12.0,
     "textcolor": [
      1.0,
      1.0,
      1.0,
      1.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-182",
     "maxclass": "flonum",
     "numinlets": 1,
     "numoutlets": 2,
     "outlettype": [
      "",
      ""
     ],
     "patching_rect": [
      525,
      845,
      72,
      22.0
     ],
     "parameter_enable": 0
    }
   },
   {
    "box": {
     "id": "obj-183",
     "maxclass": "flonum",
     "numinlets": 1,
     "numoutlets": 2,
     "outlettype": [
      "",
      ""
     ],
     "patching_rect": [
      603,
      845,
      72,
      22.0
     ],
     "parameter_enable": 0
    }
   },
   {
    "box": {
     "id": "obj-184",
     "maxclass": "newobj",
     "numinlets": 6,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      470,
      880,
      205,
      22.0
     ],
     "text": "scale 0. 1. 0. 255."
    }
   },
   {
    "box": {
     "id": "obj-185",
     "maxclass": "newobj",
     "numinlets": 3,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      470,
      910,
      100.0,
      22.0
     ],
     "text": "clip 0. 255."
    }
   },
   {
    "box": {
     "id": "obj-186",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      470,
      940,
      55,
      22.0
     ],
     "text": "$1 300"
    }
   },
   {
    "box": {
     "id": "obj-187",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      530,
      941,
      145,
      20.0
     ],
     "text": "glide over 300 ms",
     "fontsize": 12.0,
     "textcolor": [
      1.0,
      1.0,
      1.0,
      1.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-188",
     "maxclass": "newobj",
     "numinlets": 3,
     "numoutlets": 3,
     "outlettype": [
      "",
      "",
      ""
     ],
     "patching_rect": [
      470,
      970,
      79.0,
      22.0
     ],
     "text": "line 0 50"
    }
   },
   {
    "box": {
     "id": "obj-189",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 3,
     "outlettype": [
      "",
      "",
      ""
     ],
     "patching_rect": [
      470,
      1000,
      58.0,
      22.0
     ],
     "text": "change"
    }
   },
   {
    "box": {
     "id": "obj-190",
     "maxclass": "slider",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      470,
      1030,
      205,
      22.0
     ],
     "size": 256.0,
     "parameter_enable": 0
    }
   },
   {
    "box": {
     "id": "obj-191",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      470,
      1054,
      205,
      20.0
     ],
     "text": "0 \u2026\u2026\u2026 255   (drag = test)",
     "fontsize": 12.0,
     "textcolor": [
      1.0,
      1.0,
      1.0,
      1.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-192",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      470,
      1080,
      114.0,
      22.0
     ],
     "text": "mm.cmd_out a 6"
    }
   },
   {
    "box": {
     "id": "obj-193",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 0,
     "outlettype": [],
     "patching_rect": [
      470,
      1110,
      93.0,
      22.0
     ],
     "text": "s v8api.out"
    }
   },
   {
    "box": {
     "id": "obj-194",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      690,
      585,
      110,
      24.0
     ],
     "text": "CHANNEL 4",
     "fontsize": 16.0,
     "textcolor": [
      1.0,
      1.0,
      1.0,
      1.0
     ],
     "fontface": 1
    }
   },
   {
    "box": {
     "id": "obj-195",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      805,
      588,
      95,
      20.0
     ],
     "text": "on/off, pin 7",
     "fontsize": 12.0,
     "textcolor": [
      1.0,
      1.0,
      1.0,
      1.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-196",
     "maxclass": "newobj",
     "numinlets": 0,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      690,
      615,
      114.0,
      22.0
     ],
     "text": "r v8api.label4"
    }
   },
   {
    "box": {
     "id": "obj-197",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      690,
      640,
      205,
      22.0
     ],
     "text": ""
    }
   },
   {
    "box": {
     "id": "obj-198",
     "maxclass": "newobj",
     "numinlets": 0,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      690,
      670,
      107.0,
      22.0
     ],
     "text": "r v8api.show4"
    }
   },
   {
    "box": {
     "id": "obj-199",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      690,
      695,
      205,
      22.0
     ],
     "text": ""
    }
   },
   {
    "box": {
     "id": "obj-200",
     "maxclass": "newobj",
     "numinlets": 0,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      690,
      730,
      100.0,
      22.0
     ],
     "text": "r v8api.val4"
    }
   },
   {
    "box": {
     "id": "obj-201",
     "maxclass": "flonum",
     "numinlets": 1,
     "numoutlets": 2,
     "outlettype": [
      "",
      ""
     ],
     "patching_rect": [
      690,
      755,
      75,
      22.0
     ],
     "parameter_enable": 0
    }
   },
   {
    "box": {
     "id": "obj-202",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      770,
      756,
      60,
      20.0
     ],
     "text": "number",
     "fontsize": 12.0,
     "textcolor": [
      1.0,
      1.0,
      1.0,
      1.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-203",
     "maxclass": "newobj",
     "numinlets": 0,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      690,
      790,
      114.0,
      22.0
     ],
     "text": "r v8api.range4"
    }
   },
   {
    "box": {
     "id": "obj-204",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 2,
     "outlettype": [
      "",
      ""
     ],
     "patching_rect": [
      690,
      815,
      133,
      22.0
     ],
     "text": "unpack 0. 0."
    }
   },
   {
    "box": {
     "id": "obj-205",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      690,
      846,
      50,
      20.0
     ],
     "text": "range",
     "fontsize": 12.0,
     "textcolor": [
      1.0,
      1.0,
      1.0,
      1.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-206",
     "maxclass": "flonum",
     "numinlets": 1,
     "numoutlets": 2,
     "outlettype": [
      "",
      ""
     ],
     "patching_rect": [
      745,
      845,
      72,
      22.0
     ],
     "parameter_enable": 0
    }
   },
   {
    "box": {
     "id": "obj-207",
     "maxclass": "flonum",
     "numinlets": 1,
     "numoutlets": 2,
     "outlettype": [
      "",
      ""
     ],
     "patching_rect": [
      823,
      845,
      72,
      22.0
     ],
     "parameter_enable": 0
    }
   },
   {
    "box": {
     "id": "obj-208",
     "maxclass": "newobj",
     "numinlets": 6,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      690,
      880,
      205,
      22.0
     ],
     "text": "scale 0. 1. 0. 255."
    }
   },
   {
    "box": {
     "id": "obj-209",
     "maxclass": "newobj",
     "numinlets": 3,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      690,
      910,
      100.0,
      22.0
     ],
     "text": "clip 0. 255."
    }
   },
   {
    "box": {
     "id": "obj-210",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      690,
      940,
      55,
      22.0
     ],
     "text": "$1 300"
    }
   },
   {
    "box": {
     "id": "obj-211",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      750,
      941,
      145,
      20.0
     ],
     "text": "glide over 300 ms",
     "fontsize": 12.0,
     "textcolor": [
      1.0,
      1.0,
      1.0,
      1.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-212",
     "maxclass": "newobj",
     "numinlets": 3,
     "numoutlets": 3,
     "outlettype": [
      "",
      "",
      ""
     ],
     "patching_rect": [
      690,
      970,
      79.0,
      22.0
     ],
     "text": "line 0 50"
    }
   },
   {
    "box": {
     "id": "obj-213",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 3,
     "outlettype": [
      "",
      "",
      ""
     ],
     "patching_rect": [
      690,
      1000,
      58.0,
      22.0
     ],
     "text": "change"
    }
   },
   {
    "box": {
     "id": "obj-214",
     "maxclass": "slider",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      690,
      1030,
      205,
      22.0
     ],
     "size": 256.0,
     "parameter_enable": 0
    }
   },
   {
    "box": {
     "id": "obj-215",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      690,
      1054,
      205,
      20.0
     ],
     "text": "0 \u2026\u2026\u2026 255   (drag = test)",
     "fontsize": 12.0,
     "textcolor": [
      1.0,
      1.0,
      1.0,
      1.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-216",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      690,
      1080,
      114.0,
      22.0
     ],
     "text": "mm.cmd_out d 7"
    }
   },
   {
    "box": {
     "id": "obj-217",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 0,
     "outlettype": [],
     "patching_rect": [
      690,
      1110,
      93.0,
      22.0
     ],
     "text": "s v8api.out"
    }
   },
   {
    "box": {
     "id": "obj-218",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      30,
      1135,
      860,
      34.0
     ],
     "text": "[mm.cmd_out s 9] = servo on pin 9 \u00b7 a = PWM (pins 3 5 6 10 11) \u00b7 d = on/off. Change the letter and pin number to match your setup.",
     "fontsize": 12.0,
     "textcolor": [
      1.0,
      1.0,
      1.0,
      1.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-219",
     "maxclass": "panel",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      920,
      730,
      500,
      440
     ],
     "background": 1,
     "ignoreclick": 1,
     "bgcolor": [
      0.34,
      0.17,
      0.16,
      1.0
     ],
     "rounded": 10,
     "border": 0,
     "mode": 0
    }
   },
   {
    "box": {
     "id": "obj-220",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      935,
      740,
      420,
      24.0
     ],
     "text": "5 \u00b7 TO THE ARDUINO (serial)",
     "fontsize": 16.0,
     "textcolor": [
      1.0,
      1.0,
      1.0,
      1.0
     ],
     "fontface": 1
    }
   },
   {
    "box": {
     "id": "obj-221",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      935,
      765,
      470,
      34.0
     ],
     "text": "upload put_this_on-your_arduino (the CMD sketch), close the Arduino Serial Monitor, then pick the port.",
     "fontsize": 12.0,
     "textcolor": [
      1.0,
      1.0,
      1.0,
      1.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-222",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      935,
      810,
      72.0,
      22.0
     ],
     "text": "loadbang"
    }
   },
   {
    "box": {
     "id": "obj-223",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      1010,
      810,
      45,
      22.0
     ],
     "text": "print"
    }
   },
   {
    "box": {
     "id": "obj-224",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      1060,
      811,
      150,
      20.0
     ],
     "text": "\u2190 refresh ports",
     "fontsize": 12.0,
     "textcolor": [
      1.0,
      1.0,
      1.0,
      1.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-225",
     "maxclass": "newobj",
     "numinlets": 0,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      935,
      840,
      107.0,
      22.0
     ],
     "text": "r v8api.ports"
    }
   },
   {
    "box": {
     "id": "obj-226",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      1065,
      841,
      165,
      20.0
     ],
     "text": "\u2193 pick your board",
     "fontsize": 12.0,
     "textcolor": [
      1.0,
      1.0,
      1.0,
      1.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-227",
     "maxclass": "umenu",
     "numinlets": 1,
     "numoutlets": 3,
     "outlettype": [
      "",
      "",
      ""
     ],
     "patching_rect": [
      935,
      865,
      260,
      22.0
     ],
     "parameter_enable": 0
    }
   },
   {
    "box": {
     "id": "obj-228",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 4,
     "outlettype": [
      "",
      "",
      "",
      ""
     ],
     "patching_rect": [
      935,
      895,
      90,
      22.0
     ],
     "text": "t b 1 b s"
    }
   },
   {
    "box": {
     "id": "obj-229",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      1040,
      925,
      100.0,
      22.0
     ],
     "text": "prepend port"
    }
   },
   {
    "box": {
     "id": "obj-230",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      1150,
      925,
      40,
      22.0
     ],
     "text": "open"
    }
   },
   {
    "box": {
     "id": "obj-231",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      935,
      955,
      45,
      22.0
     ],
     "text": "close"
    }
   },
   {
    "box": {
     "id": "obj-232",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 2,
     "outlettype": [
      "",
      ""
     ],
     "patching_rect": [
      985,
      955,
      79.0,
      22.0
     ],
     "text": "t 0 close"
    }
   },
   {
    "box": {
     "id": "obj-233",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      1072,
      956,
      160,
      20.0
     ],
     "text": "\u2190 release the port",
     "fontsize": 12.0,
     "textcolor": [
      1.0,
      1.0,
      1.0,
      1.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-234",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      935,
      985,
      75,
      22.0
     ],
     "text": "mode none"
    }
   },
   {
    "box": {
     "id": "obj-235",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 0,
     "outlettype": [],
     "patching_rect": [
      1015,
      985,
      93.0,
      22.0
     ],
     "text": "s v8api.out"
    }
   },
   {
    "box": {
     "id": "obj-236",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      1113.0,
      986,
      122.0,
      34.0
     ],
     "text": "\u2190 Arduino stays quiet",
     "fontsize": 12.0,
     "textcolor": [
      1.0,
      1.0,
      1.0,
      1.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-237",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 2,
     "outlettype": [
      "",
      ""
     ],
     "patching_rect": [
      935,
      1035,
      210,
      22.0
     ],
     "text": "serial a 9600 @autoopen 0 @dtr 1"
    }
   },
   {
    "box": {
     "id": "obj-245",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      1160,
      1035,
      93.0,
      22.0
     ],
     "text": "p port_list",
     "patcher": {
      "fileversion": 1,
      "appversion": {
       "major": 9,
       "minor": 2,
       "revision": 1,
       "architecture": "x64",
       "modernui": 1
      },
      "classnamespace": "box",
      "rect": [
       200,
       200,
       400,
       260
      ],
      "gridsize": [
       15.0,
       15.0
      ],
      "default_fontsize": 12.0,
      "boxes": [
       {
        "box": {
         "id": "obj-238",
         "maxclass": "newobj",
         "numinlets": 0,
         "numoutlets": 1,
         "outlettype": [
          ""
         ],
         "patching_rect": [
          20,
          20,
          30,
          22.0
         ],
         "text": "inlet",
         "comment": "from [serial] right outlet"
        }
       },
       {
        "box": {
         "id": "obj-239",
         "maxclass": "newobj",
         "numinlets": 2,
         "numoutlets": 2,
         "outlettype": [
          "",
          ""
         ],
         "patching_rect": [
          20,
          55,
          86.0,
          22.0
         ],
         "text": "route port"
        }
       },
       {
        "box": {
         "id": "obj-240",
         "maxclass": "newobj",
         "numinlets": 1,
         "numoutlets": 2,
         "outlettype": [
          "",
          ""
         ],
         "patching_rect": [
          20,
          85,
          51.0,
          22.0
         ],
         "text": "t l b"
        }
       },
       {
        "box": {
         "id": "obj-241",
         "maxclass": "message",
         "numinlets": 2,
         "numoutlets": 1,
         "outlettype": [
          ""
         ],
         "patching_rect": [
          120,
          115,
          40,
          22.0
         ],
         "text": "clear"
        }
       },
       {
        "box": {
         "id": "obj-242",
         "maxclass": "newobj",
         "numinlets": 1,
         "numoutlets": 1,
         "outlettype": [
          ""
         ],
         "patching_rect": [
          20,
          115,
          44.0,
          22.0
         ],
         "text": "iter"
        }
       },
       {
        "box": {
         "id": "obj-243",
         "maxclass": "newobj",
         "numinlets": 1,
         "numoutlets": 1,
         "outlettype": [
          ""
         ],
         "patching_rect": [
          20,
          145,
          114.0,
          22.0
         ],
         "text": "prepend append"
        }
       },
       {
        "box": {
         "id": "obj-244",
         "maxclass": "newobj",
         "numinlets": 1,
         "numoutlets": 0,
         "outlettype": [],
         "patching_rect": [
          20,
          180,
          30,
          22.0
         ],
         "text": "outlet",
         "comment": "to the port umenu"
        }
       }
      ],
      "lines": [
       {
        "patchline": {
         "source": [
          "obj-238",
          0
         ],
         "destination": [
          "obj-239",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-239",
          0
         ],
         "destination": [
          "obj-240",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-240",
          1
         ],
         "destination": [
          "obj-241",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-240",
          0
         ],
         "destination": [
          "obj-242",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-242",
          0
         ],
         "destination": [
          "obj-243",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-243",
          0
         ],
         "destination": [
          "obj-244",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-241",
          0
         ],
         "destination": [
          "obj-244",
          0
         ]
        }
       }
      ]
     }
    }
   },
   {
    "box": {
     "id": "obj-246",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 0,
     "outlettype": [],
     "patching_rect": [
      1160,
      1065,
      107.0,
      22.0
     ],
     "text": "s v8api.ports"
    }
   },
   {
    "box": {
     "id": "obj-247",
     "maxclass": "newobj",
     "numinlets": 0,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      1240,
      810,
      93.0,
      22.0
     ],
     "text": "r v8api.out"
    }
   },
   {
    "box": {
     "id": "obj-248",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      1240,
      840,
      72.0,
      22.0
     ],
     "text": "tosymbol"
    }
   },
   {
    "box": {
     "id": "obj-249",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 2,
     "outlettype": [
      "",
      ""
     ],
     "patching_rect": [
      1240,
      870,
      51.0,
      22.0
     ],
     "text": "t s s"
    }
   },
   {
    "box": {
     "id": "obj-250",
     "maxclass": "newobj",
     "numinlets": 3,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      1240,
      900,
      44.0,
      22.0
     ],
     "text": "atoi"
    }
   },
   {
    "box": {
     "id": "obj-251",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      1240,
      930,
      79.0,
      22.0
     ],
     "text": "append 10"
    }
   },
   {
    "box": {
     "id": "obj-252",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      1240,
      960,
      44.0,
      22.0
     ],
     "text": "gate"
    }
   },
   {
    "box": {
     "id": "obj-253",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      1285,
      955,
      130,
      34.0
     ],
     "text": "opens once a port is chosen",
     "fontsize": 12.0,
     "textcolor": [
      1.0,
      1.0,
      1.0,
      1.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-254",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      1240,
      990,
      175,
      34.0
     ],
     "text": "CMD text + return, e.g. w s 9 90",
     "fontsize": 12.0,
     "textcolor": [
      1.0,
      1.0,
      1.0,
      1.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-255",
     "maxclass": "toggle",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      1330,
      840,
      24,
      24.0
     ],
     "parameter_enable": 0
    }
   },
   {
    "box": {
     "id": "obj-256",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      1358,
      842,
      60,
      20.0
     ],
     "text": "console",
     "fontsize": 12.0,
     "textcolor": [
      1.0,
      1.0,
      1.0,
      1.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-257",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      1330,
      870,
      44.0,
      22.0
     ],
     "text": "gate"
    }
   },
   {
    "box": {
     "id": "obj-258",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 0,
     "outlettype": [],
     "patching_rect": [
      1300,
      900,
      128.0,
      22.0
     ],
     "text": "print to_arduino"
    }
   },
   {
    "box": {
     "id": "obj-259",
     "maxclass": "panel",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      15,
      1185,
      1405,
      110
     ],
     "background": 1,
     "ignoreclick": 1,
     "bgcolor": [
      0.13,
      0.27,
      0.3,
      1.0
     ],
     "rounded": 10,
     "border": 0,
     "mode": 0
    }
   },
   {
    "box": {
     "id": "obj-260",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      30,
      1195,
      420,
      24.0
     ],
     "text": "6 \u00b7 WEB PAGE",
     "fontsize": 16.0,
     "textcolor": [
      1.0,
      1.0,
      1.0,
      1.0
     ],
     "fontface": 1
    }
   },
   {
    "box": {
     "id": "obj-261",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      30,
      1220,
      1370,
      20.0
     ],
     "text": "Max serves a small web page with the live channels. Open it here, or on your phone (same wifi): http://<this computer's IP address>:8080. Change the page in web_page.html.",
     "fontsize": 12.0,
     "textcolor": [
      1.0,
      1.0,
      1.0,
      1.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-262",
     "maxclass": "newobj",
     "numinlets": 0,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      30,
      1250,
      100.0,
      22.0
     ],
     "text": "r v8api.info"
    }
   },
   {
    "box": {
     "id": "obj-263",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      140.0,
      1250,
      100.0,
      22.0
     ],
     "text": "prepend info"
    }
   },
   {
    "box": {
     "id": "obj-264",
     "maxclass": "newobj",
     "numinlets": 0,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      300,
      1250,
      114.0,
      22.0
     ],
     "text": "r v8api.values"
    }
   },
   {
    "box": {
     "id": "obj-265",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      424.0,
      1250,
      107.0,
      22.0
     ],
     "text": "prepend value"
    }
   },
   {
    "box": {
     "id": "obj-266",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      600,
      1250,
      261.0,
      22.0
     ],
     "text": "v8 web_server.js 8080 web_page.html"
    }
   },
   {
    "box": {
     "id": "obj-267",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 0,
     "outlettype": [],
     "patching_rect": [
      876.0,
      1250,
      93.0,
      22.0
     ],
     "text": "s v8api.cmd"
    }
   },
   {
    "box": {
     "id": "obj-268",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      994.0,
      1250,
      303.0,
      22.0
     ],
     "text": "; max launchbrowser http://localhost:8080"
    }
   },
   {
    "box": {
     "id": "obj-269",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      1303.0,
      1251,
      170,
      20.0
     ],
     "text": "\u2190 open in your browser",
     "fontsize": 12.0,
     "textcolor": [
      1.0,
      1.0,
      1.0,
      1.0
     ]
    }
   }
  ],
  "lines": [
   {
    "patchline": {
     "source": [
      "obj-7",
      0
     ],
     "destination": [
      "obj-6",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-9",
      0
     ],
     "destination": [
      "obj-6",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-11",
      0
     ],
     "destination": [
      "obj-6",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-13",
      0
     ],
     "destination": [
      "obj-6",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-15",
      0
     ],
     "destination": [
      "obj-6",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-17",
      0
     ],
     "destination": [
      "obj-6",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-20",
      0
     ],
     "destination": [
      "obj-6",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-21",
      0
     ],
     "destination": [
      "obj-6",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-22",
      0
     ],
     "destination": [
      "obj-6",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-23",
      0
     ],
     "destination": [
      "obj-6",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-29",
      0
     ],
     "destination": [
      "obj-31",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-30",
      0
     ],
     "destination": [
      "obj-33",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-37",
      0
     ],
     "destination": [
      "obj-33",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-27",
      0
     ],
     "destination": [
      "obj-38",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-31",
      0
     ],
     "destination": [
      "obj-35",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-33",
      0
     ],
     "destination": [
      "obj-36",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-35",
      0
     ],
     "destination": [
      "obj-38",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-36",
      0
     ],
     "destination": [
      "obj-38",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-40",
      0
     ],
     "destination": [
      "obj-41",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-41",
      0
     ],
     "destination": [
      "obj-42",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-41",
      1
     ],
     "destination": [
      "obj-91",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-41",
      2
     ],
     "destination": [
      "obj-91",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-94",
      0
     ],
     "destination": [
      "obj-95",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-99",
      0
     ],
     "destination": [
      "obj-100",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-103",
      0
     ],
     "destination": [
      "obj-104",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-101",
      0
     ],
     "destination": [
      "obj-107",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-104",
      1
     ],
     "destination": [
      "obj-105",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-105",
      1
     ],
     "destination": [
      "obj-106",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-106",
      0
     ],
     "destination": [
      "obj-107",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-108",
      0
     ],
     "destination": [
      "obj-109",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-112",
      0
     ],
     "destination": [
      "obj-111",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-113",
      0
     ],
     "destination": [
      "obj-111",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-114",
      0
     ],
     "destination": [
      "obj-111",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-115",
      0
     ],
     "destination": [
      "obj-111",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-105",
      0
     ],
     "destination": [
      "obj-111",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-111",
      0
     ],
     "destination": [
      "obj-116",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-116",
      0
     ],
     "destination": [
      "obj-117",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-124",
      0
     ],
     "destination": [
      "obj-125",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-126",
      0
     ],
     "destination": [
      "obj-127",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-128",
      0
     ],
     "destination": [
      "obj-129",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-131",
      0
     ],
     "destination": [
      "obj-132",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-132",
      0
     ],
     "destination": [
      "obj-134",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-132",
      1
     ],
     "destination": [
      "obj-135",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-129",
      0
     ],
     "destination": [
      "obj-136",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-134",
      0
     ],
     "destination": [
      "obj-136",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-135",
      0
     ],
     "destination": [
      "obj-136",
      2
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-136",
      0
     ],
     "destination": [
      "obj-137",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-137",
      0
     ],
     "destination": [
      "obj-138",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-138",
      0
     ],
     "destination": [
      "obj-140",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-140",
      0
     ],
     "destination": [
      "obj-141",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-141",
      0
     ],
     "destination": [
      "obj-142",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-142",
      0
     ],
     "destination": [
      "obj-144",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-144",
      0
     ],
     "destination": [
      "obj-145",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-148",
      0
     ],
     "destination": [
      "obj-149",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-150",
      0
     ],
     "destination": [
      "obj-151",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-152",
      0
     ],
     "destination": [
      "obj-153",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-155",
      0
     ],
     "destination": [
      "obj-156",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-156",
      0
     ],
     "destination": [
      "obj-158",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-156",
      1
     ],
     "destination": [
      "obj-159",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-153",
      0
     ],
     "destination": [
      "obj-160",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-158",
      0
     ],
     "destination": [
      "obj-160",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-159",
      0
     ],
     "destination": [
      "obj-160",
      2
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-160",
      0
     ],
     "destination": [
      "obj-161",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-161",
      0
     ],
     "destination": [
      "obj-162",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-162",
      0
     ],
     "destination": [
      "obj-164",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-164",
      0
     ],
     "destination": [
      "obj-165",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-165",
      0
     ],
     "destination": [
      "obj-166",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-166",
      0
     ],
     "destination": [
      "obj-168",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-168",
      0
     ],
     "destination": [
      "obj-169",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-172",
      0
     ],
     "destination": [
      "obj-173",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-174",
      0
     ],
     "destination": [
      "obj-175",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-176",
      0
     ],
     "destination": [
      "obj-177",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-179",
      0
     ],
     "destination": [
      "obj-180",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-180",
      0
     ],
     "destination": [
      "obj-182",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-180",
      1
     ],
     "destination": [
      "obj-183",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-177",
      0
     ],
     "destination": [
      "obj-184",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-182",
      0
     ],
     "destination": [
      "obj-184",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-183",
      0
     ],
     "destination": [
      "obj-184",
      2
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-184",
      0
     ],
     "destination": [
      "obj-185",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-185",
      0
     ],
     "destination": [
      "obj-186",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-186",
      0
     ],
     "destination": [
      "obj-188",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-188",
      0
     ],
     "destination": [
      "obj-189",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-189",
      0
     ],
     "destination": [
      "obj-190",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-190",
      0
     ],
     "destination": [
      "obj-192",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-192",
      0
     ],
     "destination": [
      "obj-193",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-196",
      0
     ],
     "destination": [
      "obj-197",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-198",
      0
     ],
     "destination": [
      "obj-199",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-200",
      0
     ],
     "destination": [
      "obj-201",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-203",
      0
     ],
     "destination": [
      "obj-204",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-204",
      0
     ],
     "destination": [
      "obj-206",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-204",
      1
     ],
     "destination": [
      "obj-207",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-201",
      0
     ],
     "destination": [
      "obj-208",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-206",
      0
     ],
     "destination": [
      "obj-208",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-207",
      0
     ],
     "destination": [
      "obj-208",
      2
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-208",
      0
     ],
     "destination": [
      "obj-209",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-209",
      0
     ],
     "destination": [
      "obj-210",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-210",
      0
     ],
     "destination": [
      "obj-212",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-212",
      0
     ],
     "destination": [
      "obj-213",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-213",
      0
     ],
     "destination": [
      "obj-214",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-214",
      0
     ],
     "destination": [
      "obj-216",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-216",
      0
     ],
     "destination": [
      "obj-217",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-225",
      0
     ],
     "destination": [
      "obj-227",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-222",
      0
     ],
     "destination": [
      "obj-223",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-223",
      0
     ],
     "destination": [
      "obj-237",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-227",
      1
     ],
     "destination": [
      "obj-228",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-228",
      3
     ],
     "destination": [
      "obj-229",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-228",
      2
     ],
     "destination": [
      "obj-230",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-228",
      0
     ],
     "destination": [
      "obj-234",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-234",
      0
     ],
     "destination": [
      "obj-235",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-229",
      0
     ],
     "destination": [
      "obj-237",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-230",
      0
     ],
     "destination": [
      "obj-237",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-231",
      0
     ],
     "destination": [
      "obj-232",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-232",
      1
     ],
     "destination": [
      "obj-237",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-237",
      1
     ],
     "destination": [
      "obj-245",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-245",
      0
     ],
     "destination": [
      "obj-246",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-247",
      0
     ],
     "destination": [
      "obj-248",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-248",
      0
     ],
     "destination": [
      "obj-249",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-249",
      0
     ],
     "destination": [
      "obj-250",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-250",
      0
     ],
     "destination": [
      "obj-251",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-251",
      0
     ],
     "destination": [
      "obj-252",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-228",
      1
     ],
     "destination": [
      "obj-252",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-232",
      0
     ],
     "destination": [
      "obj-252",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-252",
      0
     ],
     "destination": [
      "obj-237",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-255",
      0
     ],
     "destination": [
      "obj-257",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-249",
      1
     ],
     "destination": [
      "obj-257",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-257",
      0
     ],
     "destination": [
      "obj-258",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-262",
      0
     ],
     "destination": [
      "obj-263",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-263",
      0
     ],
     "destination": [
      "obj-266",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-264",
      0
     ],
     "destination": [
      "obj-265",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-265",
      0
     ],
     "destination": [
      "obj-266",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-266",
      0
     ],
     "destination": [
      "obj-267",
      0
     ]
    }
   }
  ]
 }
}