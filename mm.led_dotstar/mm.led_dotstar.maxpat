{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 8,
			"minor" : 6,
			"revision" : 2,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"classnamespace" : "box",
		"rect" : [ 3933.0, 197.0, 871.0, 538.0 ],
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
		"subpatcher_template" : "Untitled_template",
		"assistshowspatchername" : 0,
		"boxes" : [ 			{
				"box" : 				{
					"id" : "obj-45",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 151.868428468704224, 609.421074390411377, 150.0, 20.0 ],
					"text" : "debugging"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-43",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 385.263171672821045, 190.05263876914978, 150.0, 33.0 ],
					"text" : "change last # for bightness"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-41",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 308.421063661575317, 250.52632474899292, 150.515455484390259, 22.0 ],
					"text" : "all 191 179 0 255"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"id" : "obj-37",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 171.578953504562378, 9.473684549331665, 163.0, 33.0 ],
					"presentation_linecount" : 2,
					"text" : "Control a Adafruit dotstar ledstrip from Max"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-38",
					"linecount" : 3,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 15.789474248886108, 9.473684549331665, 155.0, 47.0 ],
					"presentation_linecount" : 3,
					"text" : "By Mark Meeuwenoord\nwww.markmeeuwenoord.nl\n2024"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-29",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 40.000001430511475, 716.842130899429321, 79.0, 22.0 ],
					"text" : "print ERROR"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-5",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 40.000001430511475, 682.105287551879883, 71.0, 22.0 ],
					"text" : "fromsymbol"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-4",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 40.000001430511475, 645.26318097114563, 40.0, 22.0 ],
					"text" : "itoa"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-3",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 40.000001430511475, 608.421074390411377, 81.0, 22.0 ],
					"text" : "zl.group 9999"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 3,
					"outlettype" : [ "bang", "bang", "" ],
					"patching_rect" : [ 41.052633047103882, 567.368441343307495, 57.0, 22.0 ],
					"text" : "sel 10 13"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-33",
					"linecount" : 96,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 530.526334762573242, 162.105268955230713, 655.0, 1307.0 ],
					"presentation_linecount" : 180,
					"text" : "/*\n * Created by ArduinoGetStarted.com\n * base example code is in the public domain\n *\n * Tutorial page: https://arduinogetstarted.com/tutorials/arduino-dotstar-led-strip\n\nEdits by Mark Meeuwenoord 2024\n */\n\n#include <Adafruit_DotStar.h>\n#include <SPI.h>  // COMMENT OUT THIS LINE FOR GEMMA OR TRINKET\n\n#define NUMPIXELS 144  // Number of LEDs in strip\n\n// Here's how to control the LEDs from any two pins:\n#define DATAPIN 2\n#define CLOCKPIN 3\nAdafruit_DotStar strip(NUMPIXELS, DATAPIN, CLOCKPIN, DOTSTAR_BRG);\n\nvoid setup() {\n  Serial.begin(9600);\n  strip.begin();  // INITIALIZE NeoPixel strip object (REQUIRED)\n  strip.show();   // Turn OFF all pixels ASAP\n  strip.setBrightness(255); // Set initial brightness to maximum\n\n  Serial.println(\"Enter 'pixel r g b brightness' to set an individual pixel or 'all r g b brightness' to set all pixels.\");\n}\n\nvoid loop() {\n  if (Serial.available()) {\n    String input = Serial.readStringUntil('\\n');\n    input.trim(); // Remove any extra newline characters\n\n    int spaceIndex1 = input.indexOf(' ');\n    int spaceIndex2 = input.indexOf(' ', spaceIndex1 + 1);\n    int spaceIndex3 = input.indexOf(' ', spaceIndex2 + 1);\n    int spaceIndex4 = input.indexOf(' ', spaceIndex3 + 1);\n\n    if (spaceIndex1 > 0 && spaceIndex2 > spaceIndex1 && spaceIndex3 > spaceIndex2 && spaceIndex4 > spaceIndex3) {\n      String pixelStr = input.substring(0, spaceIndex1);\n      int r = input.substring(spaceIndex1 + 1, spaceIndex2).toInt();\n      int g = input.substring(spaceIndex2 + 1, spaceIndex3).toInt();\n      int b = input.substring(spaceIndex3 + 1, spaceIndex4).toInt();\n      int brightness = input.substring(spaceIndex4 + 1).toInt();\n\n      if (brightness >= 0 && brightness <= 255) {\n        strip.setBrightness(brightness);\n\n        if (pixelStr.equals(\"all\")) {\n          for (int i = 0; i < NUMPIXELS; i++) {\n            strip.setPixelColor(i, r, g, b);\n          }\n          strip.show();\n\n          // Commented out the serial output\n          /*\n          Serial.print(\"Set all pixels: R=\");\n          Serial.print(r);\n          Serial.print(\", G=\");\n          Serial.print(g);\n          Serial.print(\", B=\");\n          Serial.print(b);\n          Serial.print(\", Brightness=\");\n          Serial.println(brightness);\n          */\n        } else {\n          int pixel = pixelStr.toInt();\n          if (pixel >= 0 && pixel < NUMPIXELS) {\n            strip.setPixelColor(pixel, r, g, b);\n            strip.show();\n\n            // Commented out the serial output\n            /*\n            Serial.print(\"Set Pixel \");\n            Serial.print(pixel);\n            Serial.print(\": R=\");\n            Serial.print(r);\n            Serial.print(\", G=\");\n            Serial.print(g);\n            Serial.print(\", B=\");\n            Serial.print(b);\n            Serial.print(\", Brightness=\");\n            Serial.println(brightness);\n            */\n          } else {\n            Serial.println(\"Invalid pixel number. Please enter a number between 0 and 143.\");\n          }\n        }\n      } else {\n        Serial.println(\"Invalid brightness. Please enter a value between 0 and 255.\");\n      }\n    } else {\n      Serial.println(\"Invalid input format. Please enter in the format: pixel r g b brightness or all r g b brightness\");\n    }\n  }\n}\n"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-31",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 286.315799713134766, 98.947371959686279, 150.0, 20.0 ],
					"text" : "Set all pixels"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-30",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 45.263159513473511, 98.947371959686279, 150.0, 20.0 ],
					"text" : "Set indivudual pixels"
				}

			}
