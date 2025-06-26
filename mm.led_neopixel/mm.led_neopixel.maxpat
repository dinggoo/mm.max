{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
<<<<<<< HEAD
			"major" : 9,
			"minor" : 0,
			"revision" : 7,
=======
			"major" : 8,
			"minor" : 6,
			"revision" : 5,
>>>>>>> ed6937bfb3c5d55f578c11bc97f1c31664bbe09e
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"classnamespace" : "box",
<<<<<<< HEAD
		"rect" : [ 85.0, 87.0, 1161.0, 679.0 ],
		"bglocked" : 1,
		"gridonopen" : 2,
		"gridsize" : [ 15.0, 15.0 ],
		"subpatcher_template" : "Untitled1_template",
		"boxes" : [ 			{
				"box" : 				{
					"compatibility" : 1,
					"id" : "obj-129",
					"maxclass" : "swatch",
					"numinlets" : 3,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 595.402288913726807, 150.172411203384399, 128.0, 32.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-128",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 439.080452442169189, 76.62337589263916, 66.0, 22.0 ],
					"text" : "rgb 0 0 0 0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-126",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 522.988497018814087, 109.195400476455688, 66.666665554046631, 20.0 ],
					"text" : "soft red"
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.999993324279785, 0.999963343143463, 0.041014768183231, 1.0 ],
					"id" : "obj-125",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 924.13791561126709, 235.632179975509644, 63.0, 22.0 ],
					"text" : "s toSTRIP"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-124",
					"maxclass" : "number",
					"maximum" : 255,
					"minimum" : 0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 994.252856969833374, 155.172411203384399, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-123",
					"maxclass" : "number",
					"maximum" : 255,
					"minimum" : 0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 975.86205267906189, 126.436779499053955, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-122",
					"maxclass" : "number",
					"maximum" : 255,
					"minimum" : 0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 958.620673656463623, 97.701147794723511, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-120",
					"maxclass" : "newobj",
					"numinlets" : 5,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 924.13791561126709, 195.402295589447021, 89.0, 22.0 ],
					"text" : "pak rgb 0 0 0 0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-116",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 439.080452442169189, 108.045975208282471, 73.0, 22.0 ],
					"text" : "rgb 0 20 0 0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-112",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 26.436781167984009, 412.643671274185181, 71.0, 22.0 ],
					"text" : "fromsymbol"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-113",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 26.436781167984009, 374.712637424468994, 40.0, 22.0 ],
					"text" : "itoa"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-114",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 26.436781167984009, 336.781603574752808, 81.0, 22.0 ],
					"text" : "zl.group 9999"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-115",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 26.436781167984009, 298.850569725036621, 69.0, 22.0 ],
					"text" : "route 13 10"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-100",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 863.218376398086548, 94.252871990203857, 64.000000953674316, 20.0 ],
					"text" : "fadetime"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-98",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 810.34481406211853, 94.252871990203857, 46.400000691413879, 20.0 ],
					"text" : "strip #"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-97",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 522.988497018814087, 202.298847198486328, 46.400000691413879, 20.0 ],
					"text" : "blue"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-96",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 522.988497018814087, 170.11493968963623, 46.400000691413879, 20.0 ],
					"text" : "green"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-95",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 522.988497018814087, 141.379307985305786, 46.400000691413879, 20.0 ],
					"text" : "red"
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.999993324279785, 0.999963343143463, 0.041014768183231, 1.0 ],
					"id" : "obj-94",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 439.080452442169189, 233.333329439163208, 63.0, 22.0 ],
					"text" : "s toSTRIP"
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.999993324279785, 0.999963343143463, 0.041014768183231, 1.0 ],
					"id" : "obj-93",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 758.62067699432373, 183.908042907714844, 63.0, 22.0 ],
					"text" : "s toSTRIP"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-92",
					"maxclass" : "number",
					"minimum" : 0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 809.195388793945312, 114.942526817321777, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-91",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 758.62067699432373, 150.574710130691528, 124.000001847743988, 22.0 ],
					"text" : "pak fade 0 1000"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-87",
					"maxclass" : "number",
					"minimum" : 0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 863.218376398086548, 114.942526817321777, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-84",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 42.857142448425293, 131.168829917907715, 171.428569793701172, 22.0 ],
					"text" : "rgb 0 0 0 0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-82",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 201.14942193031311, 403.448269128799438, 46.400000691413879, 20.0 ],
					"text" : "strip #"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-78",
					"maxclass" : "gswitch2",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 268.965512752532959, 391.954016447067261, 48.000000715255737, 32.000000476837158 ]
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.999993324279785, 0.999963343143463, 0.041014768183231, 1.0 ],
					"id" : "obj-72",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 199.999996662139893, 496.551715850830078, 63.0, 22.0 ],
					"text" : "s toSTRIP"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-71",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 297.701144456863403, 455.172406196594238, 37.0, 22.0 ],
					"text" : "all $1"
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.999993324279785, 0.999963343143463, 0.041014768183231, 1.0 ],
					"id" : "obj-49",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 595.402288913726807, 240.229881048202515, 63.0, 22.0 ],
					"text" : "s toSTRIP"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-47",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 595.402288913726807, 201.14942193031311, 83.0, 22.0 ],
					"text" : "prepend rgb 0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-46",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 439.080452442169189, 197.701146125793457, 79.0, 22.0 ],
					"text" : "rgb 0 0 0 255"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-45",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 439.080452442169189, 168.965514421463013, 79.0, 22.0 ],
					"text" : "rgb 0 0 255 0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-43",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 439.080452442169189, 140.229882717132568, 79.0, 22.0 ],
					"text" : "rgb 0 255 0 0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-30",
					"linecount" : 310,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 18.181818008422852, 611.688305854797363, 507.0, 4162.0 ],
					"text" : "#include <Adafruit_NeoPixel.h>\n\n// Configuration\n#define MAX_STRIPS 4\n#define MAX_PIXELS_PER_STRIP 100\n#define DEFAULT_FADE_TIME 1000  // Default fade time in milliseconds\n\n// Strip definitions - modify these for your setup\nstruct StripConfig {\n  int pin;\n  int numPixels;\n  Adafruit_NeoPixel* strip;\n  uint32_t currentColor;\n  uint32_t targetColor;\n  unsigned long fadeStartTime;\n  int fadeTime;\n  bool fading;\n};\n\n// Initialize your strips here\nStripConfig strips[MAX_STRIPS] = {\n  {2, 30, nullptr, 0, 0, 0, DEFAULT_FADE_TIME, false},  // Strip 0: Pin 2, 30 pixels\n  {3, 30, nullptr, 0, 0, 0, DEFAULT_FADE_TIME, false},  // Strip 1: Pin 3, 30 pixels\n  {4, 30, nullptr, 0, 0, 0, DEFAULT_FADE_TIME, false},  // Strip 2: Pin 4, 30 pixels\n  {5, 30, nullptr, 0, 0, 0, DEFAULT_FADE_TIME, false}   // Strip 3: Pin 5, 30 pixels\n};\n\nint numActiveStrips = 1; // Change this to match how many strips you're using\n\n// Predefined colors\nstruct ColorEntry {\n  const char* name;\n  uint8_t r, g, b;\n};\n\nColorEntry predefinedColors[] = {\n  {\"red\", 255, 0, 0},\n  {\"green\", 0, 255, 0},\n  {\"blue\", 0, 0, 255},\n  {\"white\", 255, 255, 255},\n  {\"yellow\", 255, 255, 0},\n  {\"purple\", 255, 0, 255},\n  {\"cyan\", 0, 255, 255},\n  {\"orange\", 255, 165, 0},\n  {\"pink\", 255, 192, 203},\n  {\"lime\", 50, 205, 50},\n  {\"magenta\", 255, 0, 255},\n  {\"teal\", 0, 128, 128},\n  {\"off\", 0, 0, 0},\n  {\"black\", 0, 0, 0}\n};\n\nvoid setup() {\n  Serial.begin(9600);\n  \n  // Initialize strips\n  for (int i = 0; i < numActiveStrips; i++) {\n    strips[i].strip = new Adafruit_NeoPixel(strips[i].numPixels, strips[i].pin, NEO_GRB + NEO_KHZ800);\n    strips[i].strip->begin();\n    strips[i].strip->show();\n    strips[i].currentColor = strips[i].strip->Color(0, 0, 0); // Start with off\n  }\n  \n  Serial.println(\"Multi-Strip Color Controller Ready\");\n  Serial.println(\"Commands:\");\n  Serial.println(\"  color <strip> <colorname> - Set color (e.g., 'color 0 red')\");\n  Serial.println(\"  rgb <strip> <r> <g> <b> - Set RGB (e.g., 'rgb 0 255 100 50')\");\n  Serial.println(\"  fade <strip> <time> - Set fade time in ms (e.g., 'fade 0 2000')\");\n  Serial.println(\"  pixels <strip> <count> - Set pixel count (e.g., 'pixels 0 50')\");\n  Serial.println(\"  all <colorname> - Set all strips to same color\");\n}\n\nvoid loop() {\n  // Handle serial commands\n  if (Serial.available()) {\n    String command = Serial.readStringUntil('\\n');\n    command.trim();\n    processCommand(command);\n  }\n  \n  // Update fading for all strips\n  updateFading();\n  \n  delay(10); // Small delay for smooth fading\n}\n\nvoid processCommand(String command) {\n  command.toLowerCase();\n  \n  if (command.startsWith(\"color \")) {\n    handleColorCommand(command);\n  } else if (command.startsWith(\"rgb \")) {\n    handleRGBCommand(command);\n  } else if (command.startsWith(\"fade \")) {\n    handleFadeTimeCommand(command);\n  } else if (command.startsWith(\"pixels \")) {\n    handlePixelCountCommand(command);\n  } else if (command.startsWith(\"all \")) {\n    handleAllStripCommand(command);\n  } else {\n    Serial.println(\"Unknown command\");\n  }\n}\n\nvoid handleColorCommand(String command) {\n  // Format: color strip colorname\n  command.trim();\n  int firstSpace = command.indexOf(' ');\n  int secondSpace = command.indexOf(' ', firstSpace + 1);\n  if (firstSpace == -1 || secondSpace == -1) {\n    Serial.println(\"Invalid color command format\");\n    return;\n  }\n  \n  int stripIndex = command.substring(firstSpace + 1, secondSpace).toInt();\n  String colorName = command.substring(secondSpace + 1);\n  colorName.trim();\n  \n  Serial.println(\"Debug: stripIndex=\" + String(stripIndex) + \", colorName='\" + colorName + \"'\");\n  \n  if (stripIndex < 0 || stripIndex >= numActiveStrips) {\n    Serial.println(\"Invalid strip index\");\n    return;\n  }\n  \n  uint32_t color = getColorByName(colorName);\n  if (color != 0xFFFFFFFF) { // Valid color found\n    setStripColor(stripIndex, color);\n    Serial.println(\"Color set: Strip \" + String(stripIndex) + \" to \" + colorName);\n  } else {\n    Serial.println(\"Unknown color: \" + colorName);\n  }\n}\n\nvoid handleRGBCommand(String command) {\n  // Format: rgb strip r g b\n  int spacePositions[5];\n  int spaceCount = 0;\n  \n  // Find all space positions\n  for (int i = 0; i < command.length() && spaceCount < 5; i++) {\n    if (command.charAt(i) == ' ') {\n      spacePositions[spaceCount] = i;\n      spaceCount++;\n    }\n  }\n  \n  if (spaceCount >= 4) {\n    int stripIndex = command.substring(spacePositions[0] + 1, spacePositions[1]).toInt();\n    int r = constrain(command.substring(spacePositions[1] + 1, spacePositions[2]).toInt(), 0, 255);\n    int g = constrain(command.substring(spacePositions[2] + 1, spacePositions[3]).toInt(), 0, 255);\n    int b = constrain(command.substring(spacePositions[3] + 1).toInt(), 0, 255);\n    \n    if (stripIndex >= 0 && stripIndex < numActiveStrips) {\n      uint32_t color = strips[stripIndex].strip->Color(r, g, b);\n      setStripColor(stripIndex, color);\n      Serial.println(\"RGB set: Strip \" + String(stripIndex) + \" to (\" + String(r) + \",\" + String(g) + \",\" + String(b) + \")\");\n    } else {\n      Serial.println(\"Invalid strip index\");\n    }\n  } else {\n    Serial.println(\"Invalid RGB command format\");\n  }\n}\n\nvoid handleFadeTimeCommand(String command) {\n  // Format: fade strip time\n  command.trim();\n  int firstSpace = command.indexOf(' ');\n  int secondSpace = command.indexOf(' ', firstSpace + 1);\n  if (firstSpace == -1 || secondSpace == -1) {\n    Serial.println(\"Invalid fade command format\");\n    return;\n  }\n  \n  int stripIndex = command.substring(firstSpace + 1, secondSpace).toInt();\n  String fadeTimeStr = command.substring(secondSpace + 1);\n  fadeTimeStr.trim();\n  int fadeTime = fadeTimeStr.toInt();\n  \n  Serial.println(\"Debug: stripIndex=\" + String(stripIndex) + \", fadeTime=\" + String(fadeTime));\n  \n  if (stripIndex >= 0 && stripIndex < numActiveStrips && fadeTime > 0) {\n    strips[stripIndex].fadeTime = fadeTime;\n    Serial.println(\"Fade time set: Strip \" + String(stripIndex) + \" to \" + String(fadeTime) + \"ms\");\n  } else {\n    Serial.println(\"Invalid fade command - stripIndex:\" + String(stripIndex) + \" fadeTime:\" + String(fadeTime));\n  }\n}\n\nvoid handlePixelCountCommand(String command) {\n  // Format: pixels strip count\n  command.trim();\n  int firstSpace = command.indexOf(' ');\n  int secondSpace = command.indexOf(' ', firstSpace + 1);\n  if (firstSpace == -1 || secondSpace == -1) {\n    Serial.println(\"Invalid pixels command format\");\n    return;\n  }\n  \n  int stripIndex = command.substring(firstSpace + 1, secondSpace).toInt();\n  String pixelCountStr = command.substring(secondSpace + 1);\n  pixelCountStr.trim();\n  int pixelCount = pixelCountStr.toInt();\n  \n  Serial.println(\"Debug: stripIndex=\" + String(stripIndex) + \", pixelCount=\" + String(pixelCount));\n  \n  if (stripIndex >= 0 && stripIndex < numActiveStrips && pixelCount > 0 && pixelCount <= MAX_PIXELS_PER_STRIP) {\n    strips[stripIndex].numPixels = pixelCount;\n    // Reinitialize the strip with new pixel count\n    delete strips[stripIndex].strip;\n    strips[stripIndex].strip = new Adafruit_NeoPixel(pixelCount, strips[stripIndex].pin, NEO_GRB + NEO_KHZ800);\n    strips[stripIndex].strip->begin();\n    strips[stripIndex].strip->show();\n    Serial.println(\"Pixel count set: Strip \" + String(stripIndex) + \" to \" + String(pixelCount));\n  } else {\n    Serial.println(\"Invalid pixel count command - stripIndex:\" + String(stripIndex) + \" pixelCount:\" + String(pixelCount));\n  }\n}\n\nvoid handleAllStripCommand(String command) {\n  // Format: all colorname\n  command.trim();\n  String colorName = command.substring(4);\n  colorName.trim();\n  \n  uint32_t color = getColorByName(colorName);\n  \n  if (color != 0xFFFFFFFF) {\n    for (int i = 0; i < numActiveStrips; i++) {\n      setStripColor(i, color);\n    }\n    Serial.println(\"All strips set to \" + colorName);\n  } else {\n    Serial.println(\"Unknown color: \" + colorName);\n  }\n}\n\nuint32_t getColorByName(String colorName) {\n  int numColors = sizeof(predefinedColors) / sizeof(ColorEntry);\n  \n  for (int i = 0; i < numColors; i++) {\n    if (colorName.equals(predefinedColors[i].name)) {\n      return strips[0].strip->Color(predefinedColors[i].r, predefinedColors[i].g, predefinedColors[i].b);\n    }\n  }\n  return 0xFFFFFFFF; // Invalid color marker\n}\n\nvoid setStripColor(int stripIndex, uint32_t color) {\n  if (stripIndex < 0 || stripIndex >= numActiveStrips) return;\n  \n  strips[stripIndex].targetColor = color;\n  strips[stripIndex].fadeStartTime = millis();\n  strips[stripIndex].fading = true;\n}\n\nvoid updateFading() {\n  for (int stripIndex = 0; stripIndex < numActiveStrips; stripIndex++) {\n    if (!strips[stripIndex].fading) continue;\n    \n    unsigned long elapsed = millis() - strips[stripIndex].fadeStartTime;\n    \n    if (elapsed >= strips[stripIndex].fadeTime) {\n      // Fade complete\n      strips[stripIndex].currentColor = strips[stripIndex].targetColor;\n      strips[stripIndex].fading = false;\n      setStripToColor(stripIndex, strips[stripIndex].currentColor);\n    } else {\n      // Calculate interpolated color\n      float progress = (float)elapsed / strips[stripIndex].fadeTime;\n      uint32_t interpolatedColor = interpolateColor(strips[stripIndex].currentColor, strips[stripIndex].targetColor, progress);\n      setStripToColor(stripIndex, interpolatedColor);\n    }\n  }\n}\n\nuint32_t interpolateColor(uint32_t color1, uint32_t color2, float progress) {\n  uint8_t r1 = (color1 >> 16) & 0xFF;\n  uint8_t g1 = (color1 >> 8) & 0xFF;\n  uint8_t b1 = color1 & 0xFF;\n  \n  uint8_t r2 = (color2 >> 16) & 0xFF;\n  uint8_t g2 = (color2 >> 8) & 0xFF;\n  uint8_t b2 = color2 & 0xFF;\n  \n  uint8_t r = r1 + (r2 - r1) * progress;\n  uint8_t g = g1 + (g2 - g1) * progress;\n  uint8_t b = b1 + (b2 - b1) * progress;\n  \n  return strips[0].strip->Color(r, g, b);\n}\n\nvoid setStripToColor(int stripIndex, uint32_t color) {\n  for (int i = 0; i < strips[stripIndex].numPixels; i++) {\n    strips[stripIndex].strip->setPixelColor(i, color);\n  }\n  strips[stripIndex].strip->show();\n}"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-23",
					"items" : [ "red", ",", "green", ",", "blue", ",", "white", ",", "yellow", ",", "purple", ",", "cyan", ",", "orange", ",", "pink", ",", "lime", ",", "magenta", ",", "teal", ",", "off", ",", "black" ],
					"maxclass" : "chooser",
					"numinlets" : 1,
					"numoutlets" : 6,
					"outlettype" : [ "", "", "", "", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 262.068961143493652, 72.41379189491272, 73.0, 301.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-22",
					"maxclass" : "number",
					"minimum" : 0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 199.999996662139893, 425.287349224090576, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-20",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 199.999996662139893, 458.620682001113892, 88.0, 22.0 ],
					"text" : "pak color 0 red"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-14",
					"linecount" : 6,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 448.051943778991699, 325.97402286529541, 342.528729915618896, 87.0 ],
					"text" : "Settings:\ncolor 0 red - Set strip 0 to red\nrgb 0 255 100 50 - Set strip 0 to RGB(255,100,50)\nfade 0 2000 - Set strip 0 fade time to 2 seconds\npixels 0 50 - Set strip 0 to 50 pixels\nall blue - Set all active strips to blue"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-7",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 209.195398807525635, 189.655169248580933, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-5",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 209.195398807525635, 227.586203098297119, 44.0, 22.0 ],
					"text" : "poll $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-3",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 166.666663885116577, 171.264364957809448, 32.0, 22.0 ],
					"text" : "print"
				}

			}
