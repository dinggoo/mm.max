{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 9,
			"minor" : 0,
			"revision" : 7,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"classnamespace" : "box",
		"rect" : [ 3877.0, 118.0, 1161.0, 679.0 ],
		"bglocked" : 1,
		"gridonopen" : 2,
		"gridsize" : [ 15.0, 15.0 ],
		"subpatcher_template" : "Untitled1_template",
		"boxes" : [ 			{
				"box" : 				{
					"id" : "obj-12",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 762.0, 207.0, 97.0, 22.0 ],
					"text" : "brightness 0 128"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-10",
					"linecount" : 11,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 784.0, 323.172406196594238, 279.0, 154.0 ],
					"text" : "DotStar Advantages:\n\nHigher refresh rates than NeoPixels\nMore reliable timing (clock signal eliminates timing issues)\nHardware brightness control (smoother dimming)\nNo timing constraints (easier to debug)\n\nThe fading, multiple strip control, and all other features work exactly the same as the NeoPixel version!"
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.999993324279785, 0.999963343143463, 0.041014768183231, 1.0 ],
					"id" : "obj-6",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 762.0, 245.0, 63.0, 22.0 ],
					"text" : "s toSTRIP"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-4",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 30.0, 563.0, 240.0, 20.0 ],
					"text" : "Arduino code For dotstar ledstrips"
				}

			}
