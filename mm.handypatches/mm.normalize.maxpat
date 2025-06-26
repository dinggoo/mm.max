{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 9,
			"minor" : 0,
<<<<<<< HEAD
			"revision" : 7,
=======
			"revision" : 5,
>>>>>>> ed6937bfb3c5d55f578c11bc97f1c31664bbe09e
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"classnamespace" : "box",
		"rect" : [ 410.0, 299.0, 653.0, 456.0 ],
		"gridonopen" : 2,
		"gridsize" : [ 15.0, 15.0 ],
		"subpatcher_template" : "Untitled1_template",
		"boxes" : [ 			{
				"box" : 				{
<<<<<<< HEAD
					"id" : "obj-15",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 83.0, 139.0, 29.0, 22.0 ],
					"text" : "thru"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 344.0, 31.0, 150.0, 33.0 ],
					"text" : "Generate a list of random values"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-9",
					"linecount" : 4,
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 420.0, 345.0, 167.0, 62.0 ],
					"presentation_linecount" : 2,
					"text" : "5381.632645 677.870668 1.272145 3.329626 20787.832411 -7.848644 30.747329"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-4",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 307.0, 103.0, 41.0, 22.0 ],
					"text" : "jit.spill"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-3",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 307.0, 31.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-1",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "jit_matrix", "" ],
					"patching_rect" : [ 307.0, 70.0, 103.0, 22.0 ],
					"text" : "jit.noise 1 char 10"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-24",
					"linecount" : 2,
=======
					"id" : "obj-24",
>>>>>>> ed6937bfb3c5d55f578c11bc97f1c31664bbe09e
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
<<<<<<< HEAD
					"patching_rect" : [ 335.0, 139.0, 210.0, 35.0 ],
					"text" : "21 167 8 170 224 210 147 171 189 101"
=======
					"patching_rect" : [ 90.0, 62.0, 449.0, 22.0 ],
					"text" : "5381.632645 677.870668 1.272145 3.329626 20787.832411 -7.848644 30.747329"
>>>>>>> ed6937bfb3c5d55f578c11bc97f1c31664bbe09e
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-21",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
<<<<<<< HEAD
					"patching_rect" : [ 193.0, 221.0, 98.0, 22.0 ],
					"text" : "8."
=======
					"patching_rect" : [ 162.0, 219.0, 98.0, 22.0 ],
					"text" : "-7.848644"
>>>>>>> ed6937bfb3c5d55f578c11bc97f1c31664bbe09e
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-20",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
<<<<<<< HEAD
					"patching_rect" : [ 138.0, 288.0, 98.0, 22.0 ],
					"text" : "224."
=======
					"patching_rect" : [ 162.0, 262.0, 98.0, 22.0 ],
					"text" : "20787.832411"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-18",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 94.0, 146.0, 516.0, 22.0 ],
					"text" : "5381.632645 6677.870668 1.272145 3.329626 20787.832411 -7.848644 30.747329"
>>>>>>> ed6937bfb3c5d55f578c11bc97f1c31664bbe09e
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-14",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
<<<<<<< HEAD
					"patching_rect" : [ 42.0, 174.0, 39.0, 22.0 ],
=======
					"patching_rect" : [ 39.0, 98.0, 39.0, 22.0 ],
>>>>>>> ed6937bfb3c5d55f578c11bc97f1c31664bbe09e
					"text" : "r data"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-13",
<<<<<<< HEAD
					"linecount" : 3,
=======
>>>>>>> ed6937bfb3c5d55f578c11bc97f1c31664bbe09e
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
<<<<<<< HEAD
					"patching_rect" : [ 83.0, 358.0, 189.0, 49.0 ],
					"text" : "0.060185 0.736111 0. 0.75 1. 0.935185 0.643519 0.75463 0.837963 0.430556"
=======
					"patching_rect" : [ 49.0, 336.0, 430.0, 22.0 ],
					"text" : "0.259163 0.032974 0.000439 0.000538 1. 0. 0.001856"
>>>>>>> ed6937bfb3c5d55f578c11bc97f1c31664bbe09e
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-11",
					"maxclass" : "newobj",
					"numinlets" : 6,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