, 			{
				"box" : 				{
=======
		"rect" : [ 2391.0, 115.0, 1161.0, 871.0 ],
		"bglocked" : 0,
		"openinpresentation" : 0,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 2,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 1,
		"objectsnaponopen" : 1,
		"statusbarvisible" : 2,
		"toolbarvisible" : 1,
		"lefttoolbarpinned" : 0,
		"toptoolbarpinned" : 0,
		"righttoolbarpinned" : 0,
		"bottomtoolbarpinned" : 0,
		"toolbars_unpinned_last_save" : 0,
		"tallnewobj" : 0,
		"boxanimatetime" : 200,
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"description" : "",
		"digest" : "",
		"tags" : "",
		"style" : "",
		"subpatcher_template" : "Untitled1_template",
		"assistshowspatchername" : 0,
		"boxes" : [ 			{
				"box" : 				{
>>>>>>> ed6937bfb3c5d55f578c11bc97f1c31664bbe09e
					"id" : "obj-8",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
<<<<<<< HEAD
					"patching_rect" : [ 166.666663885116577, 201.14942193031311, 35.0, 22.0 ],
=======
					"patching_rect" : [ 207.0, 451.0, 35.0, 22.0 ],
>>>>>>> ed6937bfb3c5d55f578c11bc97f1c31664bbe09e
					"text" : "open"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-110",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
<<<<<<< HEAD
					"patching_rect" : [ 165.517238616943359, 227.586203098297119, 37.0, 22.0 ],
=======
					"patching_rect" : [ 159.0, 451.0, 37.0, 22.0 ],
>>>>>>> ed6937bfb3c5d55f578c11bc97f1c31664bbe09e
					"text" : "close"
				}

			}
, 			{
				"box" : 				{
<<<<<<< HEAD
					"fontsize" : 14.0,
=======
					"id" : "obj-102",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 6,
							"revision" : 5,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 647.0, 344.0, 640.0, 480.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 1,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 1,
						"objectsnaponopen" : 1,
						"statusbarvisible" : 2,
						"toolbarvisible" : 1,
						"lefttoolbarpinned" : 0,
						"toptoolbarpinned" : 0,
						"righttoolbarpinned" : 0,
						"bottomtoolbarpinned" : 0,
						"toolbars_unpinned_last_save" : 0,
						"tallnewobj" : 0,
						"boxanimatetime" : 200,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"description" : "",
						"digest" : "",
						"tags" : "",
						"style" : "",
						"subpatcher_template" : "Untitled1_template",
						"assistshowspatchername" : 0,
						"visible" : 1,
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-88",
									"maxclass" : "jit.pwindow",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "jit_matrix", "" ],
									"patching_rect" : [ 406.0, 304.0, 137.0, 26.0 ],
									"sync" : 1
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-90",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "jit_matrix", "" ],
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 8,
											"minor" : 6,
											"revision" : 5,
											"architecture" : "x64",
											"modernui" : 1
										}
,
										"classnamespace" : "jit.gen",
										"rect" : [ 59.0, 119.0, 600.0, 450.0 ],
										"bglocked" : 0,
										"openinpresentation" : 0,
										"default_fontsize" : 12.0,
										"default_fontface" : 0,
										"default_fontname" : "Arial",
										"gridonopen" : 1,
										"gridsize" : [ 15.0, 15.0 ],
										"gridsnaponopen" : 1,
										"objectsnaponopen" : 1,
										"statusbarvisible" : 2,
										"toolbarvisible" : 1,
										"lefttoolbarpinned" : 0,
										"toptoolbarpinned" : 0,
										"righttoolbarpinned" : 0,
										"bottomtoolbarpinned" : 0,
										"toolbars_unpinned_last_save" : 0,
										"tallnewobj" : 0,
										"boxanimatetime" : 200,
										"enablehscroll" : 1,
										"enablevscroll" : 1,
										"devicewidth" : 0.0,
										"description" : "",
										"digest" : "",
										"tags" : "",
										"style" : "",
										"subpatcher_template" : "Untitled1_template",
										"assistshowspatchername" : 0,
										"boxes" : [ 											{
												"box" : 												{
													"id" : "obj-10",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 128.0, 233.0, 37.0, 22.0 ],
													"text" : "* 255"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-9",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 233.0, 95.0, 41.0, 22.0 ],
													"text" : "swiz z"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-8",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 179.0, 95.0, 41.0, 22.0 ],
													"text" : "swiz y"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-7",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 130.0, 95.0, 41.0, 22.0 ],
													"text" : "swiz x"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-6",
													"maxclass" : "newobj",
													"numinlets" : 3,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 130.0, 145.0, 57.0, 22.0 ],
													"text" : "vec 0 0 0"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-5",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 149.0, 14.0, 42.0, 22.0 ],
													"text" : "snorm"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-1",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 50.0, 14.0, 28.0, 22.0 ],
													"text" : "in 1"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-4",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 126.0, 302.0, 35.0, 22.0 ],
													"text" : "out 1"
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-4", 0 ],
													"source" : [ "obj-10", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-7", 0 ],
													"order" : 2,
													"source" : [ "obj-5", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-8", 0 ],
													"order" : 1,
													"source" : [ "obj-5", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-9", 0 ],
													"order" : 0,
													"source" : [ "obj-5", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-10", 0 ],
													"source" : [ "obj-6", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-6", 0 ],
													"source" : [ "obj-7", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-6", 1 ],
													"source" : [ "obj-8", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-6", 2 ],
													"source" : [ "obj-9", 0 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 406.0, 271.0, 41.0, 22.0 ],
									"text" : "jit.gen"
								}

							}
, 							{
								"box" : 								{
									"attr" : "amp",
									"id" : "obj-98",
									"maxclass" : "attrui",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 368.0, 217.0, 150.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-96",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 284.0, 589.0, 32.0, 22.0 ],
									"text" : "print"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-95",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "jit_matrix", "" ],
									"patching_rect" : [ 181.0, 299.0, 73.0, 22.0 ],
									"text" : "jit.normalize"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-92",
									"maxclass" : "gswitch",
									"numinlets" : 3,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 52.5, 579.0, 41.0, 32.0 ]
								}

							}
, 							{
								"box" : 								{
									"color" : [ 0.131302490830421, 0.99969744682312, 0.023593783378601, 1.0 ],
									"id" : "obj-91",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 52.5, 622.0, 62.0, 22.0 ],
									"text" : "s toPIXEL"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-87",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 74.5, 485.0, 61.0, 22.0 ],
									"text" : "list.slice 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-84",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 106.5, 589.0, 159.0, 22.0 ],
									"text" : "4 254 254 252"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-80",
									"maxclass" : "jit.fpsgui",
									"mode" : 3,
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 122.0, 422.0, 80.0, 35.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-54",
									"maxclass" : "number",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 89.0, 312.0, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-41",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 74.5, 532.0, 93.0, 22.0 ],
									"text" : "join @triggers 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-8",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 54.0, 342.0, 54.0, 22.0 ],
									"text" : "qlim 150"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-62",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 2,
									"outlettype" : [ "jit_matrix", "" ],
									"patching_rect" : [ 64.0, 422.0, 56.0, 22.0 ],
									"text" : "jit.pack 3"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-58",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 64.0, 451.0, 40.0, 22.0 ],
									"text" : "jit.iter"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-49",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 5,
									"outlettype" : [ "jit_matrix", "jit_matrix", "jit_matrix", "jit_matrix", "" ],
									"patching_rect" : [ 54.0, 384.0, 61.0, 22.0 ],
									"text" : "jit.unpack"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-31",
									"maxclass" : "jit.fpsgui",
									"mode" : 4,
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 299.0, 292.5, 80.0, 35.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-7",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "jit_matrix", "" ],
									"patching_rect" : [ 32.5, 117.0, 157.0, 22.0 ],
									"text" : "jit.matrix 4 char @adapt 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-9",
									"maxclass" : "jit.pwindow",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "jit_matrix", "" ],
									"patching_rect" : [ 181.0, 334.0, 119.0, 30.0 ],
									"sync" : 1
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 13.0,
									"id" : "obj-20",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "jit_matrix", "" ],
									"patching_rect" : [ 181.0, 249.5, 198.0, 23.0 ],
									"text" : "jit.dimop @op avg @step 59 156"
								}

							}
, 							{
								"box" : 								{
									"bgmode" : 0,
									"border" : 0,
									"clickthrough" : 0,
									"enablehscroll" : 0,
									"enablevscroll" : 0,
									"id" : "obj-24",
									"lockeddragscroll" : 0,
									"lockedsize" : 0,
									"maxclass" : "bpatcher",
									"name" : "demovideo2.maxpat",
									"numinlets" : 0,
									"numoutlets" : 1,
									"offset" : [ 0.0, 0.0 ],
									"outlettype" : [ "jit_matrix" ],
									"patching_rect" : [ 4.5, 0.0, 135.0, 96.0 ],
									"viewvisibility" : 1
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-22",
									"maxclass" : "jit.pwindow",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "jit_matrix", "" ],
									"patching_rect" : [ 4.5, 168.0, 160.0, 120.0 ],
									"sync" : 1
								}

							}
, 							{
								"box" : 								{
									"attr" : "op",
									"fontface" : 0,
									"fontname" : "Arial",
									"fontsize" : 13.0,
									"id" : "obj-27",
									"maxclass" : "attrui",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 181.0, 192.5, 176.0, 23.0 ]
								}

							}
, 							{
								"box" : 								{
									"attr" : "step",
									"displaymode" : 3,
									"fontface" : 0,
									"fontname" : "Arial",
									"fontsize" : 13.0,
									"id" : "obj-30",
									"maxclass" : "attrui",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 181.0, 216.5, 176.0, 23.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-31", 0 ],
									"order" : 0,
									"source" : [ "obj-20", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-95", 0 ],
									"order" : 1,
									"source" : [ "obj-20", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-22", 0 ],
									"order" : 1,
									"source" : [ "obj-24", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-7", 0 ],
									"order" : 0,
									"source" : [ "obj-24", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-20", 0 ],
									"source" : [ "obj-27", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-20", 0 ],
									"source" : [ "obj-30", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-84", 1 ],
									"order" : 0,
									"source" : [ "obj-41", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-92", 2 ],
									"order" : 1,
									"source" : [ "obj-41", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-62", 2 ],
									"source" : [ "obj-49", 3 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-62", 1 ],
									"source" : [ "obj-49", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-62", 0 ],
									"source" : [ "obj-49", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 1 ],
									"source" : [ "obj-54", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-41", 1 ],
									"source" : [ "obj-58", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-87", 0 ],
									"source" : [ "obj-58", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-58", 0 ],
									"order" : 1,
									"source" : [ "obj-62", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-80", 0 ],
									"order" : 0,
									"source" : [ "obj-62", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-20", 0 ],
									"source" : [ "obj-7", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-49", 0 ],
									"source" : [ "obj-8", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-41", 0 ],
									"source" : [ "obj-87", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-88", 0 ],
									"source" : [ "obj-90", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-91", 0 ],
									"source" : [ "obj-92", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 0 ],
									"order" : 1,
									"source" : [ "obj-95", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"order" : 0,
									"source" : [ "obj-95", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-95", 0 ],
									"source" : [ "obj-98", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 46.0, 747.0, 87.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p experimental"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-94",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 27.0, 535.5, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
>>>>>>> ed6937bfb3c5d55f578c11bc97f1c31664bbe09e
					"id" : "obj-1",
					"linecount" : 3,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
<<<<<<< HEAD
					"patching_rect" : [ 18.0, 9.195402145385742, 235.195398807525635, 53.0 ],
					"text" : "mm.led_neopixel \nBy Mark Meeuwenoord\n2025"
=======
					"patching_rect" : [ 12.0, 10.0, 155.0, 47.0 ],
					"text" : "By Mark Meeuwenoord\nwww.markmeeuwenoord.nl\n2024"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-64",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 351.0, 90.0, 69.0, 20.0 ],
					"text" : "Strobo"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-63",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 314.5, 523.0, 69.0, 20.0 ],
					"text" : "select pixel"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-60",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 298.0, 58.0, 150.0, 20.0 ],
					"text" : "All pixels"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-59",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 298.0, 421.0, 150.0, 20.0 ],
					"text" : "Single pixel"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-4",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 6,
							"revision" : 5,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 59.0, 119.0, 640.0, 480.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 1,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 1,
						"objectsnaponopen" : 1,
						"statusbarvisible" : 2,
						"toolbarvisible" : 1,
						"lefttoolbarpinned" : 0,
						"toptoolbarpinned" : 0,
						"righttoolbarpinned" : 0,
						"bottomtoolbarpinned" : 0,
						"toolbars_unpinned_last_save" : 0,
						"tallnewobj" : 0,
						"boxanimatetime" : 200,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"description" : "",
						"digest" : "",
						"tags" : "",
						"style" : "",
						"subpatcher_template" : "Untitled1_template",
						"assistshowspatchername" : 0,
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-2",
									"linecount" : 61,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 25.0, 39.0, 648.0, 838.0 ],
									"text" : "/*\n by Mark Meeuwenoord 2024\n */\n\n\n#include <Adafruit_NeoPixel.h>\n\n#ifdef __AVR__\n  #include <avr/power.h>\n#endif\n\n#define NUM_PIXELS 30\n#define PIN_STRIP 2\n\nAdafruit_NeoPixel strip = Adafruit_NeoPixel(NUM_PIXELS, PIN_STRIP, NEO_GRB + NEO_KHZ800);\n\nvoid setup() {\n  #ifdef __AVR__\n    if (F_CPU == 16000000) {\n      clock_prescale_set(clock_div_1);  // Set clock prescaler to 1 if using 16 MHz clock\n    }\n  #endif\n  \n  Serial.begin(115200);\n  strip.begin();\n  strip.show();\n}\n\nvoid loop() {\n  if (Serial.available() > 0) {\n    String command = Serial.readStringUntil('\\n');  // Read the entire command string until newline\n\n    if (command.startsWith(\"p\")) {\n      setIndividualPixel(command);\n    } else if (command.startsWith(\"all\")) {\n      setAllPixels(command);\n    }\n  }\n}\n\nvoid setIndividualPixel(String command) {\n  // Command to set an individual pixel: \"p n r g b\"\n  int n, r, g, b;\n  sscanf(command.c_str(), \"p %d %d %d %d\", &n, &r, &g, &b);\n\n  if (n >= 0 && n < NUM_PIXELS) {\n    strip.setPixelColor(n, strip.Color(r, g, b));\n    strip.show();\n  }\n}\n\nvoid setAllPixels(String command) {\n  // Command to set all pixels: \"a r g b\"\n  int r, g, b;\n  sscanf(command.c_str(), \"all %d %d %d\", &r, &g, &b);\n\n  for (int i = 0; i < NUM_PIXELS; i++) {\n    strip.setPixelColor(i, strip.Color(r, g, b));\n  }\n  strip.show();\n}\n"
								}

							}
 ],
						"lines" : [  ]
					}
,
					"patching_rect" : [ 47.0, 705.0, 85.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p arduinocode"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 529.0, 548.0, 35.0, 22.0 ],
					"text" : "0 0 0"
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.131302490830421, 0.99969744682312, 0.023593783378601, 1.0 ],
					"id" : "obj-138",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 136.0, 360.0, 65.0, 22.0 ],
					"text" : "R toPIXEL"
>>>>>>> ed6937bfb3c5d55f578c11bc97f1c31664bbe09e
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.999993324279785, 0.999963343143463, 0.041014768183231, 1.0 ],
					"id" : "obj-137",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
<<<<<<< HEAD
					"patching_rect" : [ 26.436781167984009, 98.850573062896729, 61.0, 22.0 ],
=======
					"patching_rect" : [ 59.0, 360.0, 61.0, 22.0 ],
>>>>>>> ed6937bfb3c5d55f578c11bc97f1c31664bbe09e
					"text" : "r toSTRIP"
				}

			}
, 			{
				"box" : 				{
<<<<<<< HEAD
					"id" : "obj-106",
=======
					"color" : [ 0.999993324279785, 0.999963343143463, 0.041014768183231, 1.0 ],
					"id" : "obj-126",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 430.0, 330.0, 63.0, 22.0 ],
					"text" : "s toSTRIP"
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.131302490830421, 0.99969744682312, 0.023593783378601, 1.0 ],
					"id" : "obj-125",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 318.0, 636.0, 62.0, 22.0 ],
					"text" : "s toPIXEL"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-124",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 474.0, 59.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-122",
>>>>>>> ed6937bfb3c5d55f578c11bc97f1c31664bbe09e
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
<<<<<<< HEAD
					"patching_rect" : [ 595.402288913726807, 82.75861930847168, 24.0, 24.0 ]
=======
					"patching_rect" : [ 430.0, 58.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-120",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 430.0, 89.0, 63.0, 22.0 ],
					"text" : "metro 500"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-119",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 430.0, 118.0, 59.200000882148743, 22.0 ],
					"text" : "cycle 2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-118",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 430.0, 156.0, 29.5, 22.0 ],
					"text" : "0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-116",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 470.0, 156.0, 29.5, 22.0 ],
					"text" : "255"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-108",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 540.0, 67.0, 24.0, 24.0 ]
>>>>>>> ed6937bfb3c5d55f578c11bc97f1c31664bbe09e
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
<<<<<<< HEAD
					"id" : "obj-107",
=======
					"id" : "obj-109",
>>>>>>> ed6937bfb3c5d55f578c11bc97f1c31664bbe09e
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
<<<<<<< HEAD
							"major" : 9,
							"minor" : 0,
							"revision" : 7,
=======
							"major" : 8,
							"minor" : 6,
							"revision" : 5,
>>>>>>> ed6937bfb3c5d55f578c11bc97f1c31664bbe09e
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
<<<<<<< HEAD
						"rect" : [ 134.0, 159.0, 265.0, 281.0 ],
						"default_fontsize" : 10.0,
						"gridsize" : [ 15.0, 15.0 ],
=======
						"rect" : [ 2591.0, 334.0, 265.0, 281.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
						"default_fontsize" : 10.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 1,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 1,
						"objectsnaponopen" : 1,
						"statusbarvisible" : 2,
						"toolbarvisible" : 1,
						"lefttoolbarpinned" : 0,
						"toptoolbarpinned" : 0,
						"righttoolbarpinned" : 0,
						"bottomtoolbarpinned" : 0,
						"toolbars_unpinned_last_save" : 0,
						"tallnewobj" : 0,
						"boxanimatetime" : 200,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"description" : "",
						"digest" : "",
						"tags" : "",
						"style" : "",
						"subpatcher_template" : "",
						"assistshowspatchername" : 0,
>>>>>>> ed6937bfb3c5d55f578c11bc97f1c31664bbe09e
						"boxes" : [ 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.595186999999999,
									"id" : "obj-18",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 91.0, 217.0, 83.0, 21.0 ],
									"text" : "vexpr $i1/255."
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-1",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 26.0, 9.0, 25.0, 25.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-2",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 26.0, 246.0, 25.0, 25.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.595186999999999,
									"id" : "obj-3",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 26.0, 186.0, 175.0, 21.0 ],
									"text" : "pack i i i"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.595186999999999,
									"id" : "obj-4",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 181.5, 82.0, 69.0, 21.0 ],
									"text" : "metro 1300"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.595186999999999,
									"id" : "obj-5",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 181.5, 132.0, 52.0, 21.0 ],
									"text" : "$1 1300"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.595186999999999,
									"id" : "obj-6",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 181.5, 107.0, 72.0, 21.0 ],
									"text" : "random 256"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.595186999999999,
									"id" : "obj-7",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"patching_rect" : [ 181.5, 157.0, 51.0, 21.0 ],
									"text" : "line 100"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.595186999999999,
									"id" : "obj-8",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"patching_rect" : [ 103.5, 157.333327999999995, 51.0, 21.0 ],
									"text" : "line 100"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.595186999999999,
									"id" : "obj-9",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 103.5, 107.333336000000003, 72.0, 21.0 ],
									"text" : "random 256"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.595186999999999,
									"id" : "obj-10",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 103.5, 132.333344000000011, 46.0, 21.0 ],
									"text" : "$1 900"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.595186999999999,
									"id" : "obj-11",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 103.5, 82.0, 63.0, 21.0 ],
									"text" : "metro 900"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-12",
									"maxclass" : "toggle",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 26.0, 46.0, 20.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.595186999999999,
									"id" : "obj-13",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 26.0, 82.0, 69.0, 21.0 ],
									"text" : "metro 1000"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.595186999999999,
									"id" : "obj-14",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 26.0, 132.333344000000011, 52.0, 21.0 ],
									"text" : "$1 1000"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.595186999999999,
									"id" : "obj-15",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 26.0, 107.333336000000003, 72.0, 21.0 ],
									"text" : "random 256"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.595186999999999,
									"id" : "obj-16",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"patching_rect" : [ 26.0, 157.333327999999995, 51.0, 21.0 ],
									"text" : "line 100"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.595186999999999,
									"id" : "obj-17",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 59.0, 45.0, 185.0, 19.0 ],
									"text" : "<- turn on mood machine"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-12", 0 ],
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 0 ],
									"source" : [ "obj-10", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"source" : [ "obj-11", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-11", 0 ],
									"order" : 1,
									"source" : [ "obj-12", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-13", 0 ],
									"order" : 2,
									"source" : [ "obj-12", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"order" : 0,
									"source" : [ "obj-12", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 0 ],
									"source" : [ "obj-13", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-16", 0 ],
									"source" : [ "obj-14", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-14", 0 ],
									"source" : [ "obj-15", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 0 ],
									"source" : [ "obj-16", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"source" : [ "obj-3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 0 ],
									"source" : [ "obj-4", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-7", 0 ],
									"source" : [ "obj-5", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-5", 0 ],
									"source" : [ "obj-6", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 2 ],
									"source" : [ "obj-7", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 1 ],
									"source" : [ "obj-8", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 0 ],
									"source" : [ "obj-9", 0 ]
								}

							}
<<<<<<< HEAD
 ],
						"toolbaradditions" : [ "BEAP", "Vizzie", "Vsynth" ]
					}
,
					"patching_rect" : [ 595.402288913726807, 113.79310154914856, 111.0, 23.0 ],
					"saved_object_attributes" : 					{
						"fontsize" : 10.0
=======
 ]
					}
,
					"patching_rect" : [ 540.0, 102.0, 111.0, 23.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"fontsize" : 10.0,
						"globalpatchername" : "",
						"tags" : ""
>>>>>>> ed6937bfb3c5d55f578c11bc97f1c31664bbe09e
					}
,
					"text" : "p mood_machine"
				}

			}
, 			{
				"box" : 				{
<<<<<<< HEAD
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-61",
					"linecount" : 2,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 26.436781167984009, 458.620682001113892, 117.79999977350235, 38.0 ],
					"text" : "print fromArduino @popup 1"
=======
					"id" : "obj-106",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 397.0, 466.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-107",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 6,
							"revision" : 5,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 2591.0, 334.0, 265.0, 281.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
						"default_fontsize" : 10.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 1,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 1,
						"objectsnaponopen" : 1,
						"statusbarvisible" : 2,
						"toolbarvisible" : 1,
						"lefttoolbarpinned" : 0,
						"toptoolbarpinned" : 0,
						"righttoolbarpinned" : 0,
						"bottomtoolbarpinned" : 0,
						"toolbars_unpinned_last_save" : 0,
						"tallnewobj" : 0,
						"boxanimatetime" : 200,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"description" : "",
						"digest" : "",
						"tags" : "",
						"style" : "",
						"subpatcher_template" : "",
						"assistshowspatchername" : 0,
						"boxes" : [ 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.595186999999999,
									"id" : "obj-18",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 91.0, 217.0, 83.0, 21.0 ],
									"text" : "vexpr $i1/255."
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-1",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 26.0, 9.0, 25.0, 25.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-2",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 26.0, 246.0, 25.0, 25.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.595186999999999,
									"id" : "obj-3",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 26.0, 186.0, 175.0, 21.0 ],
									"text" : "pack i i i"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.595186999999999,
									"id" : "obj-4",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 181.5, 82.0, 69.0, 21.0 ],
									"text" : "metro 1300"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.595186999999999,
									"id" : "obj-5",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 181.5, 132.0, 52.0, 21.0 ],
									"text" : "$1 1300"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.595186999999999,
									"id" : "obj-6",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 181.5, 107.0, 72.0, 21.0 ],
									"text" : "random 256"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.595186999999999,
									"id" : "obj-7",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"patching_rect" : [ 181.5, 157.0, 51.0, 21.0 ],
									"text" : "line 100"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.595186999999999,
									"id" : "obj-8",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"patching_rect" : [ 103.5, 157.333327999999995, 51.0, 21.0 ],
									"text" : "line 100"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.595186999999999,
									"id" : "obj-9",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 103.5, 107.333336000000003, 72.0, 21.0 ],
									"text" : "random 256"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.595186999999999,
									"id" : "obj-10",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 103.5, 132.333344000000011, 46.0, 21.0 ],
									"text" : "$1 900"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.595186999999999,
									"id" : "obj-11",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 103.5, 82.0, 63.0, 21.0 ],
									"text" : "metro 900"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-12",
									"maxclass" : "toggle",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 26.0, 46.0, 20.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.595186999999999,
									"id" : "obj-13",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 26.0, 82.0, 69.0, 21.0 ],
									"text" : "metro 1000"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.595186999999999,
									"id" : "obj-14",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 26.0, 132.333344000000011, 52.0, 21.0 ],
									"text" : "$1 1000"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.595186999999999,
									"id" : "obj-15",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 26.0, 107.333336000000003, 72.0, 21.0 ],
									"text" : "random 256"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.595186999999999,
									"id" : "obj-16",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"patching_rect" : [ 26.0, 157.333327999999995, 51.0, 21.0 ],
									"text" : "line 100"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.595186999999999,
									"id" : "obj-17",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 59.0, 45.0, 185.0, 19.0 ],
									"text" : "<- turn on mood machine"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-12", 0 ],
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 0 ],
									"source" : [ "obj-10", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"source" : [ "obj-11", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-11", 0 ],
									"order" : 1,
									"source" : [ "obj-12", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-13", 0 ],
									"order" : 2,
									"source" : [ "obj-12", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"order" : 0,
									"source" : [ "obj-12", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 0 ],
									"source" : [ "obj-13", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-16", 0 ],
									"source" : [ "obj-14", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-14", 0 ],
									"source" : [ "obj-15", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 0 ],
									"source" : [ "obj-16", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"source" : [ "obj-3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 0 ],
									"source" : [ "obj-4", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-7", 0 ],
									"source" : [ "obj-5", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-5", 0 ],
									"source" : [ "obj-6", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 2 ],
									"source" : [ "obj-7", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 1 ],
									"source" : [ "obj-8", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 0 ],
									"source" : [ "obj-9", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 397.0, 497.0, 111.0, 23.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"fontsize" : 10.0,
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p mood_machine"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-105",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 340.0, 156.0, 80.0, 22.0 ],
					"text" : "setall 0, bang"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-103",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 318.0, 592.0, 97.0, 22.0 ],
					"text" : "join @triggers -1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-101",
					"maxclass" : "number",
					"maximum" : 30,
					"minimum" : 0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 318.0, 553.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"compatibility" : 1,
					"id" : "obj-99",
					"maxclass" : "swatch",
					"numinlets" : 3,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 397.0, 543.0, 128.0, 32.0 ],
					"saturation" : 226
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-50",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 136.0, 391.0, 63.0, 22.0 ],
					"text" : "prepend p"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-3",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 534.0, 254.0, 107.0, 22.0 ],
					"text" : "loadmess plane -1"
				}

			}
, 			{
				"box" : 				{
					"compatibility" : 1,
					"id" : "obj-28",
					"maxclass" : "swatch",
					"numinlets" : 3,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 523.0, 163.0, 136.800002038478851, 34.700001299381256 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-26",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 523.0, 215.0, 120.0, 22.0 ],
					"text" : "setall $1 $2 $3, bang"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-23",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 430.0, 189.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"cols" : 1,
					"colwidth" : 80,
					"fontface" : 0,
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"hscroll" : 0,
					"id" : "obj-19",
					"maxclass" : "jit.cellblock",
					"numinlets" : 2,
					"numoutlets" : 4,
					"outlettype" : [ "list", "", "", "" ],
					"outmode" : 1,
					"patching_rect" : [ 534.0, 290.0, 88.0, 20.0 ],
					"rows" : 1,
					"vscroll" : 0
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-17",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "jit_matrix", "" ],
					"patching_rect" : [ 430.0, 254.0, 100.0, 22.0 ],
					"text" : "jit.matrix 3 char 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 59.0, 391.0, 68.0, 22.0 ],
					"text" : "prepend all"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-182",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 59.0, 486.0, 73.0, 22.0 ],
					"text" : "speedlim 10"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-66",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 57.0, 610.0, 138.0, 23.0 ],
					"text" : "print status @popup 1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-61",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 59.0, 575.0, 134.0, 23.0 ],
					"text" : "print data1 @popup 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-35",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 430.0, 298.0, 94.0, 22.0 ],
					"text" : "jit.iter"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-36",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 332.0, 222.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-37",
					"maxclass" : "jit.pwindow",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "jit_matrix", "" ],
					"patching_rect" : [ 332.0, 302.0, 51.0, 37.0 ],
					"sync" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-38",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "jit_matrix", "" ],
					"patching_rect" : [ 332.0, 254.0, 96.0, 22.0 ],
					"text" : "jit.noise 3 char 1"
>>>>>>> ed6937bfb3c5d55f578c11bc97f1c31664bbe09e
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.74902, 0.705882, 0.662745, 1.0 ],
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-69",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
<<<<<<< HEAD
					"patching_rect" : [ 26.436781167984009, 196.551720857620239, 65.0, 22.0 ],
=======
					"patching_rect" : [ 59.0, 449.0, 65.0, 22.0 ],
>>>>>>> ed6937bfb3c5d55f578c11bc97f1c31664bbe09e
					"text" : "append 10"
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.74902, 0.705882, 0.662745, 1.0 ],
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-89",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 1,
					"outlettype" : [ "list" ],
<<<<<<< HEAD
					"patching_rect" : [ 26.436781167984009, 163.218388080596924, 40.0, 22.0 ],
=======
					"patching_rect" : [ 59.0, 420.0, 40.0, 22.0 ],
>>>>>>> ed6937bfb3c5d55f578c11bc97f1c31664bbe09e
					"text" : "atoi"
				}

			}
, 			{
				"box" : 				{
<<<<<<< HEAD
=======
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-40",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 6,
							"revision" : 5,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 59.0, 106.0, 640.0, 480.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 1,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 1,
						"objectsnaponopen" : 1,
						"statusbarvisible" : 2,
						"toolbarvisible" : 1,
						"lefttoolbarpinned" : 0,
						"toptoolbarpinned" : 0,
						"righttoolbarpinned" : 0,
						"bottomtoolbarpinned" : 0,
						"toolbars_unpinned_last_save" : 0,
						"tallnewobj" : 0,
						"boxanimatetime" : 200,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"description" : "",
						"digest" : "",
						"tags" : "",
						"style" : "",
						"subpatcher_template" : "",
						"assistshowspatchername" : 0,
						"boxes" : [ 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-79",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 160.623412999999999, 37.0, 22.0 ],
									"text" : "set 0"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-80",
									"linecount" : 2,
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 50.0, 127.623383000000004, 41.0, 35.0 ],
									"text" : "delay 80"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-81",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "" ],
									"patching_rect" : [ 50.0, 100.0, 55.751682000000002, 22.0 ],
									"text" : "sel 1"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.692156, 0.657535, 0.617954, 1.0 ],
									"blinkcolor" : [ 0.215478, 0.440638, 0.918583, 1.0 ],
									"id" : "obj-1",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"outlinecolor" : [ 0.215478, 0.440638, 0.918583, 1.0 ],
									"parameter_enable" : 0,
									"patching_rect" : [ 90.124161000000001, 127.623383000000004, 13.875838999999999, 13.875838999999999 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-30",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 40.0, 25.0, 25.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-31",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 50.0, 238.623412999999999, 25.0, 25.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-32",
									"index" : 2,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 89.124161000000001, 238.623412999999999, 25.0, 25.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-32", 0 ],
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-81", 0 ],
									"source" : [ "obj-30", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-31", 0 ],
									"source" : [ "obj-79", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-79", 0 ],
									"source" : [ "obj-80", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"midpoints" : [ 59.5, 123.311690999999996, 98.0, 123.311690999999996 ],
									"order" : 0,
									"source" : [ "obj-81", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-80", 0 ],
									"order" : 1,
									"source" : [ "obj-81", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 27.0, 218.0, 81.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p momentary"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-29",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "clear" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 6,
							"revision" : 5,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 134.0, 172.0, 144.0, 225.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 1,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 1,
						"objectsnaponopen" : 1,
						"statusbarvisible" : 2,
						"toolbarvisible" : 1,
						"lefttoolbarpinned" : 0,
						"toptoolbarpinned" : 0,
						"righttoolbarpinned" : 0,
						"bottomtoolbarpinned" : 0,
						"toolbars_unpinned_last_save" : 0,
						"tallnewobj" : 0,
						"boxanimatetime" : 200,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"description" : "",
						"digest" : "",
						"tags" : "",
						"style" : "",
						"subpatcher_template" : "",
						"assistshowspatchername" : 0,
						"boxes" : [ 							{
								"box" : 								{
									"bgcolor" : [ 0.74902, 0.705882, 0.662745, 1.0 ],
									"bgfillcolor_angle" : 270.0,
									"bgfillcolor_autogradient" : 0.79,
									"bgfillcolor_color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
									"bgfillcolor_color1" : [ 0.74902, 0.705882, 0.662745, 1.0 ],
									"bgfillcolor_color2" : [ 0.685, 0.685, 0.685, 1.0 ],
									"bgfillcolor_proportion" : 0.39,
									"bgfillcolor_type" : "gradient",
									"fontname" : "Trebuchet MS",
									"fontsize" : 14.0,
									"gradient" : 0,
									"id" : "obj-4",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 9.0, 46.0, 54.748322000000002, 25.0 ],
									"text" : "update",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-32",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 29.0, 160.295470999999992, 98.0, 22.0 ],
									"text" : "prepend append"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-31",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "clear" ],
									"patching_rect" : [ 56.0, 134.327025999999989, 43.0, 22.0 ],
									"text" : "t clear"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-30",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 29.0, 134.327025999999989, 27.0, 22.0 ],
									"text" : "iter"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-29",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 29.0, 109.200683999999995, 62.0, 22.0 ],
									"text" : "route port"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-7",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "" ],
									"patching_rect" : [ 9.0, 89.200683999999995, 39.0, 22.0 ],
									"text" : "serial"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-8",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "print" ],
									"patching_rect" : [ 9.0, 68.0, 41.0, 22.0 ],
									"text" : "t print"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-23",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 9.0, 6.0, 25.0, 25.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-26",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 29.0, 195.295470999999992, 25.0, 25.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"source" : [ "obj-23", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-30", 0 ],
									"order" : 1,
									"source" : [ "obj-29", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-31", 0 ],
									"midpoints" : [ 38.5, 130.857178000000005, 65.5, 130.857178000000005 ],
									"order" : 0,
									"source" : [ "obj-29", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-32", 0 ],
									"source" : [ "obj-30", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-26", 0 ],
									"midpoints" : [ 65.5, 156.0, 15.0, 156.0, 15.0, 192.0, 38.5, 192.0 ],
									"source" : [ "obj-31", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-26", 0 ],
									"midpoints" : [ 38.5, 180.0, 38.5, 180.0 ],
									"source" : [ "obj-32", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 0 ],
									"source" : [ "obj-4", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-29", 0 ],
									"source" : [ "obj-7", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-7", 0 ],
									"source" : [ "obj-8", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 27.0, 251.0, 57.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p update"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Avenir Book",
					"fontsize" : 24.0,
					"id" : "obj-33",
					"linecount" : 3,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 44.0, 107.0, 92.0, 105.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 97.173812866210938, 3.686386108398438, 232.378082275390625, 39.0 ],
					"text" : "update serial ports",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.74902, 0.705882, 0.662745, 1.0 ],
					"fontname" : "Trebuchet MS",
					"fontsize" : 12.0,
					"id" : "obj-567",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 27.0, 318.0, 84.0, 22.0 ],
					"text" : "prepend port"
				}

			}
, 			{
				"box" : 				{
					"align" : 1,
					"arrow" : 0,
					"bgcolor" : [ 0.994916, 0.989806, 0.995031, 1.0 ],
					"bgfillcolor_angle" : 270.0,
					"bgfillcolor_color" : [ 0.994916, 0.989806, 0.995031, 1.0 ],
					"bgfillcolor_color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
					"bgfillcolor_color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
					"bgfillcolor_proportion" : 0.39,
					"bgfillcolor_type" : "color",
					"fontname" : "Avenir Book",
					"fontsize" : 24.0,
					"id" : "obj-1129",
					"items" : [ "debug-console", ",", "JBLCharge4", ",", "WAZA-AIRAudio", ",", "Bluetooth-Incoming-Port", ",", "usbmodem1101" ],
					"maxclass" : "umenu",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 27.0, 273.0, 234.861816000000005, 41.0 ],
					"pattrmode" : 1,
					"presentation" : 1,
					"presentation_rect" : [ 5.513411998748779, 46.863662719726562, 415.39776611328125, 41.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_invisible" : 1,
							"parameter_longname" : "umenu",
							"parameter_mmax" : 3.0,
							"parameter_modmode" : 0,
							"parameter_shortname" : "umenu",
							"parameter_type" : 3
						}

					}
,
					"textcolor" : [ 0.149, 0.149, 0.149, 1.0 ],
					"textjustification" : 1,
					"varname" : "umenu"
				}

			}
, 			{
				"box" : 				{
>>>>>>> ed6937bfb3c5d55f578c11bc97f1c31664bbe09e
					"color" : [ 0.74902, 0.705882, 0.662745, 1.0 ],
					"fontname" : "Avenir Book",
					"fontsize" : 12.0,
					"id" : "obj-25",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "" ],
<<<<<<< HEAD
					"patching_rect" : [ 26.436781167984009, 252.87355899810791, 115.0, 25.0 ],
					"text" : "serial e 9600 @dtr 1"
=======
					"patching_rect" : [ 59.0, 535.0, 152.0, 25.0 ],
					"text" : "serial portA 115200 @dtr 1"
>>>>>>> ed6937bfb3c5d55f578c11bc97f1c31664bbe09e
				}

			}
, 			{
				"box" : 				{
<<<<<<< HEAD
					"angle" : 270.0,
					"background" : 1,
					"border" : 2,
					"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"grad1" : [ 0.301961, 0.301961, 0.301961, 0.0 ],
					"grad2" : [ 0.2, 0.2, 0.2, 0.0 ],
					"id" : "obj-127",
					"maxclass" : "panel",
					"mode" : 1,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 431.034475564956665, 315.229879379272461, 644.827575445175171, 223.850571393966675 ],
					"proportion" : 0.5
=======
					"id" : "obj-18",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 430.0, 215.0, 87.0, 22.0 ],
					"text" : "setall $1, bang"
				}

			}
, 			{
				"box" : 				{
					"activebgcolor" : [ 0.74902, 0.705882, 0.662745, 1.0 ],
					"activebgoncolor" : [ 0.215478, 0.440638, 0.918583, 1.0 ],
					"bgcolor" : [ 0.811765, 0.768627, 0.721569, 1.0 ],
					"bgoncolor" : [ 0.215478, 0.440638, 0.918583, 1.0 ],
					"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-70",
					"maxclass" : "live.toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 37.0, 106.0, 104.659728999999999, 107.02655 ],
					"presentation" : 1,
					"presentation_rect" : [ 5.513411998748779, 3.686386108398438, 415.698883056640625, 39.177276611328125 ],
					"rounded" : 10.0,
					"saved_attribute_attributes" : 					{
						"activebgcolor" : 						{
							"expression" : ""
						}
,
						"activebgoncolor" : 						{
							"expression" : ""
						}
,
						"bgcolor" : 						{
							"expression" : ""
						}
,
						"bgoncolor" : 						{
							"expression" : ""
						}
,
						"bordercolor" : 						{
							"expression" : ""
						}
,
						"valueof" : 						{
							"parameter_enum" : [ "off", "on" ],
							"parameter_longname" : "live.toggle[3]",
							"parameter_mmax" : 1,
							"parameter_modmode" : 0,
							"parameter_shortname" : "live.toggle",
							"parameter_type" : 2
						}

					}
,
					"varname" : "live.toggle[3]"
>>>>>>> ed6937bfb3c5d55f578c11bc97f1c31664bbe09e
				}

			}
, 			{
				"box" : 				{
					"angle" : 270.0,
					"background" : 1,
					"border" : 2,
					"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"grad1" : [ 0.301961, 0.301961, 0.301961, 0.0 ],
					"grad2" : [ 0.2, 0.2, 0.2, 0.0 ],
					"id" : "obj-57",
					"maxclass" : "panel",
					"mode" : 1,
					"numinlets" : 1,
					"numoutlets" : 0,
<<<<<<< HEAD
					"patching_rect" : [ 6.49350643157959, 66.666665554046631, 397.70114278793335, 472.413785219192505 ],
=======
					"patching_rect" : [ 286.5, 413.5, 396.0, 291.0 ],
>>>>>>> ed6937bfb3c5d55f578c11bc97f1c31664bbe09e
					"proportion" : 0.5
				}

			}
, 			{
				"box" : 				{
					"angle" : 270.0,
					"background" : 1,
					"border" : 2,
					"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"grad1" : [ 0.301961, 0.301961, 0.301961, 0.0 ],
					"grad2" : [ 0.2, 0.2, 0.2, 0.0 ],
					"id" : "obj-56",
					"maxclass" : "panel",
					"mode" : 1,
					"numinlets" : 1,
					"numoutlets" : 0,
<<<<<<< HEAD
					"patching_rect" : [ 431.034475564956665, 66.666665554046631, 644.827575445175171, 223.850571393966675 ],
=======
					"patching_rect" : [ 284.0, 47.0, 399.0, 320.0 ],
>>>>>>> ed6937bfb3c5d55f578c11bc97f1c31664bbe09e
					"proportion" : 0.5
				}

			}
<<<<<<< HEAD
 ],
		"lines" : [ 			{
				"patchline" : 				{
=======
, 			{
				"box" : 				{
					"id" : "obj-5",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 686.0, 133.0, 48.0, 22.0 ],
					"text" : "alpha 1"
				}

			}
, 			{
				"box" : 				{
					"attr" : "saturation",
					"id" : "obj-6",
					"maxclass" : "attrui",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 737.0, 133.0, 150.0, 22.0 ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-103", 0 ],
					"source" : [ "obj-101", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-125", 0 ],
					"source" : [ "obj-103", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-17", 0 ],
					"source" : [ "obj-105", 0 ]
				}

			}
, 			{
				"patchline" : 				{
>>>>>>> ed6937bfb3c5d55f578c11bc97f1c31664bbe09e
					"destination" : [ "obj-107", 0 ],
					"source" : [ "obj-106", 0 ]
				}

			}
, 			{
				"patchline" : 				{
<<<<<<< HEAD
					"destination" : [ "obj-129", 0 ],
=======
					"destination" : [ "obj-99", 0 ],
>>>>>>> ed6937bfb3c5d55f578c11bc97f1c31664bbe09e
					"source" : [ "obj-107", 0 ]
				}

			}
, 			{
				"patchline" : 				{
<<<<<<< HEAD
=======
					"destination" : [ "obj-109", 0 ],
					"source" : [ "obj-108", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-28", 0 ],
					"source" : [ "obj-109", 0 ]
				}

			}
, 			{
				"patchline" : 				{
>>>>>>> ed6937bfb3c5d55f578c11bc97f1c31664bbe09e
					"destination" : [ "obj-25", 0 ],
					"source" : [ "obj-110", 0 ]
				}

			}
, 			{
				"patchline" : 				{
<<<<<<< HEAD
					"destination" : [ "obj-61", 0 ],
					"source" : [ "obj-112", 0 ]
=======
					"destination" : [ "obj-567", 0 ],
					"midpoints" : [ 144.430907999999988, 313.594916810623204, 36.5, 313.594916810623204 ],
					"source" : [ "obj-1129", 1 ]
>>>>>>> ed6937bfb3c5d55f578c11bc97f1c31664bbe09e
				}

			}
, 			{
				"patchline" : 				{
<<<<<<< HEAD
					"destination" : [ "obj-112", 0 ],
					"source" : [ "obj-113", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-113", 0 ],
					"source" : [ "obj-114", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-114", 0 ],
					"source" : [ "obj-115", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-114", 0 ],
					"source" : [ "obj-115", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-94", 0 ],
=======
					"destination" : [ "obj-23", 0 ],
>>>>>>> ed6937bfb3c5d55f578c11bc97f1c31664bbe09e
					"source" : [ "obj-116", 0 ]
				}

			}
, 			{
				"patchline" : 				{
<<<<<<< HEAD
					"destination" : [ "obj-125", 0 ],
=======
					"destination" : [ "obj-23", 0 ],
					"source" : [ "obj-118", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-116", 0 ],
					"source" : [ "obj-119", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-118", 0 ],
					"source" : [ "obj-119", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-103", 1 ],
					"source" : [ "obj-12", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-119", 0 ],
>>>>>>> ed6937bfb3c5d55f578c11bc97f1c31664bbe09e
					"source" : [ "obj-120", 0 ]
				}

			}
, 			{
				"patchline" : 				{
<<<<<<< HEAD
					"destination" : [ "obj-120", 2 ],
=======
					"destination" : [ "obj-120", 0 ],
>>>>>>> ed6937bfb3c5d55f578c11bc97f1c31664bbe09e
					"source" : [ "obj-122", 0 ]
				}

			}
, 			{
				"patchline" : 				{
<<<<<<< HEAD
					"destination" : [ "obj-120", 3 ],
					"source" : [ "obj-123", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-120", 4 ],
=======
					"destination" : [ "obj-120", 1 ],
>>>>>>> ed6937bfb3c5d55f578c11bc97f1c31664bbe09e
					"source" : [ "obj-124", 0 ]
				}

			}
, 			{
				"patchline" : 				{
<<<<<<< HEAD
					"destination" : [ "obj-94", 0 ],
					"source" : [ "obj-128", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-47", 0 ],
					"source" : [ "obj-129", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-84", 1 ],
					"order" : 0,
=======
					"destination" : [ "obj-2", 0 ],
>>>>>>> ed6937bfb3c5d55f578c11bc97f1c31664bbe09e
					"source" : [ "obj-137", 0 ]
				}

			}
, 			{
				"patchline" : 				{
<<<<<<< HEAD
					"destination" : [ "obj-89", 0 ],
					"order" : 1,
					"source" : [ "obj-137", 0 ]
=======
					"destination" : [ "obj-50", 0 ],
					"source" : [ "obj-138", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-19", 0 ],
					"order" : 0,
					"source" : [ "obj-17", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-35", 0 ],
					"order" : 1,
					"source" : [ "obj-17", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-17", 0 ],
					"source" : [ "obj-18", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-25", 0 ],
					"midpoints" : [ 68.5, 518.070695939369216, 68.5, 518.070695939369216 ],
					"order" : 0,
					"source" : [ "obj-182", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-94", 0 ],
					"order" : 1,
					"source" : [ "obj-182", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-89", 0 ],
					"source" : [ "obj-2", 0 ]
>>>>>>> ed6937bfb3c5d55f578c11bc97f1c31664bbe09e
				}

			}
, 			{
				"patchline" : 				{
<<<<<<< HEAD
					"destination" : [ "obj-72", 0 ],
					"source" : [ "obj-20", 0 ]
=======
					"destination" : [ "obj-18", 0 ],
					"source" : [ "obj-23", 0 ]
>>>>>>> ed6937bfb3c5d55f578c11bc97f1c31664bbe09e
				}

			}
, 			{
				"patchline" : 				{
<<<<<<< HEAD
					"destination" : [ "obj-20", 1 ],
					"source" : [ "obj-22", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-78", 1 ],
					"source" : [ "obj-23", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-115", 0 ],
=======
					"destination" : [ "obj-61", 0 ],
>>>>>>> ed6937bfb3c5d55f578c11bc97f1c31664bbe09e
					"source" : [ "obj-25", 0 ]
				}

			}
, 			{
				"patchline" : 				{
<<<<<<< HEAD
					"destination" : [ "obj-25", 0 ],
=======
					"destination" : [ "obj-17", 0 ],
					"source" : [ "obj-26", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-26", 0 ],
					"source" : [ "obj-28", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1129", 0 ],
					"source" : [ "obj-29", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-19", 0 ],
>>>>>>> ed6937bfb3c5d55f578c11bc97f1c31664bbe09e
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
<<<<<<< HEAD
					"destination" : [ "obj-94", 0 ],
					"source" : [ "obj-43", 0 ]
=======
					"destination" : [ "obj-126", 0 ],
					"source" : [ "obj-35", 0 ]
>>>>>>> ed6937bfb3c5d55f578c11bc97f1c31664bbe09e
				}

			}
, 			{
				"patchline" : 				{
<<<<<<< HEAD
					"destination" : [ "obj-94", 0 ],
					"source" : [ "obj-45", 0 ]
=======
					"destination" : [ "obj-38", 0 ],
					"source" : [ "obj-36", 0 ]
>>>>>>> ed6937bfb3c5d55f578c11bc97f1c31664bbe09e
				}

			}
, 			{
				"patchline" : 				{
<<<<<<< HEAD
					"destination" : [ "obj-94", 0 ],
					"source" : [ "obj-46", 0 ]
=======
					"destination" : [ "obj-35", 0 ],
					"order" : 0,
					"source" : [ "obj-38", 0 ]
>>>>>>> ed6937bfb3c5d55f578c11bc97f1c31664bbe09e
				}

			}
, 			{
				"patchline" : 				{
<<<<<<< HEAD
					"destination" : [ "obj-49", 0 ],
					"source" : [ "obj-47", 0 ]
=======
					"destination" : [ "obj-37", 0 ],
					"order" : 1,
					"source" : [ "obj-38", 0 ]
>>>>>>> ed6937bfb3c5d55f578c11bc97f1c31664bbe09e
				}

			}
, 			{
				"patchline" : 				{
<<<<<<< HEAD
					"destination" : [ "obj-25", 0 ],
=======
					"destination" : [ "obj-29", 0 ],
					"midpoints" : [ 98.5, 246.419531810623198, 36.5, 246.419531810623198 ],
					"source" : [ "obj-40", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-70", 0 ],
					"midpoints" : [ 36.5, 243.502493810623179, 25.663192499622344, 243.502493810623179, 25.663192499622344, 104.949866810623178, 46.5, 104.949866810623178 ],
					"source" : [ "obj-40", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-28", 0 ],
>>>>>>> ed6937bfb3c5d55f578c11bc97f1c31664bbe09e
					"source" : [ "obj-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
<<<<<<< HEAD
					"destination" : [ "obj-25", 0 ],
=======
					"destination" : [ "obj-89", 0 ],
					"source" : [ "obj-50", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-25", 0 ],
					"midpoints" : [ 36.5, 530.450002372264862, 68.5, 530.450002372264862 ],
					"source" : [ "obj-567", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-28", 0 ],
					"source" : [ "obj-6", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-182", 0 ],
>>>>>>> ed6937bfb3c5d55f578c11bc97f1c31664bbe09e
					"source" : [ "obj-69", 0 ]
				}

			}
, 			{
				"patchline" : 				{
<<<<<<< HEAD
					"destination" : [ "obj-5", 0 ],
					"source" : [ "obj-7", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-72", 0 ],
					"source" : [ "obj-71", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-20", 2 ],
					"source" : [ "obj-78", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-71", 0 ],
					"source" : [ "obj-78", 1 ]
=======
					"destination" : [ "obj-40", 0 ],
					"midpoints" : [ 46.5, 215.949866810623178, 36.5, 215.949866810623178 ],
					"source" : [ "obj-70", 0 ]
>>>>>>> ed6937bfb3c5d55f578c11bc97f1c31664bbe09e
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-25", 0 ],
					"source" : [ "obj-8", 0 ]
				}

			}
, 			{
				"patchline" : 				{
<<<<<<< HEAD
					"destination" : [ "obj-91", 2 ],
					"source" : [ "obj-87", 0 ]
				}

			}
, 			{
				"patchline" : 				{
=======
>>>>>>> ed6937bfb3c5d55f578c11bc97f1c31664bbe09e
					"destination" : [ "obj-69", 0 ],
					"source" : [ "obj-89", 0 ]
				}

			}
, 			{
				"patchline" : 				{
<<<<<<< HEAD
					"destination" : [ "obj-93", 0 ],
					"source" : [ "obj-91", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-91", 1 ],
					"source" : [ "obj-92", 0 ]
=======
					"destination" : [ "obj-103", 1 ],
					"source" : [ "obj-99", 0 ]
>>>>>>> ed6937bfb3c5d55f578c11bc97f1c31664bbe09e
				}

			}
 ],
<<<<<<< HEAD
		"dependency_cache" : [  ],
		"autosave" : 0,
		"toolbaradditions" : [ "BEAP", "Vizzie", "Vsynth" ]
=======
		"parameters" : 		{
			"obj-102::obj-24::obj-12::obj-21" : [ "number[2]", "number", 0 ],
			"obj-102::obj-24::obj-12::obj-6" : [ "number[3]", "number[1]", 0 ],
			"obj-102::obj-24::obj-4::obj-18" : [ "number[1]", "number[1]", 0 ],
			"obj-102::obj-24::obj-4::obj-20" : [ "live.tab[1]", "live.tab[1]", 0 ],
			"obj-102::obj-24::obj-4::obj-21" : [ "number", "number", 0 ],
			"obj-1129" : [ "umenu", "umenu", 0 ],
			"obj-70" : [ "live.toggle[3]", "live.toggle", 0 ],
			"parameterbanks" : 			{

			}
,
			"inherited_shortname" : 1
		}
,
		"dependency_cache" : [ 			{
				"name" : "demovideo2.maxpat",
				"bootpath" : "C74:/help/jitter",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "interfacecolor.js",
				"bootpath" : "C74:/interfaces",
				"type" : "TEXT",
				"implicit" : 1
			}
 ],
		"autosave" : 0
>>>>>>> ed6937bfb3c5d55f578c11bc97f1c31664bbe09e
	}

}
