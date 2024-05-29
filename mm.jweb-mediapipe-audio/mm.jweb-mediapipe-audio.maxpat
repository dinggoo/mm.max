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
		"rect" : [ 68.0, 87.0, 1066.0, 679.0 ],
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
					"id" : "obj-29",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 945.0, 288.0, 108.0, 22.0 ],
					"text" : "Speech 0.109"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-27",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 918.5, 466.0, 73.0, 22.0 ],
					"text" : "prepend get"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-26",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 931.0, 431.0, 136.0, 22.0 ],
					"text" : "Speech"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-13",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 867.0, 243.0, 41.0, 22.0 ],
					"text" : "unjoin"
				}

			}
, 			{
				"box" : 				{
					"hidden" : 1,
					"id" : "obj-16",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 867.0, 208.0, 134.0, 22.0 ],
					"text" : "loadmess getkeys clear"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-14",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 891.0, 325.0, 25.0, 22.0 ],
					"text" : "iter"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-19",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 891.0, 358.0, 96.0, 22.0 ],
					"text" : "prepend append"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-22",
					"items" : [ "A capella", ",", "Accelerating, revving, vroom", ",", "Accordion", ",", "Acoustic guitar", ",", "Afrobeat", ",", "Air brake", ",", "Air conditioning", ",", "Air horn, truck horn", ",", "Aircraft", ",", "Aircraft engine", ",", "Alarm", ",", "Alarm clock", ",", "Ambient music", ",", "Ambulance (siren)", ",", "Angry music", ",", "Animal", ",", "Applause", ",", "Arrow", ",", "Artillery fire", ",", "Babbling", ",", "Baby cry, infant cry", ",", "Baby laughter", ",", "Background music", ",", "Bagpipes", ",", "Bang", ",", "Banjo", ",", "Bark", ",", "Basketball bounce", ",", "Bass drum", ",", "Bass guitar", ",", "Bathtub (filling or washing)", ",", "Beatboxing", ",", "Bee, wasp, etc.", ",", "Beep, bleep", ",", "Bell", ",", "Bellow", ",", "Belly laugh", ",", "Bicycle", ",", "Bicycle bell", ",", "Bird", ",", "Bird flight, flapping wings", ",", "Bird vocalization, bird call, bird song", ",", "Biting", ",", "Bleat", ",", "Blender", ",", "Bluegrass", ",", "Blues", ",", "Boat, Water vehicle", ",", "Boiling", ",", "Boing", ",", "Boom", ",", "Bouncing", ",", "Bow-wow", ",", "Bowed string instrument", ",", "Brass instrument", ",", "Breaking", ",", "Breathing", ",", "Burping, eructation", ",", "Burst, pop", ",", "Bus", ",", "Busy signal", ",", "Buzz", ",", "Buzzer", ",", "Cacophony", ",", "Camera", ",", "Canidae, dogs, wolves", ",", "Cap gun", ",", "Car", ",", "Car alarm", ",", "Car passing by", ",", "Carnatic music", ",", "Cash register", ",", "Cat", ",", "Caterwaul", ",", "Cattle, bovinae", ",", "Caw", ",", "Cello", ",", "Chainsaw", ",", "Change ringing (campanology)", ",", "Chant", ",", "Chatter", ",", "Cheering", ",", "Chewing, mastication", ",", "Chicken, rooster", ",", "Child singing", ",", "Child speech, kid speaking", ",", "Children playing", ",", "Children shouting", ",", "Chime", ",", "Chink, clink", ",", "Chirp tone", ",", "Chirp, tweet", ",", "Choir", ",", "Chop", ",", "Chopping (food)", ",", "Chorus effect", ",", "Christian music", ",", "Christmas music", ",", "Chuckle, chortle", ",", "Church bell", ",", "Civil defense siren", ",", "Clang", ",", "Clapping", ",", "Clarinet", ",", "Classical music", ",", "Clatter", ",", "Clickety-clack", ",", "Clicking", ",", "Clip-clop", ",", "Clock", ",", "Cluck", ",", "Coin (dropping)", ",", "Computer keyboard", ",", "Conversation", ",", "Coo", ",", "Cough", ",", "Country", ",", "Cowbell", ",", "Crack", ",", "Crackle", ",", "Creak", ",", "Cricket", ",", "Croak", ",", "Crow", ",", "Crowd", ",", "Crowing, cock-a-doodle-doo", ",", "Crumpling, crinkling", ",", "Crunch", ",", "Crushing", ",", "Crying, sobbing", ",", "Cupboard open or close", ",", "Cutlery, silverware", ",", "Cymbal", ",", "Dance music", ",", "Dental drill, dentist's drill", ",", "Dial tone", ",", "Didgeridoo", ",", "Ding", ",", "Ding-dong", ",", "Disco", ",", "Dishes, pots, and pans", ",", "Distortion", ",", "Dog", ",", "Domestic animals, pets", ",", "Door", ",", "Doorbell", ",", "Double bass", ",", "Drawer open or close", ",", "Drill", ",", "Drip", ",", "Drum", ",", "Drum and bass", ",", "Drum kit", ",", "Drum machine", ",", "Drum roll", ",", "Dubstep", ",", "Duck", ",", "Echo", ",", "Effects unit", ",", "Electric guitar", ",", "Electric piano", ",", "Electric shaver, electric razor", ",", "Electric toothbrush", ",", "Electronic dance music", ",", "Electronic music", ",", "Electronic organ", ",", "Electronic tuner", ",", "Electronica", ",", "Emergency vehicle", ",", "Engine", ",", "Engine knocking", ",", "Engine starting", ",", "Environmental noise", ",", "Eruption", ",", "Exciting music", ",", "Explosion", ",", "Fart", ",", "Field recording", ",", "Filing (rasp)", ",", "Fill (with liquid)", ",", "Finger snapping", ",", "Fire", ",", "Fire alarm", ",", "Fire engine, fire truck (siren)", ",", "Firecracker", ",", "Fireworks", ",", "Fixed-wing aircraft, airplane", ",", "Flamenco", ",", "Flap", ",", "Flute", ",", "Fly, housefly", ",", "Foghorn", ",", "Folk music", ",", "Fowl", ",", "French horn", ",", "Frog", ",", "Frying (food)", ",", "Funk", ",", "Fusillade", ",", "Gargling", ",", "Gasp", ",", "Gears", ",", "Giggle", ",", "Glass", ",", "Glockenspiel", ",", "Goat", ",", "Gobble", ",", "Gong", ",", "Goose", ",", "Gospel music", ",", "Groan", ",", "Growling", ",", "Grunge", ",", "Grunt", ",", "Guitar", ",", "Gunshot, gunfire", ",", "Gurgling", ",", "Gush", ",", "Hair dryer", ",", "Hammer", ",", "Hammond organ", ",", "Hands", ",", "Happy music", ",", "Harmonic", ",", "Harmonica", ",", "Harp", ",", "Harpsichord", ",", "Heart murmur", ",", "Heart sounds, heartbeat", ",", "Heavy engine (low frequency)", ",", "Heavy metal", ",", "Helicopter", ",", "Hi-hat", ",", "Hiccup", ",", "Hip hop music", ",", "Hiss", ",", "Honk", ",", "Hoot", ",", "Horse", ",", "House music", ",", "Howl", ",", "Hubbub, speech noise, speech babble", ",", "Hum", ",", "Humming", ",", "Ice cream truck, ice cream van", ",", "Idling", ",", "Independent music", ",", "Insect", ",", "Inside, large room or hall", ",", "Inside, public space", ",", "Inside, small room", ",", "Jackhammer", ",", "Jazz", ",", "Jet engine", ",", "Jingle (music)", ",", "Jingle bell", ",", "Jingle, tinkle", ",", "Keyboard (musical)", ",", "Keys jangling", ",", "Knock", ",", "Laughter", ",", "Lawn mower", ",", "Light engine (high frequency)", ",", "Liquid", ",", "Livestock, farm animals, working animals", ",", "Lullaby", ",", "Machine gun", ",", "Mains hum", ",", "Mallet percussion", ",", "Mandolin", ",", "Mantra", ",", "Maraca", ",", "Marimba, xylophone", ",", "Mechanical fan", ",", "Mechanisms", ",", "Medium engine (mid frequency)", ",", "Meow", ",", "Microwave oven", ",", "Middle Eastern music", ",", "Moo", ",", "Mosquito", ",", "Motor vehicle (road)", ",", "Motorboat, speedboat", ",", "Motorcycle", ",", "Mouse", ",", "Music", ",", "Music for children", ",", "Music of Africa", ",", "Music of Asia", ",", "Music of Bollywood", ",", "Music of Latin America", ",", "Musical instrument", ",", "Narration, monologue", ",", "Neigh, whinny", ",", "New-age music", ",", "Noise", ",", "Ocean", ",", "Oink", ",", "Opera", ",", "Orchestra", ",", "Organ", ",", "Outside, rural or natural", ",", "Outside, urban or manmade", ",", "Owl", ",", "Pant", ",", "Patter", ",", "Percussion", ",", "Piano", ",", "Pig", ",", "Pigeon, dove", ",", "Ping", ",", "Pink noise", ",", "Pizzicato", ",", "Plop", ",", "Plucked string instrument", ",", "Police car (siren)", ",", "Pop music", ",", "Pour", ",", "Power tool", ",", "Power windows, electric windows", ",", "Printer", ",", "Progressive rock", ",", "Propeller, airscrew", ",", "Psychedelic rock", ",", "Pulleys", ",", "Pulse", ",", "Pump (liquid)", ",", "Punk rock", ",", "Purr", ",", "Quack", ",", "Race car, auto racing", ",", "Radio", ",", "Rail transport", ",", "Railroad car, train wagon", ",", "Rain", ",", "Rain on surface", ",", "Raindrop", ",", "Rapping", ",", "Ratchet, pawl", ",", "Rattle", ",", "Rattle (instrument)", ",", "Reggae", ",", "Reverberation", ",", "Reversing beeps", ",", "Rhythm and blues", ",", "Rimshot", ",", "Ringtone", ",", "Roar", ",", "Roaring cats (lions, tigers)", ",", "Rock and roll", ",", "Rock music", ",", "Rodents, rats, mice", ",", "Roll", ",", "Rowboat, canoe, kayak", ",", "Rub", ",", "Rumble", ",", "Run", ",", "Rustle", ",", "Rustling leaves", ",", "Sad music", ",", "Sailboat, sailing ship", ",", "Salsa music", ",", "Sampler", ",", "Sanding", ",", "Sawing", ",", "Saxophone", ",", "Scary music", ",", "Scissors", ",", "Scrape", ",", "Scratch", ",", "Scratching (performance technique)", ",", "Screaming", ",", "Sewing machine", ",", "Shatter", ",", "Sheep", ",", "Ship", ",", "Shofar", ",", "Shout", ",", "Shuffle", ",", "Shuffling cards", ",", "Sidetone", ",", "Sigh", ",", "Silence", ",", "Sine wave", ",", "Singing", ",", "Singing bowl", ",", "Single-lens reflex camera", ",", "Sink (filling or washing)", ",", "Siren", ",", "Sitar", ",", "Sizzle", ",", "Ska", ",", "Skateboard", ",", "Skidding", ",", "Slam", ",", "Slap, smack", ",", "Sliding door", ",", "Slosh", ",", "Smash, crash", ",", "Smoke detector, smoke alarm", ",", "Snake", ",", "Snare drum", ",", "Sneeze", ",", "Snicker", ",", "Sniff", ",", "Snoring", ",", "Snort", ",", "Sonar", ",", "Song", ",", "Soul music", ",", "Sound effect", ",", "Soundtrack music", ",", "Speech", ",", "Speech synthesizer", ",", "Splash, splatter", ",", "Splinter", ",", "Spray", ",", "Squawk", ",", "Squeak", ",", "Squeal", ",", "Squish", ",", "Static", ",", "Steam", ",", "Steam whistle", ",", "Steel guitar, slide guitar", ",", "Steelpan", ",", "Stir", ",", "Stomach rumble", ",", "Stream", ",", "String section", ",", "Strum", ",", "Subway, metro, underground", ",", "Swing music", ",", "Synthesizer", ",", "Synthetic singing", ",", "Tabla", ",", "Tambourine", ",", "Tap", ",", "Tapping (guitar technique)", ",", "Tearing", ",", "Techno", ",", "Telephone", ",", "Telephone bell ringing", ",", "Telephone dialing, DTMF", ",", "Television", ",", "Tender music", ",", "Theme music", ",", "Theremin", ",", "Throat clearing", ",", "Throbbing", ",", "Thump, thud", ",", "Thunder", ",", "Thunderstorm", ",", "Thunk", ",", "Tick", ",", "Tick-tock", ",", "Timpani", ",", "Tire squeal", ",", "Toilet flush", ",", "Tools", ",", "Toot", ",", "Toothbrush", ",", "Traditional music", ",", "Traffic noise, roadway noise", ",", "Train", ",", "Train horn", ",", "Train wheels squealing", ",", "Train whistle", ",", "Trance music", ",", "Trickle, dribble", ",", "Trombone", ",", "Truck", ",", "Trumpet", ",", "Tubular bells", ",", "Tuning fork", ",", "Turkey", ",", "Typewriter", ",", "Typing", ",", "Ukulele", ",", "Vacuum cleaner", ",", "Vehicle", ",", "Vehicle horn, car horn, honking", ",", "Vibraphone", ",", "Vibration", ",", "Video game music", ",", "Violin, fiddle", ",", "Vocal music", ",", "Wail, moan", ",", "Walk, footsteps", ",", "Water", ",", "Water tap, faucet", ",", "Waterfall", ",", "Waves, surf", ",", "Wedding music", ",", "Whack, thwack", ",", "Whale vocalization", ",", "Wheeze", ",", "Whimper", ",", "Whimper (dog)", ",", "Whip", ",", "Whir", ",", "Whispering", ",", "Whistle", ",", "Whistling", ",", "White noise", ",", "Whoop", ",", "Whoosh, swoosh, swish", ",", "Wild animals", ",", "Wind", ",", "Wind chime", ",", "Wind instrument, woodwind instrument", ",", "Wind noise (microphone)", ",", "Wood", ",", "Wood block", ",", "Writing", ",", "Yell", ",", "Yip", ",", "Yodeling", ",", "Zing", ",", "Zipper (clothing)", ",", "Zither" ],
					"maxclass" : "umenu",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 878.0, 395.0, 100.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-25",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 5,
					"outlettype" : [ "dictionary", "", "", "", "" ],
					"patching_rect" : [ 867.0, 288.0, 67.0, 22.0 ],
					"saved_object_attributes" : 					{
						"embed" : 0,
						"legacy" : 1,
						"parameter_enable" : 0,
						"parameter_mappable" : 0
					}
,
					"text" : "dict parsed"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-6",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 6,
							"revision" : 2,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 59.0, 81.0, 640.0, 480.0 ],
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
									"id" : "obj-16",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 124.0, 138.0, 22.0 ],
									"text" : "tosymbol @separator \" \""
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-15",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 148.0, 69.0, 22.0 ],
									"text" : "prepend url"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-12",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 100.0, 87.0, 22.0 ],
									"text" : "sprintf file://%s"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-27",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 40.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-28",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 50.0, 230.0, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-16", 0 ],
									"source" : [ "obj-12", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-28", 0 ],
									"source" : [ "obj-15", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 0 ],
									"source" : [ "obj-16", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-12", 0 ],
									"source" : [ "obj-27", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 13.0, 140.0, 70.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p format-url"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-8",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 13.0, 69.0, 58.0, 22.0 ],
					"text" : "loadbang"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-9",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 13.0, 106.0, 113.0, 22.0 ],
					"text" : "classify_sound.html"
				}

			}
