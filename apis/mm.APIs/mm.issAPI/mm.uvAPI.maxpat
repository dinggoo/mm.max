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
        "rect": [ 193.0, 151.0, 830.0, 676.0 ],
        "gridonopen": 2,
        "subpatcher_template": "Untitled1_template",
        "boxes": [
            {
                "box": {
                    "id": "obj-1",
                    "maxclass": "dict.view",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 412.0, 106.0, 279.0, 554.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-29",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 133.0, 589.0, 87.0, 22.0 ],
                    "text": "print UV_value"
                }
            },
            {
                "box": {
                    "id": "obj-22",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 105.0, 495.0, 118.0, 22.0 ],
                    "text": "get body::current::uv"
                }
            },
            {
                "box": {
                    "id": "obj-15",
                    "linecount": 2,
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 105.0, 237.0, 293.0, 35.0 ],
                    "text": "http://api.weatherapi.com/v1/current.json?key=238ab29fbb9c4fb5909140548251606&q=${breda}&aqi=no"
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
                    "id": "obj-474",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 172.0, 403.0, 141.0, 22.0 ],
                    "text": "progress 901. 901. 0. 0."
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
                    "patching_rect": [ 105.0, 290.0, 91.0, 22.0 ],
                    "text": "set url $1, bang"
                }
            },
            {
                "box": {
                    "data": {
                        "body": {
                            "location": {
                                "name": "Breda",
                                "region": "North Brabant",
                                "country": "Netherlands",
                                "lat": 51.5866,
                                "lon": 4.776,
                                "tz_id": "Europe/Amsterdam",
                                "localtime_epoch": 1795687333,
                                "localtime": "2026-11-26 11:02"
                            },
                            "current": {
                                "last_updated_epoch": 1795687200,
                                "last_updated": "2026-11-26 11:00",
                                "temp_c": -0.4,
                                "temp_f": 31.3,
                                "is_day": 1,
                                "condition": {
                                    "text": "Overcast",
                                    "icon": "//cdn.weatherapi.com/weather/64x64/day/122.png",
                                    "code": 1009
                                },
                                "wind_mph": 11.0,
                                "wind_kph": 17.6,
                                "wind_degree": 70,
                                "wind_dir": "ENE",
                                "pressure_mb": 1021.0,
                                "pressure_in": 30.14,
                                "precip_mm": 0.0,
                                "precip_in": 0.0,
                                "humidity": 71,
                                "cloud": 97,
                                "feelslike_c": -5.4,
                                "feelslike_f": 22.3,
                                "windchill_c": -5.4,
                                "windchill_f": 22.3,
                                "heatindex_c": -0.4,
                                "heatindex_f": 31.3,
                                "dewpoint_c": -5.0,
                                "dewpoint_f": 23.1,
                                "vis_km": 10.0,
                                "vis_miles": 6.0,
                                "uv": 0.4,
                                "gust_mph": 19.4,
                                "gust_kph": 31.3,
                                "will_it_rain": 0,
                                "chance_of_rain": 19,
                                "will_it_snow": 0,
                                "chance_of_snow": 30,
                                "wetbulb_c": -2.0,
                                "wetbulb_f": 28.4
                            }
                        },
                        "header": "HTTP/1.1 200 OK\r\nDate: Thu, 26 Nov 2026 10:03:21 GMT\r\nContent-Type: application/json\r\nContent-Length: 901\r\nConnection: keep-alive\r\nVary: Accept-Encoding\r\nServer: BunnyCDN-AMS1-883\r\nCDN-PullZone: 93447\r\nCDN-RequestCountryCode: NL\r\nVary: Accept-Encoding\r\nCache-Control: public, max-age=180\r\nx-ratelimit-limit: 10\r\nx-ratelimit-remaining: 9\r\nx-weatherapi-qpm-left: 100000\r\nCDN-ProxyVer: 1.74\r\nCDN-RequestPullSuccess: True\r\nCDN-RequestPullCode: 200\r\nCDN-CachedAt: 11/26/2026 10:02:13\r\nCDN-EdgeStorageId: 879\r\nCDN-RequestId: cb1306de2cf4136077c86dd368d8e8f6\r\nCDN-Cache: HIT\r\nCDN-Status: 200\r\nCDN-RequestTime: 0\r\n\r\n",
                        "status": 200,
                        "connect_code": 0,
                        "url": "http://api.weatherapi.com/v1/current.json?key=238ab29fbb9c4fb5909140548251606&q=${breda}&aqi=no",
                        "file_time": -1,
                        "total_time": 0.010202,
                        "size_upload": 0.0,
                        "size_download": 901.0,
                        "content_length_download": 901.0,
                        "content_length_upload": 0.0,
                        "content_type": "application/json"
                    },
                    "id": "obj-479",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 5,
                    "outlettype": [ "dictionary", "", "", "", "" ],
                    "patching_rect": [ 105.0, 537.0, 131.0, 22.0 ],
                    "saved_object_attributes": {
                        "embed": 1,
                        "legacy": 1,
                        "parameter_enable": 0,
                        "parameter_mappable": 0
                    },
                    "text": "dict uv_API @embed 1"
                }
            },
            {
                "box": {
                    "id": "obj-480",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "dictionary", "" ],
                    "patching_rect": [ 105.0, 377.0, 45.0, 22.0 ],
                    "text": "maxurl"
                }
            },
            {
                "box": {
                    "data": {
                        "http_method": "get",
                        "url": "http://api.weatherapi.com/v1/current.json?key=238ab29fbb9c4fb5909140548251606&q=${breda}&aqi=no",
                        "parse_type": "json"
                    },
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "id": "obj-481",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 5,
                    "outlettype": [ "dictionary", "", "", "", "" ],
                    "patching_rect": [ 105.0, 329.0, 99.0, 23.0 ],
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
                    "destination": [ "obj-477", 0 ],
                    "source": [ "obj-15", 0 ]
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
                    "destination": [ "obj-479", 0 ],
                    "source": [ "obj-22", 0 ]
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
                    "source": [ "obj-472", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-22", 0 ],
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
                    "destination": [ "obj-1", 0 ],
                    "source": [ "obj-479", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-29", 0 ],
                    "source": [ "obj-479", 1 ]
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
                    "destination": [ "obj-41", 1 ],
                    "source": [ "obj-83", 0 ]
                }
            }
        ],
        "autosave": 0,
        "toolbaradditions": [ "BEAP", "Vizzie", "Vsynth", "Data Knot", "Auzzie", "ABL Effect Modules" ]
    }
}