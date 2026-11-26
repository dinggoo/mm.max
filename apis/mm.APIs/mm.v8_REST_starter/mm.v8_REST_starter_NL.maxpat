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
   1100.0
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
     "text": "v8 REST starter",
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
      920,
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
     "id": "obj-3",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      20,
      46,
      1180,
      20.0
     ],
     "text": "Klik links op een bericht. De JavaScript in het vak hieronder doet het verzoek met fetch(); het antwoord komt binnen als Max-dict. Werkt met Max 9.2 of nieuwer.",
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
      590,
      790
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
     "id": "obj-5",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      30,
      85,
      300,
      24.0
     ],
     "text": "1 \u00b7 VERZOEK",
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
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      30,
      115,
      330,
      22.0
     ],
     "text": "GET https://api.wheretheiss.at/v1/satellites/25544"
    }
   },
   {
    "box": {
     "id": "obj-7",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      370,
      115,
      200,
      20.0
     ],
     "text": "\u2190 waar is het ISS?",
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
     "id": "obj-8",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      30,
      145,
      560,
      22.0
     ],
     "text": "GET https://api.open-meteo.com/v1/forecast?latitude=52.37&longitude=4.89&current=temperature_2m"
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
      30,
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
      60,
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
      145,
      180,
      200,
      20.0
     ],
     "text": "\u2190 vraag het ISS elke 5 s",
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
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      30,
      220,
      230,
      22.0
     ],
     "text": "clear, set name Max, set value 42"
    }
   },
   {
    "box": {
     "id": "obj-13",
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
      270,
      220,
      100,
      22.0
     ],
     "text": "dict my_body_nl"
    }
   },
   {
    "box": {
     "id": "obj-14",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      375,
      220,
      210,
      20.0
     ],
     "text": "\u2190 de JSON-body voor POST/PUT",
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
      250,
      265,
      22.0
     ],
     "text": "POST https://httpbin.org/post my_body_nl"
    }
   },
   {
    "box": {
     "id": "obj-16",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      305,
      250,
      260,
      22.0
     ],
     "text": "PUT https://httpbin.org/put my_body_nl"
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
      280,
      230,
      22.0
     ],
     "text": "DELETE https://httpbin.org/delete"
    }
   },
   {
    "box": {
     "id": "obj-18",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      270,
      280,
      270,
      22.0
     ],
     "text": "header Authorization Bearer JOUW_TOKEN"
    }
   },
   {
    "box": {
     "id": "obj-19",
     "maxclass": "v8.codebox",
     "numinlets": 1,
     "numoutlets": 2,
     "outlettype": [
      "",
      ""
     ],
     "patching_rect": [
      30,
      320,
      560,
      400.0
     ],
     "code": "// v8 REST-starter (Max 9.2+): fetch() met async/await\n//\n// BERICHTEN\n//   GET <url>                      DELETE <url>\n//   POST <url> <dict-naam>         PUT <url> <dict-naam>      PATCH <url> <dict-naam>\n//     (de dict gaat mee als JSON-body)\n//   header <name> <value...>       bijv. header Authorization Bearer JOUW_TOKEN\n//   clearheaders\n// UITGANGEN\n//   0  dictionary rest_data_nl        het JSON-antwoord, als Max-dict\n//   1  statustekst                 bijv. 200 OK 143 ms\n\noutlets = 2;\n\nconst result = new Dict(\"rest_data_nl\");\nconst headers = {};\n\nfunction GET(url) { request(\"GET\", url); }\nfunction DELETE(url) { request(\"DELETE\", url); }\nfunction POST(url, dictName) { request(\"POST\", url, dictName); }\nfunction PUT(url, dictName) { request(\"PUT\", url, dictName); }\nfunction PATCH(url, dictName) { request(\"PATCH\", url, dictName); }\n\nfunction header(name, ...value) { headers[name] = value.join(\" \"); }\nfunction clearheaders() { for (const key in headers) delete headers[key]; }\n\nasync function request(method, url, dictName) {\n  const options = { method, headers: { Accept: \"application/json\", ...headers } };\n  if (dictName) {\n    options.headers[\"Content-Type\"] = \"application/json\";\n    options.body = new Dict(dictName).stringify();\n  }\n  const start = Date.now();\n  status(`${method} ...`);\n  try {\n    const response = await fetch(url, options);\n    const text = await response.text();\n    let data;\n    try { data = JSON.parse(text); } catch { data = { text }; } // geen JSON? bewaar het als tekst\n    if (data === null || typeof data !== \"object\" || Array.isArray(data)) data = { value: data };\n    result.parse(JSON.stringify(data));\n    status(`${response.status} ${response.statusText} ${Date.now() - start} ms`);\n    outlet(0, \"dictionary\", result.name);\n  } catch (error) {\n    status(`error: ${error.message}`);\n  }\n}\n\nfunction status(text) { outlet(1, ...text.split(\" \")); }\n\nrequest.local = 1;\nstatus.local = 1;\n",
     "filename": "none",
     "fontface": 0,
     "fontname": "<Monospaced>",
     "fontsize": 11.0,
     "saved_object_attributes": {
      "parameter_enable": 0
     }
    }
   },
   {
    "box": {
     "id": "obj-20",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      30,
      730,
      300,
      24.0
     ],
     "text": "2 \u00b7 ANTWOORD",
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
     "id": "obj-21",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      330,
      730,
      80,
      22.0
     ],
     "text": "prepend set"
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
      330,
      760,
      260,
      22.0
     ],
     "text": ""
    }
   },
   {
    "box": {
     "id": "obj-23",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      280,
      760,
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
     "id": "obj-24",
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
      760,
      200,
      22.0
     ],
     "text": "dict.unpack latitude: longitude:"
    }
   },
   {
    "box": {
     "id": "obj-25",
     "maxclass": "flonum",
     "numinlets": 1,
     "numoutlets": 2,
     "outlettype": [
      "",
      ""
     ],
     "patching_rect": [
      30,
      795,
      90,
      22.0
     ],
     "parameter_enable": 0
    }
   },
   {
    "box": {
     "id": "obj-26",
     "maxclass": "flonum",
     "numinlets": 1,
     "numoutlets": 2,
     "outlettype": [
      "",
      ""
     ],
     "patching_rect": [
      130,
      795,
      90,
      22.0
     ],
     "parameter_enable": 0
    }
   },
   {
    "box": {
     "id": "obj-27",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      30,
      825,
      560,
      20.0
     ],
     "text": "breedtegraad / lengtegraad (ISS). Verander de sleutelnamen voor een andere API.",
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
     "maxclass": "panel",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      620,
      75,
      300,
      790
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
     "id": "obj-29",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      635,
      85,
      280,
      24.0
     ],
     "text": "3 \u00b7 BEKIJK DE DICT",
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
     "id": "obj-30",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      635,
      112,
      280,
      20.0
     ],
     "text": "dubbelklik op [dict rest_data_nl] om hem ook te zien",
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
     "id": "obj-31",
     "maxclass": "dict.view",
     "numinlets": 1,
     "numoutlets": 0,
     "outlettype": [],
     "patching_rect": [
      635,
      140,
      270,
      700.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-32",
     "maxclass": "panel",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      935,
      75,
      300,
      790
     ],
     "background": 1,
     "ignoreclick": 1,
     "bgcolor": [
      0.2,
      0.2,
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
     "id": "obj-33",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      950,
      85,
      280,
      24.0
     ],
     "text": "DE KLASSIEKE MANIER: [maxurl]",
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
     "id": "obj-34",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      950,
      112,
      270,
      62.0
     ],
     "text": "Zonder code: je vult een request-dict en stuurt die naar [maxurl]. parse_type json maakt van de body een dict. streaming_buffering is nieuw in 9.2 (niet gedocumenteerd).",
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
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      950,
      180,
      270,
      22.0
     ],
     "text": "clear, set url https://api.wheretheiss.at/v1/satellites/25544, set http_method get, set parse_type json, set streaming_buffering 1, bang"
    }
   },
   {
    "box": {
     "id": "obj-36",
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
      950,
      250,
      140,
      22.0
     ],
     "text": "dict maxurl_request_nl"
    }
   },
   {
    "box": {
     "id": "obj-37",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 2,
     "outlettype": [
      "",
      ""
     ],
     "patching_rect": [
      950,
      285,
      60,
      22.0
     ],
     "text": "maxurl"
    }
   },
   {
    "box": {
     "id": "obj-38",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      1020,
      285,
      180,
      20.0
     ],
     "text": "rechter outlet = voortgang",
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
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 3,
     "outlettype": [
      "",
      "",
      ""
     ],
     "patching_rect": [
      950,
      320,
      170,
      22.0
     ],
     "text": "dict.unpack status: body:"
    }
   },
   {
    "box": {
     "id": "obj-40",
     "maxclass": "number",
     "numinlets": 1,
     "numoutlets": 2,
     "outlettype": [
      "",
      ""
     ],
     "patching_rect": [
      950,
      355,
      60,
      22.0
     ],
     "parameter_enable": 0
    }
   },
   {
    "box": {
     "id": "obj-41",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      1015,
      355,
      120,
      20.0
     ],
     "text": "\u2190 HTTP-status",
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
     "id": "obj-42",
     "maxclass": "dict.view",
     "numinlets": 1,
     "numoutlets": 0,
     "outlettype": [],
     "patching_rect": [
      950,
      385,
      270,
      260.0
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
      950,
      655,
      270,
      76.0
     ],
     "text": "fetch() of maxurl: met fetch schrijf je JavaScript (if/else, loops, POST-JSON uit een dict, eigen headers). maxurl heeft geen code nodig en kan ook bestanden downloaden (filename_out).",
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
     "id": "obj-44",
     "maxclass": "panel",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      15,
      880,
      1220,
      200
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
     "id": "obj-45",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      30,
      890,
      900,
      24.0
     ],
     "text": "4 \u00b7 SERVO  (upload put_this_on-your_arduino, de CMD-sketch, naar je board)",
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
     "id": "obj-46",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      30,
      915,
      1000,
      20.0
     ],
     "text": "ISS-breedtegraad \u221290\u202690 \u2192 servo 0\u2026180\u00b0 op pin 9. Sleep de slider om te testen. Andere pin? Verander de 9 in [w s 9 $1].",
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
     "numinlets": 6,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      30,
      945,
      125,
      22.0
     ],
     "text": "scale -90. 90. 0 180"
    }
   },
   {
    "box": {
     "id": "obj-48",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      165,
      945,
      30,
      22.0
     ],
     "text": "i"
    }
   },
   {
    "box": {
     "id": "obj-49",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 3,
     "outlettype": [
      "",
      "",
      ""
     ],
     "patching_rect": [
      205,
      945,
      55,
      22.0
     ],
     "text": "change"
    }
   },
   {
    "box": {
     "id": "obj-50",
     "maxclass": "slider",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      270,
      945,
      180,
      22.0
     ],
     "size": 181.0,
     "parameter_enable": 0
    }
   },
   {
    "box": {
     "id": "obj-51",
     "maxclass": "number",
     "numinlets": 1,
     "numoutlets": 2,
     "outlettype": [
      "",
      ""
     ],
     "patching_rect": [
      460,
      945,
      50,
      22.0
     ],
     "parameter_enable": 0
    }
   },
   {
    "box": {
     "id": "obj-52",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      512,
      945,
      20,
      20.0
     ],
     "text": "\u00b0",
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
     "id": "obj-53",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      535,
      945,
      70,
      22.0
     ],
     "text": "w s 9 $1"
    }
   },
   {
    "box": {
     "id": "obj-54",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      615,
      945,
      65,
      22.0
     ],
     "text": "tosymbol"
    }
   },
   {
    "box": {
     "id": "obj-55",
     "maxclass": "newobj",
     "numinlets": 3,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      690,
      945,
      40,
      22.0
     ],
     "text": "atoi"
    }
   },
   {
    "box": {
     "id": "obj-56",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      740,
      945,
      70,
      22.0
     ],
     "text": "append 10"
    }
   },
   {
    "box": {
     "id": "obj-57",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      820,
      945,
      40,
      22.0
     ],
     "text": "gate"
    }
   },
   {
    "box": {
     "id": "obj-58",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      865,
      945,
      260,
      20.0
     ],
     "text": "\u2190 pas open als er een poort gekozen is",
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
     "id": "obj-59",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      30,
      985,
      65,
      22.0
     ],
     "text": "loadbang"
    }
   },
   {
    "box": {
     "id": "obj-60",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      105,
      985,
      45,
      22.0
     ],
     "text": "print"
    }
   },
   {
    "box": {
     "id": "obj-61",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      155,
      985,
      130,
      20.0
     ],
     "text": "\u2190 ververs poorten",
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
     "id": "obj-62",
     "maxclass": "umenu",
     "numinlets": 1,
     "numoutlets": 3,
     "outlettype": [
      "",
      "",
      ""
     ],
     "patching_rect": [
      30,
      1015,
      250,
      22.0
     ],
     "parameter_enable": 0
    }
   },
   {
    "box": {
     "id": "obj-63",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      285,
      1015,
      120,
      20.0
     ],
     "text": "\u2190 kies je board",
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
     "id": "obj-64",
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
      410,
      1015,
      80,
      22.0
     ],
     "text": "t b 1 b s"
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
      500,
      1045,
      85,
      22.0
     ],
     "text": "prepend port"
    }
   },
   {
    "box": {
     "id": "obj-66",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      595,
      1045,
      40,
      22.0
     ],
     "text": "open"
    }
   },
   {
    "box": {
     "id": "obj-67",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      645,
      1015,
      75,
      22.0
     ],
     "text": "mode none"
    }
   },
   {
    "box": {
     "id": "obj-68",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      725,
      1015,
      200,
      20.0
     ],
     "text": "\u2190 Arduino stuurt niets terug",
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
     "id": "obj-69",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      410,
      985,
      45,
      22.0
     ],
     "text": "close"
    }
   },
   {
    "box": {
     "id": "obj-70",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      460,
      985,
      130,
      20.0
     ],
     "text": "\u2190 poort loslaten",
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
     "id": "obj-71",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 2,
     "outlettype": [
      "",
      ""
     ],
     "patching_rect": [
      600,
      985,
      70,
      22.0
     ],
     "text": "t 0 close"
    }
   },
   {
    "box": {
     "id": "obj-72",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 2,
     "outlettype": [
      "",
      ""
     ],
     "patching_rect": [
      750,
      1045,
      200,
      22.0
     ],
     "text": "serial a 9600 @autoopen 0 @dtr 1"
    }
   },
   {
    "box": {
     "id": "obj-73",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 2,
     "outlettype": [
      "",
      ""
     ],
     "patching_rect": [
      960,
      1045,
      70,
      22.0
     ],
     "text": "route port"
    }
   },
   {
    "box": {
     "id": "obj-74",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 2,
     "outlettype": [
      "",
      ""
     ],
     "patching_rect": [
      1040,
      1045,
      45,
      22.0
     ],
     "text": "t l b"
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
      1095,
      1045,
      35,
      22.0
     ],
     "text": "iter"
    }
   },
   {
    "box": {
     "id": "obj-76",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      1140,
      1045,
      90,
      22.0
     ],
     "text": "prepend append"
    }
   },
   {
    "box": {
     "id": "obj-77",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      1095,
      1015,
      40,
      22.0
     ],
     "text": "clear"
    }
   }
  ],
  "lines": [
   {
    "patchline": {
     "source": [
      "obj-6",
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
      "obj-8",
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
      "obj-15",
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
      "obj-16",
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
      "obj-17",
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
      "obj-6",
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
      "obj-13",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-19",
      1
     ],
     "destination": [
      "obj-21",
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
      "obj-22",
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
      "obj-24",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-24",
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
      "obj-24",
      1
     ],
     "destination": [
      "obj-26",
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
      "obj-31",
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
      "obj-36",
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
      "obj-37",
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
      "obj-39",
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
      "obj-39",
      1
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
      "obj-24",
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
      "obj-47",
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
      "obj-48",
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
      "obj-49",
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
      "obj-50",
      0
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
      "obj-51",
      0
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
      "obj-53",
      0
     ],
     "destination": [
      "obj-54",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-54",
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
      "obj-56",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-56",
      0
     ],
     "destination": [
      "obj-57",
      1
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
      "obj-60",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-60",
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
      "obj-62",
      1
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
      "obj-64",
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
      "obj-72",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-64",
      2
     ],
     "destination": [
      "obj-66",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-66",
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
      "obj-64",
      1
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
      "obj-64",
      0
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
      "obj-54",
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
      "obj-71",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-71",
      1
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
      "obj-71",
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
      "obj-72",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-72",
      1
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
      "obj-74",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-74",
      1
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
      "obj-62",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-74",
      0
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
      "obj-76",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-76",
      0
     ],
     "destination": [
      "obj-62",
      0
     ]
    }
   }
  ]
 }
}