, 			{
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
					"patching_rect" : [ 872.0, 77.591951251029968, 64.000000953674316, 20.0 ],
					"text" : "fadetime"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-98",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 819.0, 77.591951251029968, 46.400000691413879, 20.0 ],
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
					"patching_rect" : [ 767.0, 167.591951251029968, 63.0, 22.0 ],
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
					"patching_rect" : [ 818.0, 98.591951251029968, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-91",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 767.0, 134.591951251029968, 124.000001847743988, 22.0 ],
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
					"patching_rect" : [ 872.0, 98.591951251029968, 50.0, 22.0 ]
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
					"text" : "color 0 blue"
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
					"linecount" : 344,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 18.181818008422852, 611.688305854797363, 507.0, 4618.0 ],
					"text" : "#include <Adafruit_DotStar.h>\n\n// Configuration\n#define MAX_STRIPS 4\n#define MAX_PIXELS_PER_STRIP 100\n#define DEFAULT_FADE_TIME 1000  // Default fade time in milliseconds\n\n// Strip definitions - modify these for your setup\nstruct StripConfig {\n  int dataPin;\n  int clockPin;\n  int numPixels;\n  Adafruit_DotStar* strip;\n  uint32_t currentColor;\n  uint32_t targetColor;\n  unsigned long fadeStartTime;\n  int fadeTime;\n  bool fading;\n};\n\n// Initialize your strips here - each strip needs DATA and CLOCK pins\nStripConfig strips[MAX_STRIPS] = {\n  {2, 3, 30, nullptr, 0, 0, 0, DEFAULT_FADE_TIME, false},  // Strip 0: Data pin 2, Clock pin 3, 30 pixels\n  {4, 5, 30, nullptr, 0, 0, 0, DEFAULT_FADE_TIME, false},  // Strip 1: Data pin 4, Clock pin 5, 30 pixels\n  {6, 7, 30, nullptr, 0, 0, 0, DEFAULT_FADE_TIME, false},  // Strip 2: Data pin 6, Clock pin 7, 30 pixels\n  {8, 9, 30, nullptr, 0, 0, 0, DEFAULT_FADE_TIME, false}   // Strip 3: Data pin 8, Clock pin 9, 30 pixels\n};\n\nint numActiveStrips = 2; // Change this to match how many strips you're using\n\n// Predefined colors\nstruct ColorEntry {\n  const char* name;\n  uint8_t r, g, b;\n};\n\nColorEntry predefinedColors[] = {\n  {\"red\", 255, 0, 0},\n  {\"green\", 0, 255, 0},\n  {\"blue\", 0, 0, 255},\n  {\"white\", 255, 255, 255},\n  {\"yellow\", 255, 255, 0},\n  {\"purple\", 255, 0, 255},\n  {\"cyan\", 0, 255, 255},\n  {\"orange\", 255, 165, 0},\n  {\"pink\", 255, 192, 203},\n  {\"lime\", 50, 205, 50},\n  {\"magenta\", 255, 0, 255},\n  {\"teal\", 0, 128, 128},\n  {\"off\", 0, 0, 0},\n  {\"black\", 0, 0, 0}\n};\n\nvoid setup() {\n  Serial.begin(9600);\n  \n  // Initialize strips\n  for (int i = 0; i < numActiveStrips; i++) {\n    strips[i].strip = new Adafruit_DotStar(strips[i].numPixels, strips[i].dataPin, strips[i].clockPin, DOTSTAR_BRG);\n    strips[i].strip->begin();\n    strips[i].strip->show();\n    strips[i].currentColor = strips[i].strip->Color(0, 0, 0); // Start with off\n  }\n  \n  Serial.println(\"Multi-Strip DotStar Color Controller Ready\");\n  Serial.println(\"Commands:\");\n  Serial.println(\"  color <strip> <colorname> - Set color (e.g., 'color 0 red')\");\n  Serial.println(\"  rgb <strip> <r> <g> <b> - Set RGB (e.g., 'rgb 0 255 100 50')\");\n  Serial.println(\"  fade <strip> <time> - Set fade time in ms (e.g., 'fade 0 2000')\");\n  Serial.println(\"  pixels <strip> <count> - Set pixel count (e.g., 'pixels 0 50')\");\n  Serial.println(\"  all <colorname> - Set all strips to same color\");\n  Serial.println(\"  brightness <strip> <level> - Set brightness 0-255 (e.g., 'brightness 0 128')\");\n}\n\nvoid loop() {\n  // Handle serial commands\n  if (Serial.available()) {\n    String command = Serial.readStringUntil('\\n');\n    command.trim();\n    processCommand(command);\n  }\n  \n  // Update fading for all strips\n  updateFading();\n  \n  delay(10); // Small delay for smooth fading\n}\n\nvoid processCommand(String command) {\n  command.toLowerCase();\n  \n  if (command.startsWith(\"color \")) {\n    handleColorCommand(command);\n  } else if (command.startsWith(\"rgb \")) {\n    handleRGBCommand(command);\n  } else if (command.startsWith(\"fade \")) {\n    handleFadeTimeCommand(command);\n  } else if (command.startsWith(\"pixels \")) {\n    handlePixelCountCommand(command);\n  } else if (command.startsWith(\"all \")) {\n    handleAllStripCommand(command);\n  } else if (command.startsWith(\"brightness \")) {\n    handleBrightnessCommand(command);\n  } else {\n    Serial.println(\"Unknown command\");\n  }\n}\n\nvoid handleColorCommand(String command) {\n  // Format: color strip colorname\n  command.trim();\n  int firstSpace = command.indexOf(' ');\n  int secondSpace = command.indexOf(' ', firstSpace + 1);\n  if (firstSpace == -1 || secondSpace == -1) {\n    Serial.println(\"Invalid color command format\");\n    return;\n  }\n  \n  int stripIndex = command.substring(firstSpace + 1, secondSpace).toInt();\n  String colorName = command.substring(secondSpace + 1);\n  colorName.trim();\n  \n  Serial.println(\"Debug: stripIndex=\" + String(stripIndex) + \", colorName='\" + colorName + \"'\");\n  \n  if (stripIndex < 0 || stripIndex >= numActiveStrips) {\n    Serial.println(\"Invalid strip index\");\n    return;\n  }\n  \n  uint32_t color = getColorByName(colorName);\n  if (color != 0xFFFFFFFF) { // Valid color found\n    setStripColor(stripIndex, color);\n    Serial.println(\"Color set: Strip \" + String(stripIndex) + \" to \" + colorName);\n  } else {\n    Serial.println(\"Unknown color: \" + colorName);\n  }\n}\n\nvoid handleRGBCommand(String command) {\n  // Format: rgb strip r g b\n  int spacePositions[5];\n  int spaceCount = 0;\n  \n  // Find all space positions\n  for (int i = 0; i < command.length() && spaceCount < 5; i++) {\n    if (command.charAt(i) == ' ') {\n      spacePositions[spaceCount] = i;\n      spaceCount++;\n    }\n  }\n  \n  if (spaceCount >= 4) {\n    int stripIndex = command.substring(spacePositions[0] + 1, spacePositions[1]).toInt();\n    int r = constrain(command.substring(spacePositions[1] + 1, spacePositions[2]).toInt(), 0, 255);\n    int g = constrain(command.substring(spacePositions[2] + 1, spacePositions[3]).toInt(), 0, 255);\n    int b = constrain(command.substring(spacePositions[3] + 1).toInt(), 0, 255);\n    \n    if (stripIndex >= 0 && stripIndex < numActiveStrips) {\n      uint32_t color = strips[stripIndex].strip->Color(r, g, b);\n      setStripColor(stripIndex, color);\n      Serial.println(\"RGB set: Strip \" + String(stripIndex) + \" to (\" + String(r) + \",\" + String(g) + \",\" + String(b) + \")\");\n    } else {\n      Serial.println(\"Invalid strip index\");\n    }\n  } else {\n    Serial.println(\"Invalid RGB command format\");\n  }\n}\n\nvoid handleFadeTimeCommand(String command) {\n  // Format: fade strip time\n  command.trim();\n  int firstSpace = command.indexOf(' ');\n  int secondSpace = command.indexOf(' ', firstSpace + 1);\n  if (firstSpace == -1 || secondSpace == -1) {\n    Serial.println(\"Invalid fade command format\");\n    return;\n  }\n  \n  int stripIndex = command.substring(firstSpace + 1, secondSpace).toInt();\n  String fadeTimeStr = command.substring(secondSpace + 1);\n  fadeTimeStr.trim();\n  int fadeTime = fadeTimeStr.toInt();\n  \n  Serial.println(\"Debug: stripIndex=\" + String(stripIndex) + \", fadeTime=\" + String(fadeTime));\n  \n  if (stripIndex >= 0 && stripIndex < numActiveStrips && fadeTime > 0) {\n    strips[stripIndex].fadeTime = fadeTime;\n    Serial.println(\"Fade time set: Strip \" + String(stripIndex) + \" to \" + String(fadeTime) + \"ms\");\n  } else {\n    Serial.println(\"Invalid fade command - stripIndex:\" + String(stripIndex) + \" fadeTime:\" + String(fadeTime));\n  }\n}\n\nvoid handlePixelCountCommand(String command) {\n  // Format: pixels strip count\n  command.trim();\n  int firstSpace = command.indexOf(' ');\n  int secondSpace = command.indexOf(' ', firstSpace + 1);\n  if (firstSpace == -1 || secondSpace == -1) {\n    Serial.println(\"Invalid pixels command format\");\n    return;\n  }\n  \n  int stripIndex = command.substring(firstSpace + 1, secondSpace).toInt();\n  String pixelCountStr = command.substring(secondSpace + 1);\n  pixelCountStr.trim();\n  int pixelCount = pixelCountStr.toInt();\n  \n  Serial.println(\"Debug: stripIndex=\" + String(stripIndex) + \", pixelCount=\" + String(pixelCount));\n  \n  if (stripIndex >= 0 && stripIndex < numActiveStrips && pixelCount > 0 && pixelCount <= MAX_PIXELS_PER_STRIP) {\n    strips[stripIndex].numPixels = pixelCount;\n    // Reinitialize the strip with new pixel count\n    delete strips[stripIndex].strip;\n    strips[stripIndex].strip = new Adafruit_DotStar(pixelCount, strips[stripIndex].dataPin, strips[stripIndex].clockPin, DOTSTAR_BRG);\n    strips[stripIndex].strip->begin();\n    strips[stripIndex].strip->show();\n    Serial.println(\"Pixel count set: Strip \" + String(stripIndex) + \" to \" + String(pixelCount));\n  } else {\n    Serial.println(\"Invalid pixel count command - stripIndex:\" + String(stripIndex) + \" pixelCount:\" + String(pixelCount));\n  }\n}\n\nvoid handleAllStripCommand(String command) {\n  // Format: all colorname\n  command.trim();\n  String colorName = command.substring(4);\n  colorName.trim();\n  \n  uint32_t color = getColorByName(colorName);\n  \n  if (color != 0xFFFFFFFF) {\n    for (int i = 0; i < numActiveStrips; i++) {\n      setStripColor(i, color);\n    }\n    Serial.println(\"All strips set to \" + colorName);\n  } else {\n    Serial.println(\"Unknown color: \" + colorName);\n  }\n}\n\nvoid handleBrightnessCommand(String command) {\n  // Format: brightness strip level\n  command.trim();\n  int firstSpace = command.indexOf(' ');\n  int secondSpace = command.indexOf(' ', firstSpace + 1);\n  if (firstSpace == -1 || secondSpace == -1) {\n    Serial.println(\"Invalid brightness command format\");\n    return;\n  }\n  \n  int stripIndex = command.substring(firstSpace + 1, secondSpace).toInt();\n  String brightnessStr = command.substring(secondSpace + 1);\n  brightnessStr.trim();\n  int brightness = constrain(brightnessStr.toInt(), 0, 255);\n  \n  Serial.println(\"Debug: stripIndex=\" + String(stripIndex) + \", brightness=\" + String(brightness));\n  \n  if (stripIndex >= 0 && stripIndex < numActiveStrips) {\n    strips[stripIndex].strip->setBrightness(brightness);\n    strips[stripIndex].strip->show();\n    Serial.println(\"Brightness set: Strip \" + String(stripIndex) + \" to \" + String(brightness));\n  } else {\n    Serial.println(\"Invalid strip index\");\n  }\n}\n\nuint32_t getColorByName(String colorName) {\n  int numColors = sizeof(predefinedColors) / sizeof(ColorEntry);\n  \n  for (int i = 0; i < numColors; i++) {\n    if (colorName.equals(predefinedColors[i].name)) {\n      return strips[0].strip->Color(predefinedColors[i].r, predefinedColors[i].g, predefinedColors[i].b);\n    }\n  }\n  return 0xFFFFFFFF; // Invalid color marker\n}\n\nvoid setStripColor(int stripIndex, uint32_t color) {\n  if (stripIndex < 0 || stripIndex >= numActiveStrips) return;\n  \n  strips[stripIndex].targetColor = color;\n  strips[stripIndex].fadeStartTime = millis();\n  strips[stripIndex].fading = true;\n}\n\nvoid updateFading() {\n  for (int stripIndex = 0; stripIndex < numActiveStrips; stripIndex++) {\n    if (!strips[stripIndex].fading) continue;\n    \n    unsigned long elapsed = millis() - strips[stripIndex].fadeStartTime;\n    \n    if (elapsed >= strips[stripIndex].fadeTime) {\n      // Fade complete\n      strips[stripIndex].currentColor = strips[stripIndex].targetColor;\n      strips[stripIndex].fading = false;\n      setStripToColor(stripIndex, strips[stripIndex].currentColor);\n    } else {\n      // Calculate interpolated color\n      float progress = (float)elapsed / strips[stripIndex].fadeTime;\n      uint32_t interpolatedColor = interpolateColor(strips[stripIndex].currentColor, strips[stripIndex].targetColor, progress);\n      setStripToColor(stripIndex, interpolatedColor);\n    }\n  }\n}\n\nuint32_t interpolateColor(uint32_t color1, uint32_t color2, float progress) {\n  uint8_t r1 = (color1 >> 16) & 0xFF;\n  uint8_t g1 = (color1 >> 8) & 0xFF;\n  uint8_t b1 = color1 & 0xFF;\n  \n  uint8_t r2 = (color2 >> 16) & 0xFF;\n  uint8_t g2 = (color2 >> 8) & 0xFF;\n  uint8_t b2 = color2 & 0xFF;\n  \n  uint8_t r = r1 + (r2 - r1) * progress;\n  uint8_t g = g1 + (g2 - g1) * progress;\n  uint8_t b = b1 + (b2 - b1) * progress;\n  \n  return strips[0].strip->Color(r, g, b);\n}\n\nvoid setStripToColor(int stripIndex, uint32_t color) {\n  for (int i = 0; i < strips[stripIndex].numPixels; i++) {\n    strips[stripIndex].strip->setPixelColor(i, color);\n  }\n  strips[stripIndex].strip->show();\n}"
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
					"linecount" : 15,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 449.0, 319.643671274185181, 388.0, 208.0 ],
					"text" : "All Commands:\n\ncolor 0 red - Set strip 0 to red\nrgb 0 255 100 50 - Set RGB values\nfade 0 2000 - Set fade time to 2 seconds\npixels 0 50 - Set pixel count\nall blue - Set all strips to blue\nNEW: brightness 0 128 - Set strip 0 brightness (0-255)\n\nWiring for DotStar:\n\nStrip 0: Data → Pin 2, Clock → Pin 3\nStrip 1: Data → Pin 4, Clock → Pin 5\nPower: 5V and GND to Arduino and strips\nLevel Shifting: May need level shifters for 5V strips with 3.3V logic"
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
					"id" : "obj-8",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 166.666663885116577, 201.14942193031311, 35.0, 22.0 ],
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
					"patching_rect" : [ 165.517238616943359, 227.586203098297119, 37.0, 22.0 ],
					"text" : "close"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 14.0,
					"id" : "obj-1",
					"linecount" : 3,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 18.0, 9.195402145385742, 235.195398807525635, 53.0 ],
					"text" : "mm.led_dotstar\nBy Mark Meeuwenoord\n2025"
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
					"patching_rect" : [ 26.436781167984009, 98.850573062896729, 61.0, 22.0 ],
					"text" : "r toSTRIP"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-106",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 595.402288913726807, 82.75861930847168, 24.0, 24.0 ]
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
							"major" : 9,
							"minor" : 0,
							"revision" : 7,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 134.0, 159.0, 265.0, 281.0 ],
						"default_fontsize" : 10.0,
						"gridsize" : [ 15.0, 15.0 ],
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
 ],
						"toolbaradditions" : [ "BEAP", "Vizzie", "Vsynth" ]
					}