, 			{
				"box" : 				{
					"compatibility" : 1,
					"id" : "obj-26",
					"maxclass" : "swatch",
					"numinlets" : 3,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 286.315799713134766, 144.21053147315979, 128.0, 32.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-24",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 286.315799713134766, 201.05263876914978, 94.0, 22.0 ],
					"text" : "all $1 $2 $3 255"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-23",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 257.894746065139771, 460.000016450881958, 39.0, 22.0 ],
					"text" : "port d"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-22",
					"maxclass" : "number",
					"maximum" : 255,
					"minimum" : 0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 176.842111587524414, 204.210533618927002, 50.0, 22.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_initial" : [ 255.0 ],
							"parameter_initial_enable" : 1,
							"parameter_longname" : "number",
							"parameter_mmax" : 255.0,
							"parameter_modmode" : 3,
							"parameter_shortname" : "number",
							"parameter_type" : 0
						}

					}
,
					"varname" : "number"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-21",
					"maxclass" : "number",
					"minimum" : 0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 41.052633047103882, 204.210533618927002, 50.0, 22.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_initial" : [ 0 ],
							"parameter_initial_enable" : 1,
							"parameter_invisible" : 1,
							"parameter_longname" : "number[1]",
							"parameter_modmode" : 0,
							"parameter_shortname" : "number[1]",
							"parameter_type" : 3
						}

					}
