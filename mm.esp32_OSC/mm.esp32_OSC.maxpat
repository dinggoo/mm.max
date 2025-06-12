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
		"rect" : [ 84.0, 131.0, 1076.0, 425.0 ],
		"gridonopen" : 2,
		"gridsize" : [ 15.0, 15.0 ],
		"subpatcher_template" : "Untitled1_template",
		"boxes" : [ 			{
				"box" : 				{
					"id" : "obj-23",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 139.655179738998413, 77.586210966110229, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-24",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 139.655179738998413, 114.655178427696228, 62.0, 22.0 ],
					"text" : "/debug $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-21",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 171.551733136177063, 234.482770919799805, 76.0, 22.0 ],
					"text" : "/readmode n"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-20",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 273.275876402854919, 128.448282599449158, 76.0, 22.0 ],
					"text" : "/readmode a"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-19",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 273.275876402854919, 104.310350298881531, 76.0, 22.0 ],
					"text" : "/readmode d"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-18",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 58.620692729949951, 33.620691418647766, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-16",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 58.620692729949951, 69.827589869499207, 63.0, 22.0 ],
					"text" : "metro 200"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-13",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 273.275876402854919, 82.758625030517578, 76.0, 22.0 ],
					"text" : "/readmode n"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-10",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 58.620692729949951, 111.206902384757996, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-8",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 58.620692729949951, 150.00000786781311, 57.0, 22.0 ],
					"text" : "/w d 2 $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-6",
					"linecount" : 3,
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 292.241394639015198, 256.034496188163757, 141.379317760467529, 49.0 ],
					"text" : "/r/d 1 1 0 1 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-4",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 299.137946724891663, 200.862079501152039, 97.0, 22.0 ],
					"text" : "udpreceive 9000"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-3",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 52.586209654808044, 204.310355544090271, 178.0, 22.0 ],
					"text" : "udpsend 192.168.178.128 8000"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2",
					"linecount" : 96,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 519.827613472938538, 111.206902384757996, 316.0, 1293.0 ],
					"text" : "ESP32 OSC Controller - Feature Summary\nCore Features\n\nWiFi connectivity with automatic connection and IP address reporting\nOSC (Open Sound Control) bidirectional communication over UDP\nMulti-pin control - read/write all available ESP32 GPIO pins\nReal-time sensor monitoring with configurable intervals\nServo motor control with PWM generation\nDebug mode toggle for performance optimization\n\nAvailable Pins\n\nDigital I/O: 0, 1, 2, 3, 4, 5, 12, 13, 14, 15, 16, 17, 18, 19, 21, 22, 23, 25, 26, 27, 32, 33, 34, 35, 36, 39\nAnalog Input: 32, 33, 34, 35, 36, 39 (ADC1 pins)\nServo Output: 25, 26 (predefined, but any pin can be used)\n\nNetwork Configuration\n\nListening Port: 8000 (receives OSC commands)\nOutgoing Port: 9000 (sends sensor data)\nTarget IP: 192.168.178.102 (configurable)\n\nOSC Message Commands\nWrite Operations - /w\nFormat: /w [type] [pin] [value]\n\nDigital: /w \"d\" 13 1 - Set pin 13 HIGH\nAnalog/PWM: /write \"a\" 25 128 - Set pin 25 to PWM value 128 (0-255)\nServo: /w \"s\" 25 90 - Move servo on pin 25 to 90 degrees (0-180)\n\nRead Mode Control - /readmode\nFormat: /readmode [mode]\n\nDigital: /readmode \"d\" - Start reading all digital pins\nAnalog: /readmode \"a\" - Start reading all analog pins\nOff: /readmode \"n\" - Stop reading\n\nRead Interval - /interval\nFormat: /interval [milliseconds]\n\nExample: /interval 50 - Read sensors every 50ms (default: 100ms)\n\nDebug Control - /debug\nFormat: /debug [0/1]\n\nEnable: /debug 1 - Request debug mode (requires restart)\nDisable: /debug 0 - Request normal mode (requires restart)\n\nOutgoing OSC Messages\nDigital Readings - /r/d\n\nSent when in digital read mode\nContains array of values (0 or 1) for all digital pins in order\n\nAnalog Readings - /r/a\n\nSent when in analog read mode\nContains array of ADC values (0-4095) for all analog pins in order\n\nDebug Features\n\nConnection status with detailed WiFi diagnostics\nNetwork information (IP, gateway, DNS, signal strength)\nCommand logging shows received OSC messages\nPerformance mode - disable debug for faster operation\nTroubleshooting hints for common connection issues\n\nTechnical Specs\n\nBaud Rate: 9600\nWiFi: 2.4GHz networks only\nPWM Resolution: 8-bit (analog), 16-bit (servo)\nServo Range: 0-180 degrees\nADC Resolution: 12-bit (0-4095)\nConnection Timeout: 15 seconds\n\nQuick Setup\n\nUpdate WiFi credentials in code\nSet DEBUG_ENABLED = true/false as needed\nUpload to ESP32\nNote IP address from serial monitor\nSend OSC commands to ESP32_IP:8000\nReceive sensor data from ESP32 on port 9000"
				}

			}
, 			{
				"box" : 				{
					"attr" : "defer",
					"id" : "obj-11",
					"maxclass" : "attrui",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 292.241394639015198, 163.79311203956604, 150.0, 22.0 ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 0 ],
					"source" : [ "obj-10", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 0 ],
					"source" : [ "obj-11", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"source" : [ "obj-13", 0 ]
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
					"destination" : [ "obj-16", 0 ],
					"source" : [ "obj-18", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"source" : [ "obj-19", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"source" : [ "obj-20", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-24", 0 ],
					"source" : [ "obj-23", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"source" : [ "obj-24", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 1 ],
					"source" : [ "obj-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"source" : [ "obj-8", 0 ]
				}

			}
 ],
		"dependency_cache" : [  ],
		"autosave" : 0,
		"toolbaradditions" : [ "BEAP", "Vizzie" ]
	}

}