<<<<<<< HEAD
					"patching_rect" : [ 83.0, 327.0, 90.0, 22.0 ],
=======
					"patching_rect" : [ 39.0, 299.0, 90.0, 22.0 ],
>>>>>>> ed6937bfb3c5d55f578c11bc97f1c31664bbe09e
					"text" : "scale 0. 0. 0. 1."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-7",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "float", "int" ],
<<<<<<< HEAD
					"patching_rect" : [ 111.0, 247.0, 74.0, 22.0 ],
=======
					"patching_rect" : [ 67.400000000000006, 219.0, 74.0, 22.0 ],
>>>>>>> ed6937bfb3c5d55f578c11bc97f1c31664bbe09e
					"text" : "maximum 0."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-6",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "float", "int" ],
<<<<<<< HEAD
					"patching_rect" : [ 97.0, 205.0, 71.0, 22.0 ],
=======
					"patching_rect" : [ 53.200000000000003, 177.0, 71.0, 22.0 ],
>>>>>>> ed6937bfb3c5d55f578c11bc97f1c31664bbe09e
					"text" : "minimum 0."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-5",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
<<<<<<< HEAD
					"patching_rect" : [ 83.0, 174.0, 47.400000000000006, 22.0 ],
=======
					"patching_rect" : [ 39.0, 146.0, 47.400000000000006, 22.0 ],
>>>>>>> ed6937bfb3c5d55f578c11bc97f1c31664bbe09e
					"text" : "t l l l"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
<<<<<<< HEAD
					"destination" : [ "obj-4", 0 ],
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
=======
>>>>>>> ed6937bfb3c5d55f578c11bc97f1c31664bbe09e
					"destination" : [ "obj-13", 1 ],
					"source" : [ "obj-11", 0 ]
				}

			}
, 			{
				"patchline" : 				{
<<<<<<< HEAD
					"destination" : [ "obj-5", 0 ],
=======
					"destination" : [ "obj-18", 1 ],
					"order" : 0,
>>>>>>> ed6937bfb3c5d55f578c11bc97f1c31664bbe09e
					"source" : [ "obj-14", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
<<<<<<< HEAD
					"source" : [ "obj-15", 0 ]
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
					"destination" : [ "obj-15", 0 ],
					"order" : 1,
					"source" : [ "obj-4", 0 ]
=======
					"order" : 1,
					"source" : [ "obj-14", 0 ]
>>>>>>> ed6937bfb3c5d55f578c11bc97f1c31664bbe09e
				}

			}
, 			{
				"patchline" : 				{
<<<<<<< HEAD
					"destination" : [ "obj-24", 1 ],
					"order" : 0,
					"source" : [ "obj-4", 0 ]
=======
					"destination" : [ "obj-5", 0 ],
					"source" : [ "obj-24", 0 ]
>>>>>>> ed6937bfb3c5d55f578c11bc97f1c31664bbe09e
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-11", 0 ],
					"source" : [ "obj-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"source" : [ "obj-5", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 0 ],
					"source" : [ "obj-5", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-11", 1 ],
					"order" : 1,
					"source" : [ "obj-6", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-21", 1 ],
					"order" : 0,
					"source" : [ "obj-6", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-11", 2 ],
					"order" : 1,
					"source" : [ "obj-7", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-20", 1 ],
					"order" : 0,
					"source" : [ "obj-7", 0 ]
				}

			}
 ],
<<<<<<< HEAD
		"dependency_cache" : [ 			{
				"name" : "thru.maxpat",
				"bootpath" : "C74:/patchers/m4l/Pluggo for Live resources/patches",
				"type" : "JSON",
				"implicit" : 1
			}
 ],
		"autosave" : 0,
		"toolbaradditions" : [ "BEAP", "Vizzie", "Vsynth" ]
=======
		"originid" : "pat-2401",
		"dependency_cache" : [  ],
		"autosave" : 0,
		"toolbaradditions" : [ "BEAP", "Vizzie" ]
>>>>>>> ed6937bfb3c5d55f578c11bc97f1c31664bbe09e
	}

}
