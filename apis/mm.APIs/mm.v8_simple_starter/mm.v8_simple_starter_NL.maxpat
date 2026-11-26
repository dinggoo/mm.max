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
   1260.0,
   1000.0
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
      400,
      34.0
     ],
     "text": "v8 simpele starter",
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
      20,
      46,
      700,
      20.0
     ],
     "text": "Web-API \u2192 [v8 fetcher] \u2192 [dict] \u2192 [v8 reader] \u2192 [route] \u2192 getallen. Werkt met Max 9.2+.",
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
      900,
      20,
      300,
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
     "id": "obj-4",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      20,
      85,
      300,
      24.0
     ],
     "text": "1 \u00b7 OPHALEN",
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
     "id": "obj-5",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      20,
      115,
      330,
      22.0
     ],
     "text": "get https://api.wheretheiss.at/v1/satellites/25544"
    }
   },
   {
    "box": {
     "id": "obj-6",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      360,
      115,
      200,
      20.0
     ],
     "text": "\u2190 positie van het ISS",
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
     "id": "obj-7",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      20,
      145,
      560,
      22.0
     ],
     "text": "get https://api.open-meteo.com/v1/forecast?latitude=52.37&longitude=4.89&current=temperature_2m"
    }
   },
   {
    "box": {
     "id": "obj-8",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      590,
      145,
      160,
      20.0
     ],
     "text": "\u2190 weer in Amsterdam",
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
     "maxclass": "toggle",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      20,
      180,
      24,
      24.0
     ],
     "parameter_enable": 0
    }
   },
   {
    "box": {
     "id": "obj-10",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      50,
      180,
      75,
      22.0
     ],
     "text": "metro 5000"
    }
   },
   {
    "box": {
     "id": "obj-11",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      130,
      180,
      100,
      20.0
     ],
     "text": "\u2190 elke 5 s",
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
     "id": "obj-12",
     "maxclass": "v8.codebox",
     "numinlets": 1,
     "numoutlets": 2,
     "outlettype": [
      "",
      ""
     ],
     "patching_rect": [
      20,
      220,
      560,
      250
     ],
     "code": "// FETCHER: get <url>  \u2192  haalt JSON op en schrijft het in [dict api_data_nl]\noutlets = 2; // links: dictionary api_data_nl   rechts: status\n\nconst data = new Dict(\"api_data_nl\");\n\nasync function get(url) {\n  try {\n    const response = await fetch(url);\n    let json = await response.json();\n    if (Array.isArray(json)) json = { items: json }; // een dict wil sleutels\n    data.parse(JSON.stringify(json));\n    outlet(1, \"status\", response.status);\n    outlet(0, \"dictionary\", data.name);\n  } catch (error) {\n    outlet(1, \"fout\", error.message);\n  }\n}\n",
     "filename": "none",
     "fontface": 0,
     "fontname": "<Monospaced>",
     "fontsize": 12.0,
     "saved_object_attributes": {
      "parameter_enable": 0
     }
    }
   },
   {
    "box": {
     "id": "obj-13",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      590,
      450,
      80,
      22.0
     ],
     "text": "prepend set"
    }
   },
   {
    "box": {
     "id": "obj-14",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      680,
      450,
      140,
      22.0
     ],
     "text": ""
    }
   },
   {
    "box": {
     "id": "obj-15",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      600,
      220,
      240,
      24.0
     ],
     "text": "1b \u00b7 OF: [maxurl]",
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
     "id": "obj-16",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      600,
      245,
      240,
      34.0
     ],
     "text": "Hetzelfde zonder code. De reader hieronder werkt met allebei.",
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
      600,
      285,
      230,
      50.0
     ],
     "text": "clear, set url https://api.wheretheiss.at/v1/satellites/25544, set parse_type json, bang"
    }
   },
   {
    "box": {
     "id": "obj-18",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 4,
     "outlettype": [
      "",
      "",
      "",
      ""
     ],
     "patching_rect": [
      600,
      345,
      150,
      22.0
     ],
     "text": "dict maxurl_request_nl"
    }
   },
   {
    "box": {
     "id": "obj-19",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 2,
     "outlettype": [
      "",
      ""
     ],
     "patching_rect": [
      600,
      375,
      60,
      22.0
     ],
     "text": "maxurl"
    }
   },
   {
    "box": {
     "id": "obj-20",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 2,
     "outlettype": [
      "",
      ""
     ],
     "patching_rect": [
      600,
      405,
      120,
      22.0
     ],
     "text": "dict.unpack body:"
    }
   },
   {
    "box": {
     "id": "obj-21",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      725,
      405,
      115,
      20.0
     ],
     "text": "\u2190 body = de JSON",
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
     "id": "obj-22",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      850,
      85,
      300,
      24.0
     ],
     "text": "2 \u00b7 DE DICT",
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
     "id": "obj-23",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      850,
      112,
      380,
      34.0
     ],
     "text": "de fetcher schrijft in [dict api_data_nl]. Dubbelklik erop, of kijk hier:",
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
     "id": "obj-24",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 4,
     "outlettype": [
      "",
      "",
      "",
      ""
     ],
     "patching_rect": [
      850,
      150,
      120,
      22.0
     ],
     "text": "dict api_data_nl"
    }
   },
   {
    "box": {
     "id": "obj-25",
     "maxclass": "dict.view",
     "numinlets": 1,
     "numoutlets": 0,
     "outlettype": [],
     "patching_rect": [
      850,
      180,
      380,
      290.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-26",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      20,
      495,
      300,
      24.0
     ],
     "text": "3 \u00b7 DICT \u2192 MAX-DATA",
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
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      20,
      522,
      700,
      20.0
     ],
     "text": "de reader stuurt elke waarde als  <pad> <waarde>.  Pak wat je nodig hebt met [route]:",
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
     "id": "obj-28",
     "maxclass": "v8.codebox",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      20,
      550,
      560,
      280
     ],
     "code": "// READER: dictionary <naam>  \u2192  elke waarde als Max-bericht: <pad> <waarde>\n// bijv. \"latitude 52.3\"  of  \"current.temperature_2m 4.2\"\n\nfunction dictionary(name) {\n  const data = JSON.parse(new Dict(name).stringify());\n  walk(data, \"\");\n}\n\nfunction walk(value, path) {\n  if (value !== null && typeof value === \"object\") {\n    for (const key in value) walk(value[key], path ? path + \".\" + key : key);\n  } else if (typeof value === \"boolean\") {\n    outlet(0, path, value ? 1 : 0); // true/false wordt 1/0\n  } else {\n    outlet(0, path, value === null ? \"null\" : value);\n  }\n}\nwalk.local = 1;\n",
     "filename": "none",
     "fontface": 0,
     "fontname": "<Monospaced>",
     "fontsize": 12.0,
     "saved_object_attributes": {
      "parameter_enable": 0
     }
    }
   },
   {
    "box": {
     "id": "obj-29",
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
      20,
      845,
      400,
      22.0
     ],
     "text": "route latitude longitude altitude current.temperature_2m"
    }
   },
   {
    "box": {
     "id": "obj-30",
     "maxclass": "flonum",
     "numinlets": 1,
     "numoutlets": 2,
     "outlettype": [
      "",
      ""
     ],
     "patching_rect": [
      20,
      880,
      100,
      22.0
     ],
     "parameter_enable": 0
    }
   },
   {
    "box": {
     "id": "obj-31",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      20,
      905,
      105,
      34.0
     ],
     "text": "latitude",
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
     "id": "obj-32",
     "maxclass": "flonum",
     "numinlets": 1,
     "numoutlets": 2,
     "outlettype": [
      "",
      ""
     ],
     "patching_rect": [
      130,
      880,
      100,
      22.0
     ],
     "parameter_enable": 0
    }
   },
   {
    "box": {
     "id": "obj-33",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      130,
      905,
      105,
      34.0
     ],
     "text": "longitude",
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
     "id": "obj-34",
     "maxclass": "flonum",
     "numinlets": 1,
     "numoutlets": 2,
     "outlettype": [
      "",
      ""
     ],
     "patching_rect": [
      240,
      880,
      100,
      22.0
     ],
     "parameter_enable": 0
    }
   },
   {
    "box": {
     "id": "obj-35",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      240,
      905,
      105,
      34.0
     ],
     "text": "altitude",
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
     "id": "obj-36",
     "maxclass": "flonum",
     "numinlets": 1,
     "numoutlets": 2,
     "outlettype": [
      "",
      ""
     ],
     "patching_rect": [
      350,
      880,
      100,
      22.0
     ],
     "parameter_enable": 0
    }
   },
   {
    "box": {
     "id": "obj-37",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      350,
      905,
      105,
      34.0
     ],
     "text": "current.temperature_2m",
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
     "id": "obj-38",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      20,
      945,
      700,
      20.0
     ],
     "text": "Andere API? Klik op 'print', zoek het pad in de Max Console en typ het in [route].",
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
     "id": "obj-39",
     "maxclass": "toggle",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      600,
      550,
      24,
      24.0
     ],
     "parameter_enable": 0
    }
   },
   {
    "box": {
     "id": "obj-40",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      600,
      580,
      40,
      22.0
     ],
     "text": "gate"
    }
   },
   {
    "box": {
     "id": "obj-41",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 0,
     "outlettype": [],
     "patching_rect": [
      600,
      610,
      70,
      22.0
     ],
     "text": "print api"
    }
   },
   {
    "box": {
     "id": "obj-42",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      630,
      552,
      50,
      20.0
     ],
     "text": "print",
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
     "id": "obj-43",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      600,
      640,
      230,
      34.0
     ],
     "text": "\u2190 elk pad + waarde naar de Max Console",
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
      "obj-9",
      0
     ],
     "destination": [
      "obj-10",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-10",
      0
     ],
     "destination": [
      "obj-5",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-5",
      0
     ],
     "destination": [
      "obj-12",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-7",
      0
     ],
     "destination": [
      "obj-12",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-12",
      1
     ],
     "destination": [
      "obj-13",
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
      "obj-14",
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
      "obj-18",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-18",
      0
     ],
     "destination": [
      "obj-19",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-19",
      0
     ],
     "destination": [
      "obj-20",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-12",
      0
     ],
     "destination": [
      "obj-25",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-12",
      0
     ],
     "destination": [
      "obj-28",
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
      "obj-28",
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
      "obj-25",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-28",
      0
     ],
     "destination": [
      "obj-29",
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
      "obj-30",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-29",
      1
     ],
     "destination": [
      "obj-32",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-29",
      2
     ],
     "destination": [
      "obj-34",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-29",
      3
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
      "obj-39",
      0
     ],
     "destination": [
      "obj-40",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-28",
      0
     ],
     "destination": [
      "obj-40",
      1
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
   }
  ]
 }
}