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
        "rect": [ 134.0, 87.0, 849.0, 679.0 ],
        "gridonopen": 2,
        "subpatcher_template": "Untitled1_template",
        "boxes": [
            {
                "box": {
                    "id": "obj-9",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 391.964281976223, 26.0, 69.0, 22.0 ],
                    "text": "mode none"
                }
            },
            {
                "box": {
                    "id": "obj-3",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 18.0, 69.714284658432, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-1",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 18.0, 110.714284658432, 56.0, 22.0 ],
                    "text": "metro 25"
                }
            },
            {
                "box": {
                    "id": "obj-84",
                    "maxclass": "number",
                    "maximum": 255,
                    "minimum": 0,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 155.3571413755417, 76.78571355342865, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-85",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 155.3571413755417, 110.714284658432, 54.0, 22.0 ],
                    "text": "w a 6 $1"
                }
            },
            {
                "box": {
                    "id": "obj-83",
                    "maxclass": "number",
                    "maximum": 180,
                    "minimum": 0,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 226.4642830491066, 73.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-81",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 226.4642830491066, 107.0, 53.0, 22.0 ],
                    "text": "w s 9 $1"
                }
            },
            {
                "box": {
                    "id": "obj-72",
                    "linecount": 4,
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 470.0, 458.0357099175453, 210.0, 62.0 ],
                    "text": "................................................................................................................................................................Connected to WiFi. IP address:"
                }
            },
            {
                "box": {
                    "id": "obj-71",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 129.46428447961807, 458.0357099175453, 159.0, 22.0 ],
                    "text": "308 313 318 323 328 328"
                }
            },
            {
                "box": {
                    "id": "obj-70",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "" ],
                    "patching_rect": [ 83.9285706281662, 383.0, 56.0, 22.0 ],
                    "text": "route a d"
                }
            },
            {
                "box": {
                    "id": "obj-69",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 391.964281976223, 158.92856991291046, 29.5, 22.0 ],
                    "text": "r"
                }
            },
            {
                "box": {
                    "id": "obj-64",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 83.9285706281662, 75.89285641908646, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-62",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 83.9285706281662, 110.714284658432, 61.0, 22.0 ],
                    "text": "w d 13 $1"
                }
            },
            {
                "box": {
                    "id": "obj-60",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 220.53571218252182, 313.39285415410995, 150.0, 20.0 ],
                    "text": "set/change port"
                }
            },
            {
                "box": {
                    "id": "obj-58",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 155.3571413755417, 346.0, 124.10714167356491, 20.0 ],
                    "text": "read from arduino "
                }
            },
            {
                "box": {
                    "id": "obj-57",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 140.1785700917244, 210.7142837047577, 124.10714167356491, 20.0 ],
                    "text": "write to arduino"
                }
            },
            {
                "box": {
                    "id": "obj-55",
                    "linecount": 9,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 457.1428527832031, 63.392856538295746, 274.99999737739563, 127.0 ],
                    "text": "[mode a] – only report analog changes\n[mode d] – only report digital changes\n[mode b] – report both (default)\n\n[r] – manually request immediate readout\n\n[w d 13 1] – set digital pin 13 to HIGH\n[w a 6 128] – set PWM pin 6 to 128\n[w s 9 90] – move servo on pin 9 to 90 degrees"
                }
            },
            {
                "box": {
                    "id": "obj-53",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 507.14285230636597, 269.64285457134247, 173.21428406238556, 20.0 ],
                    "text": "write servo pins"
                }
            },
            {
                "box": {
                    "id": "obj-52",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 507.14285230636597, 235.7142834663391, 173.21428406238556, 20.0 ],
                    "text": "write analog pins"
                }
            },
            {
                "box": {
                    "id": "obj-50",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 507.14285230636597, 205.35714089870453, 173.21428406238556, 20.0 ],
                    "text": "write digital pins"
                }
            },
            {
                "box": {
                    "id": "obj-48",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 388.3928534388542, 268.7499974370003, 106.0, 22.0 ],
                    "text": "w s <pin> <value>"
                }
            },
            {
                "box": {
                    "id": "obj-47",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 388.3928534388542, 234.82142633199692, 107.0, 22.0 ],
                    "text": "w a <pin> <value>"
                }
            },
            {
                "box": {
                    "id": "obj-46",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 388.3928534388542, 203.57142663002014, 107.0, 22.0 ],
                    "text": "w d <pin> <value>"
                }
            },
            {
                "box": {
                    "id": "obj-33",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 391.964281976223, 62.49999940395355, 49.0, 22.0 ],
                    "text": "mode a"
                }
            },
            {
                "box": {
                    "id": "obj-32",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 391.964281976223, 126.78571307659149, 49.0, 22.0 ],
                    "text": "mode b"
                }
            },
            {
                "box": {
                    "id": "obj-31",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 391.964281976223, 99.10714191198349, 49.0, 22.0 ],
                    "text": "mode d"
                }
            },
            {
                "box": {
                    "id": "obj-30",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 9.82142847776413, 517.8571379184723, 246.0, 20.0 ],
                    "text": "Upload this code to you arduino"
                }
            },
            {
                "box": {
                    "id": "obj-28",
                    "linecount": 168,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 9.82142847776413, 552.6785661578178, 817.0, 2272.0 ],
                    "text": "/* \n VERSION may 2025 by Mark Meeuwenoord\n ---- CMD ----\n Control Arduino board functions with the following messages:\n \nmode d      // only digital input\nmode a      // only analog input\nmode b      // both digital and analog\n\nr           // request immediate readout\n\nw d 13 1    // digitalWrite HIGH to pin 13\nw a 6 127   // analogWrite 50% PWM to pin 6\nw s 9 90    // set servo at pin 9 to 90 degrees\n \n */\n\n\n#include <Servo.h>\n\nconst int NUM_SERVOS = 6;\nServo servos[NUM_SERVOS];\nbool servoAttached[NUM_SERVOS];\n\n// Pins\nconst int digitalPins[] = {2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13};\nconst int analogPins[] = {A0, A1, A2, A3, A4, A5};\n\nint lastDigital[12];\nint lastAnalog[6];\n\nchar readMode = 'b'; // 'd' = digital, 'a' = analog, 'b' = both\n\nunsigned long lastPoll = 0;\nconst unsigned long pollInterval = 50;\n\nvoid setup() {\n  Serial.begin(115200);\n\n  for (int i = 0; i < 12; i++) {\n    pinMode(digitalPins[i], INPUT_PULLUP);\n    lastDigital[i] = digitalRead(digitalPins[i]);\n  }\n\n  for (int i = 0; i < 6; i++) {\n    lastAnalog[i] = analogRead(analogPins[i]);\n    servoAttached[i] = false;\n  }\n}\n\nvoid loop() {\n  if (Serial.available()) {\n    handleSerial();\n  }\n\n  if (millis() - lastPoll >= pollInterval) {\n    lastPoll = millis();\n    checkAndSendChanges();\n  }\n}\n\nvoid checkAndSendChanges() {\n  bool changed = false;\n\n  if (readMode == 'd' || readMode == 'b') {\n    for (int i = 0; i < 12; i++) {\n      int val = digitalRead(digitalPins[i]);\n      if (val != lastDigital[i]) {\n        lastDigital[i] = val;\n        changed = true;\n      }\n    }\n    if (changed) sendDigital();\n  }\n\n  changed = false;\n  if (readMode == 'a' || readMode == 'b') {\n    for (int i = 0; i < 6; i++) {\n      int val = analogRead(analogPins[i]);\n      if (abs(val - lastAnalog[i]) > 4) {\n        lastAnalog[i] = val;\n        changed = true;\n      }\n    }\n    if (changed) sendAnalog();\n  }\n}\n\nvoid sendDigital() {\n  Serial.print(\"d\");\n  for (int i = 0; i < 12; i++) {\n    Serial.print(\" \");\n    Serial.print(lastDigital[i]);\n  }\n  Serial.println();\n}\n\nvoid sendAnalog() {\n  Serial.print(\"a\");\n  for (int i = 0; i < 6; i++) {\n    Serial.print(\" \");\n    Serial.print(lastAnalog[i]);\n  }\n  Serial.println();\n}\n\nvoid handleSerial() {\n  static char buffer[64];\n  static byte idx = 0;\n\n  while (Serial.available()) {\n    char c = Serial.read();\n    if (c == '\\n' || c == '\\r') {\n      buffer[idx] = '\\0';\n      parseCommand(buffer);\n      idx = 0;\n    } else if (idx < sizeof(buffer) - 1) {\n      buffer[idx++] = c;\n    }\n  }\n}\n\nvoid parseCommand(char* cmd) {\n  if (strcmp(cmd, \"r\") == 0) {\n    if (readMode == 'd' || readMode == 'b') sendDigital();\n    if (readMode == 'a' || readMode == 'b') sendAnalog();\n  } else if (strncmp(cmd, \"mode \", 5) == 0) {\n    char m = cmd[5];\n    if (m == 'a' || m == 'd' || m == 'b') {\n      readMode = m;\n      Serial.print(\"mode \");\n      Serial.println(readMode);\n    }\n  } else if (cmd[0] == 'w') {\n    char type;\n    int pin, val;\n    if (sscanf(cmd, \"w %c %d %d\", &type, &pin, &val) == 3) {\n      if (type == 'd') {\n        pinMode(pin, OUTPUT);\n        digitalWrite(pin, val);\n      } else if (type == 'a') {\n        pinMode(pin, OUTPUT);\n        analogWrite(pin, val);\n      } else if (type == 's') {\n        if (pin >= 2 && pin <= 13) {\n          int index = getServoIndex(pin);\n          if (index >= 0) {\n            if (!servoAttached[index]) {\n              servos[index].attach(pin);\n              servoAttached[index] = true;\n            }\n            servos[index].write(val);\n          }\n        }\n      }\n    }\n  }\n}\n\nint getServoIndex(int pin) {\n  // Maps pin numbers to one of 6 servo slots\n  for (int i = 0; i < NUM_SERVOS; i++) {\n    if (!servoAttached[i] || servos[i].attached() && servos[i].read() == pin) {\n      return i;\n    }\n  }\n  return -1; // No available servo slots\n}\n"
                }
            },
            {
                "box": {
                    "id": "obj-25",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 5.535714089870453, 4.464285671710968, 189.1428563594818, 33.0 ],
                    "text": "Max - Arduino IO simple version \nBy Mark Meeuwenoord 2025"
                }
            },
            {
                "box": {
                    "color": [ 0.999993443489075, 0.999963402748108, 0.041014794260263, 1.0 ],
                    "id": "obj-22",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
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
                        "rect": [ 134.0, 159.0, 357.0, 330.0 ],
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
                                    "patching_rect": [ 50.0, 83.0, 69.0, 22.0 ],
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
                        "toolbaradditions": [ "BEAP", "Vizzie", "TS.Modular", "Vsynth", "Data Knot" ]
                    },
                    "patching_rect": [ 83.9285706281662, 345.0, 61.0, 22.0 ],
                    "text": "p fromArd"
                }
            },
            {
                "box": {
                    "color": [ 0.986251831054688, 0.007236152887344, 0.027423052117229, 1.0 ],
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
                            "revision": 4,
                            "architecture": "x64",
                            "modernui": 1
                        },
                        "classnamespace": "box",
                        "rect": [ 911.0, 180.0, 224.0, 293.0 ],
                        "subpatcher_template": "Untitled1_template",
                        "boxes": [
                            {
                                "box": {
                                    "id": "obj-20",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "patching_rect": [ 50.0, 171.0, 29.0, 22.0 ],
                                    "text": "thru"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-19",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "patching_rect": [ 66.0, 131.0, 33.0, 22.0 ],
                                    "text": "spell"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-1",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "int", "" ],
                                    "patching_rect": [ 50.0, 100.0, 35.0, 22.0 ],
                                    "text": "t 13 l"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-11",
                                    "index": 1,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 50.0, 40.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-18",
                                    "index": 1,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 50.0, 253.0, 30.0, 30.0 ]
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-19", 0 ],
                                    "source": [ "obj-1", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-20", 0 ],
                                    "source": [ "obj-1", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 0 ],
                                    "source": [ "obj-11", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-20", 0 ],
                                    "source": [ "obj-19", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-18", 0 ],
                                    "source": [ "obj-20", 0 ]
                                }
                            }
                        ],
                        "toolbaradditions": [ "BEAP", "Vizzie", "Vsynth", "Data Knot" ]
                    },
                    "patching_rect": [ 83.9285706281662, 208.9285694360733, 47.0, 22.0 ],
                    "text": "p toArd"
                }
            },
            {
                "box": {
                    "id": "obj-27",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 307.1428542137146, 215.17856937646866, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-23",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 295.5357114672661, 458.0357099175453, 158.92856991291046, 22.0 ],
                    "text": "0 1 1 1 1 1 1 0 1 1 1 0"
                }
            },
            {
                "box": {
                    "id": "obj-15",
                    "maxclass": "gswitch2",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 9.82142847776413, 412.49999606609344, 39.0, 32.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-17",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 29.46428543329239, 462.4999955892563, 77.0, 22.0 ],
                    "text": "print myData"
                }
            },
            {
                "box": {
                    "id": "obj-13",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 307.1428542137146, 255.35714042186737, 44.0, 22.0 ],
                    "text": "poll $1"
                }
            },
            {
                "box": {
                    "id": "obj-16",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 258.92856895923615, 254.46428328752518, 39.0, 22.0 ],
                    "text": "port e"
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
                    "patching_rect": [ 112.4999989271164, 254.46428328752518, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-12",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 220.53571218252182, 254.46428328752518, 37.0, 22.0 ],
                    "text": "close"
                }
            },
            {
                "box": {
                    "id": "obj-10",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 177.67856973409653, 254.46428328752518, 35.0, 22.0 ],
                    "text": "open"
                }
            },
            {
                "box": {
                    "id": "obj-7",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 140.1785700917244, 254.46428328752518, 32.0, 22.0 ],
                    "text": "print"
                }
            },
            {
                "box": {
                    "id": "obj-8",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "int", "" ],
                    "patching_rect": [ 83.9285706281662, 311.60713988542557, 117.0, 22.0 ],
                    "text": "serial e 9600 @dtr 1"
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "obj-64", 0 ],
                    "source": [ "obj-1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-8", 0 ],
                    "source": [ "obj-10", 0 ]
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
                    "destination": [ "obj-8", 0 ],
                    "source": [ "obj-13", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-8", 0 ],
                    "source": [ "obj-14", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-17", 0 ],
                    "source": [ "obj-15", 1 ]
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
                    "destination": [ "obj-8", 0 ],
                    "source": [ "obj-19", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-15", 1 ],
                    "order": 1,
                    "source": [ "obj-22", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-70", 0 ],
                    "order": 0,
                    "source": [ "obj-22", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-13", 0 ],
                    "source": [ "obj-27", 0 ]
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
                    "destination": [ "obj-19", 0 ],
                    "source": [ "obj-31", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-19", 0 ],
                    "source": [ "obj-32", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-19", 0 ],
                    "source": [ "obj-33", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-19", 0 ],
                    "source": [ "obj-62", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-62", 0 ],
                    "source": [ "obj-64", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-19", 0 ],
                    "source": [ "obj-69", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-8", 0 ],
                    "source": [ "obj-7", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-23", 1 ],
                    "source": [ "obj-70", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-71", 1 ],
                    "source": [ "obj-70", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-72", 1 ],
                    "source": [ "obj-70", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-22", 0 ],
                    "source": [ "obj-8", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-19", 0 ],
                    "source": [ "obj-81", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-81", 0 ],
                    "source": [ "obj-83", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-85", 0 ],
                    "source": [ "obj-84", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-19", 0 ],
                    "source": [ "obj-85", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-19", 0 ],
                    "source": [ "obj-9", 0 ]
                }
            }
        ],
        "autosave": 0,
        "toolbaradditions": [ "BEAP", "Vizzie", "TS.Modular", "Vsynth", "Data Knot" ]
    }
}