,
					"patching_rect" : [ 595.402288913726807, 113.79310154914856, 111.0, 23.0 ],
					"saved_object_attributes" : 					{
						"fontsize" : 10.0
					}
,
					"text" : "p mood_machine"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-61",
					"linecount" : 2,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 26.436781167984009, 458.620682001113892, 117.79999977350235, 38.0 ],
					"text" : "print fromArduino @popup 1"
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
					"patching_rect" : [ 26.436781167984009, 196.551720857620239, 65.0, 22.0 ],
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
					"patching_rect" : [ 26.436781167984009, 163.218388080596924, 40.0, 22.0 ],
					"text" : "atoi"
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.74902, 0.705882, 0.662745, 1.0 ],
					"fontname" : "Avenir Book",
					"fontsize" : 12.0,
					"id" : "obj-25",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "" ],
					"patching_rect" : [ 26.436781167984009, 252.87355899810791, 115.0, 25.0 ],
					"text" : "serial e 9600 @dtr 1"
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
					"id" : "obj-127",
					"maxclass" : "panel",
					"mode" : 1,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 431.034475564956665, 315.229879379272461, 644.827575445175171, 223.850571393966675 ],
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
					"id" : "obj-57",
					"maxclass" : "panel",
					"mode" : 1,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 6.49350643157959, 66.666665554046631, 397.70114278793335, 472.413785219192505 ],
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
					"patching_rect" : [ 431.034475564956665, 66.666665554046631, 644.827575445175171, 223.850571393966675 ],
					"proportion" : 0.5
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-107", 0 ],
					"source" : [ "obj-106", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-129", 0 ],
					"source" : [ "obj-107", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-25", 0 ],
					"source" : [ "obj-110", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-61", 0 ],
					"source" : [ "obj-112", 0 ]
				}

			}
, 			{
				"patchline" : 				{
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
					"source" : [ "obj-116", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"source" : [ "obj-12", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-125", 0 ],
					"source" : [ "obj-120", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-120", 2 ],
					"source" : [ "obj-122", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-120", 3 ],
					"source" : [ "obj-123", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-120", 4 ],
					"source" : [ "obj-124", 0 ]
				}

			}
, 			{
				"patchline" : 				{
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
					"source" : [ "obj-137", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-89", 0 ],
					"order" : 1,
					"source" : [ "obj-137", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-72", 0 ],
					"source" : [ "obj-20", 0 ]
				}

			}
, 			{
				"patchline" : 				{
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
					"source" : [ "obj-25", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-25", 0 ],
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-94", 0 ],
					"source" : [ "obj-43", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-94", 0 ],
					"source" : [ "obj-45", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-94", 0 ],
					"source" : [ "obj-46", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-49", 0 ],
					"source" : [ "obj-47", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-25", 0 ],
					"source" : [ "obj-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-25", 0 ],
					"source" : [ "obj-69", 0 ]
				}

			}
, 			{
				"patchline" : 				{
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
					"destination" : [ "obj-91", 2 ],
					"source" : [ "obj-87", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-69", 0 ],
					"source" : [ "obj-89", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-93", 0 ],
					"source" : [ "obj-91", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-91", 1 ],
					"source" : [ "obj-92", 0 ]
				}

			}
 ],
		"dependency_cache" : [  ],
		"autosave" : 0,
		"toolbaradditions" : [ "BEAP", "Vizzie", "Vsynth", "TS.Modular" ],
		"oscsendudpaddr" : "localhost"
	}

}
