{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 15.0, 75.0, 1414.0, 741.0 ],
		"bglocked" : 0,
		"defrect" : [ 15.0, 75.0, 1414.0, 741.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 0,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 0,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 0,
		"toolbarvisible" : 1,
		"boxanimatetime" : 200,
		"imprint" : 0,
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "1",
					"numoutlets" : 1,
					"patching_rect" : [ 495.0, 645.0, 32.5, 18.0 ],
					"id" : "obj-153",
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "5",
					"numoutlets" : 1,
					"patching_rect" : [ 435.0, 629.0, 32.5, 18.0 ],
					"id" : "obj-152",
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "ctlout 1 1",
					"numoutlets" : 0,
					"patching_rect" : [ 420.0, 675.0, 59.0, 20.0 ],
					"id" : "obj-151",
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"numinlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"numoutlets" : 2,
					"patching_rect" : [ 375.0, 615.0, 50.0, 20.0 ],
					"id" : "obj-130",
					"outlettype" : [ "float", "bang" ],
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "scale 0 500 0 127",
					"numoutlets" : 1,
					"patching_rect" : [ 383.0, 579.0, 105.0, 20.0 ],
					"id" : "obj-127",
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"numinlets" : 6
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "/ 128.",
					"numoutlets" : 1,
					"patching_rect" : [ 330.0, 546.0, 41.0, 20.0 ],
					"id" : "obj-125",
					"outlettype" : [ "float" ],
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"numoutlets" : 2,
					"patching_rect" : [ 381.0, 518.0, 50.0, 20.0 ],
					"id" : "obj-124",
					"outlettype" : [ "int", "bang" ],
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "- 500.",
					"numoutlets" : 1,
					"patching_rect" : [ 376.0, 468.0, 41.0, 20.0 ],
					"id" : "obj-73",
					"outlettype" : [ "float" ],
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"numoutlets" : 2,
					"patching_rect" : [ 851.0, 425.0, 50.0, 20.0 ],
					"id" : "obj-72",
					"outlettype" : [ "float", "bang" ],
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"numoutlets" : 1,
					"patching_rect" : [ 905.0, 426.0, 15.0, 15.0 ],
					"id" : "obj-7",
					"outlettype" : [ "bang" ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Noisiness",
					"numoutlets" : 0,
					"patching_rect" : [ 800.0, 444.0, 51.0, 19.0 ],
					"id" : "obj-15",
					"fontname" : "Geneva",
					"fontsize" : 9.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Brightness",
					"numoutlets" : 0,
					"patching_rect" : [ 746.0, 454.0, 54.0, 19.0 ],
					"id" : "obj-16",
					"fontname" : "Geneva",
					"fontsize" : 9.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"numoutlets" : 2,
					"patching_rect" : [ 801.0, 426.0, 49.0, 19.0 ],
					"id" : "obj-17",
					"outlettype" : [ "float", "bang" ],
					"fontname" : "Geneva",
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"triscale" : 0.9,
					"fontsize" : 9.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"numoutlets" : 2,
					"patching_rect" : [ 749.0, 426.0, 49.0, 19.0 ],
					"id" : "obj-18",
					"outlettype" : [ "float", "bang" ],
					"fontname" : "Geneva",
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"triscale" : 0.9,
					"fontsize" : 9.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"numoutlets" : 2,
					"patching_rect" : [ 697.0, 426.0, 49.0, 19.0 ],
					"id" : "obj-19",
					"outlettype" : [ "float", "bang" ],
					"fontname" : "Geneva",
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"triscale" : 0.9,
					"fontsize" : 9.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Pitch tracker based on fiddle~ from Miller Puckette",
					"numoutlets" : 0,
					"patching_rect" : [ 560.0, 93.0, 241.0, 19.0 ],
					"id" : "obj-34",
					"fontname" : "Geneva",
					"fontsize" : 9.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Outputs Pitch, Loudness, Brightness, Noisiness and Bark scale",
					"numoutlets" : 0,
					"patching_rect" : [ 560.0, 81.0, 294.0, 19.0 ],
					"id" : "obj-35",
					"fontname" : "Geneva",
					"fontsize" : 9.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "analyzer~",
					"numoutlets" : 0,
					"patching_rect" : [ 558.0, 48.0, 87.0, 27.0 ],
					"id" : "obj-36",
					"fontname" : "Arial",
					"fontsize" : 18.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "FFT-Based Perceptual Analysis",
					"numoutlets" : 0,
					"patching_rect" : [ 560.0, 69.0, 150.0, 19.0 ],
					"id" : "obj-37",
					"fontname" : "Geneva",
					"fontsize" : 9.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "0. 0.",
					"numoutlets" : 1,
					"patching_rect" : [ 298.0, 334.0, 63.0, 17.0 ],
					"id" : "obj-108",
					"outlettype" : [ "" ],
					"fontname" : "Geneva",
					"fontsize" : 9.0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend set",
					"linecount" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 927.0, 506.0, 60.0, 31.0 ],
					"id" : "obj-109",
					"outlettype" : [ "" ],
					"fontname" : "Geneva",
					"fontsize" : 9.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "© 1997-99 Miller Puckette",
					"numoutlets" : 0,
					"patching_rect" : [ 560.0, 105.0, 132.0, 19.0 ],
					"id" : "obj-115",
					"fontname" : "Geneva",
					"fontsize" : 9.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "analyzer~ 2048 512 4096 blackman70 0 10 1 0",
					"numoutlets" : 7,
					"patching_rect" : [ 645.5, 389.0, 198.0, 17.0 ],
					"id" : "obj-131",
					"outlettype" : [ "list", "float", "float", "float", "list", "bang", "FullPacket" ],
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "© 2001 Tristan Jehan",
					"numoutlets" : 0,
					"patching_rect" : [ 560.0, 117.0, 107.0, 19.0 ],
					"id" : "obj-133",
					"fontname" : "Geneva",
					"fontsize" : 9.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Attack",
					"linecount" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 896.0, 444.0, 35.0, 31.0 ],
					"id" : "obj-142",
					"fontname" : "Geneva",
					"fontsize" : 9.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Loudness",
					"linecount" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 697.0, 444.0, 46.0, 31.0 ],
					"id" : "obj-145",
					"fontname" : "Geneva",
					"fontsize" : 9.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Bark",
					"linecount" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 852.0, 444.0, 26.0, 31.0 ],
					"id" : "obj-147",
					"fontname" : "Geneva",
					"fontsize" : 9.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"numoutlets" : 2,
					"patching_rect" : [ 180.0, 625.0, 50.0, 20.0 ],
					"id" : "obj-31",
					"outlettype" : [ "float", "bang" ],
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "* 4.",
					"numoutlets" : 1,
					"patching_rect" : [ 240.0, 570.0, 32.5, 20.0 ],
					"id" : "obj-33",
					"outlettype" : [ "float" ],
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "- 38.",
					"numoutlets" : 1,
					"patching_rect" : [ 240.0, 495.0, 35.0, 20.0 ],
					"id" : "obj-25",
					"outlettype" : [ "float" ],
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"numoutlets" : 2,
					"patching_rect" : [ 240.0, 540.0, 38.0, 20.0 ],
					"id" : "obj-22",
					"outlettype" : [ "float", "bang" ],
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "bendout",
					"numoutlets" : 0,
					"patching_rect" : [ 240.0, 660.0, 54.0, 20.0 ],
					"id" : "obj-20",
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"numoutlets" : 2,
					"patching_rect" : [ 240.0, 450.0, 50.0, 20.0 ],
					"id" : "obj-32",
					"outlettype" : [ "float", "bang" ],
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "unpack 1 2. 3.",
					"numoutlets" : 3,
					"patching_rect" : [ 240.0, 405.0, 86.0, 20.0 ],
					"id" : "obj-24",
					"outlettype" : [ "int", "float", "float" ],
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"numoutlets" : 2,
					"patching_rect" : [ 270.0, 600.0, 50.0, 20.0 ],
					"id" : "obj-11",
					"outlettype" : [ "int", "bang" ],
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"numoutlets" : 1,
					"patching_rect" : [ 120.0, 60.0, 20.0, 20.0 ],
					"id" : "obj-9",
					"outlettype" : [ "int" ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "adc~",
					"numoutlets" : 2,
					"patching_rect" : [ 120.0, 120.0, 161.0, 20.0 ],
					"id" : "obj-6",
					"outlettype" : [ "signal", "signal" ],
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"numinlets" : 1
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-131", 0 ],
					"hidden" : 0,
					"midpoints" : [ 129.5, 175.0, 655.0, 175.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-131", 3 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-131", 2 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-131", 1 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-131", 5 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-131", 6 ],
					"destination" : [ "obj-109", 0 ],
					"hidden" : 0,
					"midpoints" : [ 834.0, 493.0, 936.5, 493.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-131", 4 ],
					"destination" : [ "obj-72", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-127", 0 ],
					"destination" : [ "obj-130", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-124", 0 ],
					"destination" : [ "obj-127", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-31", 0 ],
					"destination" : [ "obj-125", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-73", 0 ],
					"destination" : [ "obj-124", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-73", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-109", 0 ],
					"destination" : [ "obj-108", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 1 ],
					"destination" : [ "obj-32", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 0 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 0,
					"midpoints" : [ 249.5, 486.5, 249.5, 486.5 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 0 ],
					"destination" : [ "obj-22", 0 ],
					"hidden" : 0,
					"midpoints" : [ 249.5, 528.5, 249.5, 528.5 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-20", 1 ],
					"hidden" : 0,
					"midpoints" : [ 279.5, 639.5, 284.5, 639.5 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-33", 0 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 0,
					"midpoints" : [ 249.5, 596.0, 249.5, 596.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 0 ],
					"destination" : [ "obj-33", 0 ],
					"hidden" : 0,
					"midpoints" : [ 249.5, 565.0, 249.5, 565.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-33", 0 ],
					"destination" : [ "obj-31", 0 ],
					"hidden" : 0,
					"midpoints" : [ 249.5, 608.0, 189.5, 608.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-153", 0 ],
					"destination" : [ "obj-151", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-152", 0 ],
					"destination" : [ "obj-151", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-130", 0 ],
					"destination" : [ "obj-151", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-109", 0 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