, 			{
				"box" : 				{
					"dontreplace" : 1,
					"id" : "obj-7",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 500.0, 411.0, 50.0, 22.0 ],
					"text" : "0.668"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-5",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "float", "int", "int" ],
					"patching_rect" : [ 500.0, 376.0, 48.0, 22.0 ],
					"text" : "peak 0."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-71",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 701.600010454654694, 8.800000131130219, 150.0, 20.0 ],
					"text" : "source David Lynch"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-70",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 515.200007677078247, 8.571429669857025, 150.0, 33.0 ],
					"text" : "source Google mediapipe stuff"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-68",
					"linecount" : 3,
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 704.800010502338409, 40.800000607967377, 120.100001275539398, 49.0 ],
					"text" : "https://youtu.be/l21GFyOO8Ug?si=zopQsLfYE1Ep4Lxi"
				}

			}
, 			{
				"box" : 				{
					"dontreplace" : 1,
					"id" : "obj-67",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 688.0, 342.0, 50.0, 22.0 ],
					"text" : "0.008"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-66",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 563.0, 178.0, 150.0, 20.0 ],
					"text" : "Some dict parsing stuff"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-64",
					"linecount" : 3,
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 515.200007677078247, 40.800000607967377, 171.200002551078796, 49.0 ],
					"text" : "https://mediapipe-studio.webapps.google.com/studio/demo/audio_classifier"
				}

			}