,
					"varname" : "number[1]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-19",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 61.052633762359619, 278.947378396987915, 150.515455484390259, 22.0 ],
					"text" : "22 0 105 194 202"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-9",
					"linecount" : 9,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 530.526334762573242, 24.210527181625366, 544.0, 127.0 ],
					"text" : "Set correct port & Open the Serial Monitor\n\nEnter the values in the format pixel r g b brightness to set an individual pixel or all r g b brightness to set all pixels. For example, 5 255 0 0 128 will set pixel 5 to red with a brightness of 128, and all 255 0 0 128 will set all pixels to red with a brightness of 128.\n\nThis code reads the input from the serial monitor, parses it to extract the pixel number, RGB values, and brightness, and then sets the specified pixel or all pixels to the provided color and brightness. If the input format is incorrect or the brightness is out of range, it will print an error message."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-6",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 41.052633047103882, 240.000008583068848, 155.0, 22.0 ],
					"text" : "join 3 @triggers -1"
				}

			}
, 			{
				"box" : 				{
					"compatibility" : 1,
					"id" : "obj-290",
					"maxclass" : "swatch",
					"numinlets" : 3,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 108.421056509017944, 135.789478540420532, 128.0, 32.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-314",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 121.052635908126831, 374.736855506896973, 150.0, 33.0 ],
					"text" : "we need to speed down for stability"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-310",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 41.052633047103882, 374.736855506896973, 73.0, 22.0 ],
					"text" : "speedlim 20"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-35",
					"linecount" : 3,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 160.000005722045898, 509.473702430725098, 202.0, 47.0 ],
					"text" : "change # into your COM port letter // change the baudrate in arduino code and here for more speed"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-14",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 1,
					"outlettype" : [ "list" ],
					"patching_rect" : [ 41.052633047103882, 412.631593704223633, 40.0, 22.0 ],
					"text" : "atoi"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 41.052633047103882, 460.000016450881958, 65.0, 22.0 ],
					"text" : "append 10"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-16",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 121.052635908126831, 460.000016450881958, 41.0, 22.0 ],
					"text" : "print"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-17",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 163.15790057182312, 460.000016450881958, 37.0, 22.0 ],
					"text" : "open"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-18",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 207.368428468704224, 460.000016450881958, 39.0, 22.0 ],
					"text" : "close"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-10",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "" ],
					"patching_rect" : [ 41.052633047103882, 508.42107081413269, 117.0, 22.0 ],
					"text" : "serial # 9600 @dtr 1"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"source" : [ "obj-10", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 0 ],
					"source" : [ "obj-12", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 0 ],
					"source" : [ "obj-14", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 0 ],
					"source" : [ "obj-16", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 0 ],
					"source" : [ "obj-17", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 0 ],
					"source" : [ "obj-18", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"source" : [ "obj-2", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"source" : [ "obj-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"source" : [ "obj-21", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 2 ],
					"source" : [ "obj-22", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 0 ],
					"source" : [ "obj-23", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-310", 0 ],
					"midpoints" : [ 295.815799713134766, 347.921074390411377, 50.552633047103882, 347.921074390411377 ],
					"order" : 1,
					"source" : [ "obj-24", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-41", 1 ],
					"order" : 0,
					"source" : [ "obj-24", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-24", 0 ],
					"source" : [ "obj-26", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 1 ],
					"source" : [ "obj-290", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 0 ],
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-14", 0 ],
					"source" : [ "obj-310", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"source" : [ "obj-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-29", 0 ],
					"source" : [ "obj-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-19", 1 ],
					"order" : 0,
					"source" : [ "obj-6", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-310", 0 ],
					"order" : 1,
					"source" : [ "obj-6", 0 ]
				}

			}
 ],
		"parameters" : 		{
			"obj-21" : [ "number[1]", "number[1]", 0 ],
			"obj-22" : [ "number", "number", 0 ],
			"parameterbanks" : 			{
				"0" : 				{
					"index" : 0,
					"name" : "",
					"parameters" : [ "-", "-", "-", "-", "-", "-", "-", "-" ]
				}

			}
,
			"inherited_shortname" : 1
		}
,
		"dependency_cache" : [  ],
		"autosave" : 0
	}

}