, 			{
				"box" : 				{
					"hidden" : 1,
					"id" : "obj-97",
					"linecount" : 2,
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 515.200007677078247, 110.400001645088196, 129.0, 35.0 ],
					"text" : ";\rmax launchbrowser $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-60",
					"linecount" : 10,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 204.952404141426086, 8.571429669857025, 311.0, 141.0 ],
					"text" : "This is a quick and dirty implementation of audio classification with mediapipe library.  \n- select a mic for live input\n- click Mic classification\nor\n- click classify audio 1 (example of David lynch speaking the weather.) \n- use your own audio files and name it audio2.mp3\n\nNeeds some work.. feel free to change"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2",
					"linecount" : 3,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 6.666667520999908, 8.571429669857025, 182.857166290283203, 47.0 ],
					"text" : "By Mark Meeuwenoord\nwww.markmeeuwenoord.nl\n2024"
				}

			}
, 			{
				"box" : 				{
					"dontreplace" : 1,
					"id" : "obj-59",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 728.0, 216.0, 102.857156038284302, 22.0 ],
					"text" : "Speech 0.059"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-55",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 5,
					"outlettype" : [ "dictionary", "", "", "", "" ],
					"patching_rect" : [ 659.0, 216.0, 67.0, 22.0 ],
					"saved_object_attributes" : 					{
						"embed" : 0,
						"legacy" : 0,
						"parameter_enable" : 0,
						"parameter_mappable" : 0
					}
,
					"text" : "dict parsed"
				}

			}
, 			{
				"box" : 				{
					"dontreplace" : 1,
					"id" : "obj-43",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 623.0, 342.0, 50.0, 22.0 ],
					"text" : "0.148"
				}

			}
, 			{
				"box" : 				{
					"dontreplace" : 1,
					"id" : "obj-42",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 563.0, 342.0, 50.0, 22.0 ],
					"text" : "0"
				}

			}
, 			{
				"box" : 				{
					"dontreplace" : 1,
					"id" : "obj-32",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 511.0, 342.0, 50.0, 22.0 ],
					"text" : "0.059"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-30",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 5,
					"outlettype" : [ "", "", "", "", "" ],
					"patching_rect" : [ 500.0, 306.0, 226.0, 22.0 ],
					"saved_object_attributes" : 					{
						"legacy" : 0
					}
,
					"text" : "dict.unpack Speech: Music: Silence: Cat:"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-17",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 500.0, 250.0, 223.809552490711212, 22.0 ],
					"saved_object_attributes" : 					{
						"legacy" : 0
					}
,
					"text" : "dict.unpack audio_classification_dict:"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-21",
					"maxclass" : "dict.view",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 484.0, 445.0, 268.0, 199.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-20",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 484.0, 182.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-15",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 5,
					"outlettype" : [ "dictionary", "", "", "", "" ],
					"patching_rect" : [ 484.0, 216.0, 160.0, 22.0 ],
					"saved_object_attributes" : 					{
						"embed" : 0,
						"legacy" : 0,
						"parameter_enable" : 0,
						"parameter_mappable" : 0
					}
,
					"text" : "dict audio_classification_dict"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-3",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 137.0, 140.0, 48.0, 22.0 ],
					"text" : "readfile"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-1",
					"maxclass" : "jweb",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 13.0, 178.0, 423.809578120708466, 400.952432334423065 ],
					"rendermode" : 0,
					"url" : "file://classify_sound.html"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-4",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 89.0, 140.0, 42.0, 22.0 ],
					"text" : "reload"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-20", 0 ],
					"midpoints" : [ 22.5, 594.000079452991486, 459.023867130279541, 594.000079452991486, 459.023867130279541, 169.04764711856842, 493.5, 169.04764711856842 ],
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 0 ],
					"source" : [ "obj-13", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-25", 0 ],
					"source" : [ "obj-13", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-19", 0 ],
					"source" : [ "obj-14", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-17", 0 ],
					"order" : 0,
					"source" : [ "obj-15", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-21", 0 ],
					"order" : 1,
					"source" : [ "obj-15", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 0 ],
					"source" : [ "obj-16", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-30", 0 ],
					"order" : 1,
					"source" : [ "obj-17", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-55", 0 ],
					"order" : 0,
					"source" : [ "obj-17", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 0 ],
					"source" : [ "obj-19", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-15", 0 ],
					"source" : [ "obj-20", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-26", 1 ],
					"order" : 0,
					"source" : [ "obj-22", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-27", 0 ],
					"order" : 1,
					"source" : [ "obj-22", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-14", 0 ],
					"source" : [ "obj-25", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-29", 1 ],
					"source" : [ "obj-25", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-27", 0 ],
					"source" : [ "obj-26", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-25", 0 ],
					"midpoints" : [ 928.0, 511.0, 858.5, 511.0, 858.5, 277.0, 876.5, 277.0 ],
					"source" : [ "obj-27", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-32", 1 ],
					"order" : 0,
					"source" : [ "obj-30", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-42", 1 ],
					"source" : [ "obj-30", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-43", 1 ],
					"source" : [ "obj-30", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"order" : 1,
					"source" : [ "obj-30", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-67", 1 ],
					"source" : [ "obj-30", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"source" : [ "obj-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 1 ],
					"source" : [ "obj-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-59", 1 ],
					"source" : [ "obj-55", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"source" : [ "obj-6", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-97", 0 ],
					"source" : [ "obj-64", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-97", 0 ],
					"source" : [ "obj-68", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-9", 0 ],
					"source" : [ "obj-8", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"source" : [ "obj-9", 0 ]
				}

			}
 ],
		"dependency_cache" : [  ],
		"autosave" : 0
	}

}
