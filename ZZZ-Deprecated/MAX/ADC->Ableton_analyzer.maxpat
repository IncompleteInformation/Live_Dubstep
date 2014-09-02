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
					"numinlets" : 2,
					"patching_rect" : [ 495.0, 645.0, 32.5, 18.0 ],
					"numoutlets" : 1,
					"id" : "obj-153",
					"fontname" : "Arial",
					"outlettype" : [ "" ],
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "5",
					"numinlets" : 2,
					"patching_rect" : [ 435.0, 629.0, 32.5, 18.0 ],
					"numoutlets" : 1,
					"id" : "obj-152",
					"fontname" : "Arial",
					"outlettype" : [ "" ],
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "ctlout 1 1",
					"numinlets" : 3,
					"patching_rect" : [ 420.0, 675.0, 59.0, 20.0 ],
					"numoutlets" : 0,
					"id" : "obj-151",
					"fontname" : "Arial",
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"numinlets" : 1,
					"patching_rect" : [ 375.0, 615.0, 50.0, 20.0 ],
					"numoutlets" : 2,
					"id" : "obj-130",
					"fontname" : "Arial",
					"outlettype" : [ "float", "bang" ],
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "scale 0 500 0 127",
					"numinlets" : 6,
					"patching_rect" : [ 383.0, 579.0, 105.0, 20.0 ],
					"numoutlets" : 1,
					"id" : "obj-127",
					"fontname" : "Arial",
					"outlettype" : [ "" ],
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "/ 128.",
					"numinlets" : 2,
					"patching_rect" : [ 330.0, 546.0, 41.0, 20.0 ],
					"numoutlets" : 1,
					"id" : "obj-125",
					"fontname" : "Arial",
					"outlettype" : [ "float" ],
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"numinlets" : 1,
					"patching_rect" : [ 381.0, 518.0, 50.0, 20.0 ],
					"numoutlets" : 2,
					"id" : "obj-124",
					"fontname" : "Arial",
					"outlettype" : [ "int", "bang" ],
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "- 500.",
					"numinlets" : 2,
					"patching_rect" : [ 376.0, 468.0, 41.0, 20.0 ],
					"numoutlets" : 1,
					"id" : "obj-73",
					"fontname" : "Arial",
					"outlettype" : [ "float" ],
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"numinlets" : 1,
					"patching_rect" : [ 851.0, 425.0, 50.0, 20.0 ],
					"numoutlets" : 2,
					"id" : "obj-72",
					"fontname" : "Arial",
					"outlettype" : [ "float", "bang" ],
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p OSC",
					"numinlets" : 1,
					"patching_rect" : [ 1018.0, 426.0, 47.0, 20.0 ],
					"numoutlets" : 0,
					"id" : "obj-135",
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 330.0, 44.0, 1094.0, 484.0 ],
						"bglocked" : 0,
						"defrect" : [ 330.0, 44.0, 1094.0, 484.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 0,
						"gridsize" : [ 8.0, 8.0 ],
						"gridsnaponopen" : 0,
						"toolbarvisible" : 1,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "62.254074 0.001786 167.283295 0.000911 221.878036 0.00056 365.221375 0.000169 474.270782 0.000245 600.355042 0.000156 680.953369 0.00018 789.971375 0.000145 882.707947 0.000241 932.149109 0.000259",
									"linecount" : 4,
									"numinlets" : 2,
									"patching_rect" : [ 720.0, 120.0, 369.0, 60.0 ],
									"numoutlets" : 1,
									"id" : "obj-24",
									"fontname" : "Arial",
									"outlettype" : [ "" ],
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "o.message",
									"numinlets" : 3,
									"patching_rect" : [ 40.0, 88.0, 392.0, 154.0 ],
									"numoutlets" : 0,
									"id" : "obj-21",
									"linecount" : 11,
									"fontname" : "Arial",
									"text" : "/bark -24.8803 -30.2239 -34.0618 -43.4529 -41.2242 -45.2476 -42.7071 -41.7096 -35.4741 -38.8645 -42.4328 -45.0658 -38.271 -43.4224 -46.5131 -52.6427 -35.0416 -30.4794 -29.3389 -29.8211 -33.0928 -35.6911 -42.114 -46.1216 -64.0073 \n/loudness -36.6145 \n/brightness 6175.6 \n/noisiness 0.90615 \n/peaks 62.2541 0.00178603 167.283 0.000911431 221.878 0.000559744 365.221 0.000168995 474.271 0.000244788 600.355 0.000155566 680.953 0.000179584 789.971 0.000144613 882.708 0.000240529 932.149 0.000259309 \n",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"numinlets" : 1,
									"patching_rect" : [ 650.571411, 392.0, 64.0, 20.0 ],
									"numoutlets" : 2,
									"id" : "obj-20",
									"fontname" : "Arial",
									"outlettype" : [ "float", "bang" ],
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"numinlets" : 1,
									"patching_rect" : [ 586.571411, 392.0, 64.0, 20.0 ],
									"numoutlets" : 2,
									"id" : "obj-19",
									"fontname" : "Arial",
									"outlettype" : [ "float", "bang" ],
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"numinlets" : 1,
									"patching_rect" : [ 504.0, 392.0, 64.0, 20.0 ],
									"numoutlets" : 2,
									"id" : "obj-18",
									"fontname" : "Arial",
									"outlettype" : [ "float", "bang" ],
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"numinlets" : 1,
									"patching_rect" : [ 440.0, 392.0, 64.0, 20.0 ],
									"numoutlets" : 2,
									"id" : "obj-17",
									"fontname" : "Arial",
									"outlettype" : [ "float", "bang" ],
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"numinlets" : 1,
									"patching_rect" : [ 684.285706, 120.0, 20.0, 20.0 ],
									"numoutlets" : 1,
									"id" : "obj-12",
									"outlettype" : [ "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "multislider",
									"numinlets" : 1,
									"patching_rect" : [ 635.428589, 144.0, 80.0, 184.0 ],
									"size" : 25,
									"numoutlets" : 2,
									"id" : "obj-10",
									"outlettype" : [ "", "" ],
									"setminmax" : [ -96.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"numinlets" : 1,
									"patching_rect" : [ 586.571411, 120.0, 50.0, 20.0 ],
									"numoutlets" : 2,
									"id" : "obj-9",
									"fontname" : "Arial",
									"outlettype" : [ "float", "bang" ],
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"numinlets" : 1,
									"patching_rect" : [ 537.714294, 120.0, 50.0, 20.0 ],
									"numoutlets" : 2,
									"id" : "obj-8",
									"fontname" : "Arial",
									"outlettype" : [ "float", "bang" ],
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"numinlets" : 1,
									"patching_rect" : [ 488.857147, 120.0, 50.0, 20.0 ],
									"numoutlets" : 2,
									"id" : "obj-7",
									"fontname" : "Arial",
									"outlettype" : [ "float", "bang" ],
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "o.route /hz /midi",
									"numinlets" : 1,
									"patching_rect" : [ 586.571411, 352.0, 96.0, 20.0 ],
									"numoutlets" : 2,
									"id" : "obj-5",
									"fontname" : "Arial",
									"outlettype" : [ "", "" ],
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "o.route /midi /amp",
									"numinlets" : 1,
									"patching_rect" : [ 440.0, 352.0, 107.0, 20.0 ],
									"numoutlets" : 2,
									"id" : "obj-4",
									"fontname" : "Arial",
									"outlettype" : [ "", "" ],
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "o.route /raw /cooked",
									"numinlets" : 1,
									"patching_rect" : [ 440.0, 320.0, 119.0, 20.0 ],
									"numoutlets" : 2,
									"id" : "obj-3",
									"fontname" : "Arial",
									"outlettype" : [ "", "" ],
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "o.route /pitch /loudness /brightness /noisiness /bark /attack /peaks",
									"numinlets" : 1,
									"patching_rect" : [ 440.0, 88.0, 361.0, 20.0 ],
									"numoutlets" : 7,
									"id" : "obj-2",
									"fontname" : "Arial",
									"outlettype" : [ "", "", "", "", "", "", "" ],
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"patching_rect" : [ 440.0, 40.0, 25.0, 25.0 ],
									"numoutlets" : 1,
									"id" : "obj-1",
									"outlettype" : [ "FullPacket" ],
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-21", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 4 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 5 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 6 ],
									"destination" : [ "obj-24", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 1 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 2 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 3 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 1 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-17", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 1 ],
									"destination" : [ "obj-18", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-19", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 1 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontname" : "Arial",
						"fontname" : "Arial",
						"default_fontsize" : 12.0,
						"globalpatchername" : "",
						"fontface" : 0,
						"fontsize" : 12.0,
						"default_fontface" : 0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "loud 0",
					"linecount" : 2,
					"numinlets" : 2,
					"patching_rect" : [ 763.0, 301.0, 35.0, 29.0 ],
					"numoutlets" : 1,
					"id" : "obj-8",
					"fontname" : "Geneva",
					"outlettype" : [ "" ],
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "loud 1",
					"linecount" : 2,
					"numinlets" : 2,
					"patching_rect" : [ 800.0, 301.0, 35.0, 29.0 ],
					"numoutlets" : 1,
					"id" : "obj-12",
					"fontname" : "Geneva",
					"outlettype" : [ "" ],
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "• Loudness type",
					"numinlets" : 1,
					"patching_rect" : [ 763.0, 318.0, 85.0, 19.0 ],
					"numoutlets" : 0,
					"id" : "obj-3",
					"fontname" : "Geneva",
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "11.6",
					"numinlets" : 2,
					"patching_rect" : [ 715.0, 353.0, 30.0, 17.0 ],
					"numoutlets" : 1,
					"id" : "obj-13",
					"fontname" : "Geneva",
					"outlettype" : [ "" ],
					"hidden" : 1,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"numinlets" : 1,
					"patching_rect" : [ 715.0, 371.0, 35.0, 19.0 ],
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"numoutlets" : 2,
					"id" : "obj-5",
					"fontname" : "Geneva",
					"outlettype" : [ "float", "bang" ],
					"fontsize" : 9.0,
					"triscale" : 0.9,
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Brightness",
					"linecount" : 2,
					"numinlets" : 1,
					"patching_rect" : [ 1251.0, 136.0, 53.0, 31.0 ],
					"numoutlets" : 0,
					"id" : "obj-14",
					"fontname" : "Geneva",
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"numinlets" : 1,
					"patching_rect" : [ 905.0, 426.0, 15.0, 15.0 ],
					"numoutlets" : 1,
					"id" : "obj-7",
					"outlettype" : [ "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Noisiness",
					"numinlets" : 1,
					"patching_rect" : [ 800.0, 444.0, 51.0, 19.0 ],
					"numoutlets" : 0,
					"id" : "obj-15",
					"fontname" : "Geneva",
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Brightness",
					"numinlets" : 1,
					"patching_rect" : [ 746.0, 454.0, 54.0, 19.0 ],
					"numoutlets" : 0,
					"id" : "obj-16",
					"fontname" : "Geneva",
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"numinlets" : 1,
					"patching_rect" : [ 801.0, 426.0, 49.0, 19.0 ],
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"numoutlets" : 2,
					"id" : "obj-17",
					"fontname" : "Geneva",
					"outlettype" : [ "float", "bang" ],
					"fontsize" : 9.0,
					"triscale" : 0.9,
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"numinlets" : 1,
					"patching_rect" : [ 749.0, 426.0, 49.0, 19.0 ],
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"numoutlets" : 2,
					"id" : "obj-18",
					"fontname" : "Geneva",
					"outlettype" : [ "float", "bang" ],
					"fontsize" : 9.0,
					"triscale" : 0.9,
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"numinlets" : 1,
					"patching_rect" : [ 697.0, 426.0, 49.0, 19.0 ],
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"numoutlets" : 2,
					"id" : "obj-19",
					"fontname" : "Geneva",
					"outlettype" : [ "float", "bang" ],
					"fontsize" : 9.0,
					"triscale" : 0.9,
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "bright 0",
					"numinlets" : 2,
					"patching_rect" : [ 763.0, 334.0, 44.0, 17.0 ],
					"numoutlets" : 1,
					"id" : "obj-21",
					"fontname" : "Geneva",
					"outlettype" : [ "" ],
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "bright 1",
					"numinlets" : 2,
					"patching_rect" : [ 809.0, 334.0, 44.0, 17.0 ],
					"numoutlets" : 1,
					"id" : "obj-23",
					"fontname" : "Geneva",
					"outlettype" : [ "" ],
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "linear",
					"numinlets" : 2,
					"patching_rect" : [ 763.0, 268.0, 34.0, 17.0 ],
					"numoutlets" : 1,
					"id" : "obj-26",
					"fontname" : "Geneva",
					"outlettype" : [ "" ],
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "log",
					"linecount" : 2,
					"numinlets" : 2,
					"patching_rect" : [ 799.0, 268.0, 21.0, 29.0 ],
					"numoutlets" : 1,
					"id" : "obj-27",
					"fontname" : "Geneva",
					"outlettype" : [ "" ],
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "• Output scale",
					"linecount" : 2,
					"numinlets" : 1,
					"patching_rect" : [ 763.0, 285.0, 70.0, 31.0 ],
					"numoutlets" : 0,
					"id" : "obj-28",
					"fontname" : "Geneva",
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "• Brightness type",
					"linecount" : 2,
					"numinlets" : 1,
					"patching_rect" : [ 763.0, 351.0, 85.0, 31.0 ],
					"numoutlets" : 0,
					"id" : "obj-29",
					"fontname" : "Geneva",
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "noise~",
					"linecount" : 2,
					"numinlets" : 1,
					"patching_rect" : [ 789.0, 180.0, 35.0, 31.0 ],
					"numoutlets" : 1,
					"id" : "obj-30",
					"fontname" : "Geneva",
					"outlettype" : [ "signal" ],
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Pitch tracker based on fiddle~ from Miller Puckette",
					"numinlets" : 1,
					"patching_rect" : [ 560.0, 93.0, 241.0, 19.0 ],
					"numoutlets" : 0,
					"id" : "obj-34",
					"fontname" : "Geneva",
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Outputs Pitch, Loudness, Brightness, Noisiness and Bark scale",
					"numinlets" : 1,
					"patching_rect" : [ 560.0, 81.0, 294.0, 19.0 ],
					"numoutlets" : 0,
					"id" : "obj-35",
					"fontname" : "Geneva",
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "analyzer~",
					"numinlets" : 1,
					"patching_rect" : [ 558.0, 48.0, 87.0, 27.0 ],
					"numoutlets" : 0,
					"id" : "obj-36",
					"fontname" : "Arial",
					"fontsize" : 18.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "FFT-Based Perceptual Analysis",
					"numinlets" : 1,
					"patching_rect" : [ 560.0, 69.0, 150.0, 19.0 ],
					"numoutlets" : 0,
					"id" : "obj-37",
					"fontname" : "Geneva",
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "noisy",
					"numinlets" : 1,
					"patching_rect" : [ 1385.0, 175.0, 33.0, 19.0 ],
					"numoutlets" : 0,
					"id" : "obj-38",
					"fontname" : "Geneva",
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "multislider",
					"numinlets" : 1,
					"patching_rect" : [ 1190.0, 160.0, 165.0, 17.0 ],
					"numoutlets" : 2,
					"id" : "obj-39",
					"peakcolor" : [ 0.498039, 0.498039, 0.498039, 1.0 ],
					"outlettype" : [ "", "" ],
					"orientation" : 0,
					"setminmax" : [ 0.0, 22050.0 ],
					"contdata" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "0.2",
					"numinlets" : 1,
					"patching_rect" : [ 1374.0, 456.0, 23.0, 19.0 ],
					"numoutlets" : 0,
					"id" : "obj-40",
					"fontname" : "Geneva",
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "0.4",
					"numinlets" : 1,
					"patching_rect" : [ 1374.0, 384.0, 23.0, 19.0 ],
					"numoutlets" : 0,
					"id" : "obj-41",
					"fontname" : "Geneva",
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "0.6",
					"numinlets" : 1,
					"patching_rect" : [ 1374.0, 312.0, 23.0, 19.0 ],
					"numoutlets" : 0,
					"id" : "obj-42",
					"fontname" : "Geneva",
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "0.8",
					"numinlets" : 1,
					"patching_rect" : [ 1374.0, 242.0, 23.0, 19.0 ],
					"numoutlets" : 0,
					"id" : "obj-43",
					"fontname" : "Geneva",
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "multislider",
					"numinlets" : 1,
					"patching_rect" : [ 1356.0, 178.0, 17.0, 355.0 ],
					"numoutlets" : 2,
					"id" : "obj-44",
					"peakcolor" : [ 0.498039, 0.498039, 0.498039, 1.0 ],
					"outlettype" : [ "", "" ],
					"setminmax" : [ 0.0, 1.0 ],
					"contdata" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "multislider",
					"numinlets" : 1,
					"patching_rect" : [ 1173.0, 178.0, 17.0, 355.0 ],
					"numoutlets" : 2,
					"id" : "obj-45",
					"peakcolor" : [ 0.498039, 0.498039, 0.498039, 1.0 ],
					"outlettype" : [ "", "" ],
					"setminmax" : [ -96.0, 30.0 ],
					"contdata" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "22 KHz",
					"linecount" : 2,
					"numinlets" : 1,
					"patching_rect" : [ 1334.0, 148.0, 39.0, 31.0 ],
					"numoutlets" : 0,
					"id" : "obj-46",
					"fontname" : "Geneva",
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "0 Hz",
					"linecount" : 2,
					"numinlets" : 1,
					"patching_rect" : [ 1187.0, 148.0, 25.0, 31.0 ],
					"numoutlets" : 0,
					"id" : "obj-47",
					"fontname" : "Geneva",
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "10 KHz",
					"linecount" : 2,
					"numinlets" : 1,
					"patching_rect" : [ 1258.0, 148.0, 37.0, 31.0 ],
					"numoutlets" : 0,
					"id" : "obj-48",
					"fontname" : "Geneva",
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "-60 dB",
					"linecount" : 2,
					"numinlets" : 1,
					"patching_rect" : [ 1138.0, 415.0, 36.0, 31.0 ],
					"numoutlets" : 0,
					"id" : "obj-49",
					"fontname" : "Geneva",
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "22 KHz",
					"linecount" : 2,
					"numinlets" : 1,
					"patching_rect" : [ 1336.0, 536.0, 39.0, 31.0 ],
					"numoutlets" : 0,
					"id" : "obj-50",
					"fontname" : "Geneva",
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "3 KHz",
					"linecount" : 2,
					"numinlets" : 1,
					"patching_rect" : [ 1281.0, 536.0, 34.0, 31.0 ],
					"numoutlets" : 0,
					"id" : "obj-51",
					"fontname" : "Geneva",
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "multislider",
					"numinlets" : 1,
					"patching_rect" : [ 1191.0, 178.0, 164.0, 355.0 ],
					"size" : 25,
					"numoutlets" : 2,
					"id" : "obj-52",
					"peakcolor" : [ 0.498039, 0.498039, 0.498039, 1.0 ],
					"outlettype" : [ "", "" ],
					"setminmax" : [ -96.0, 30.0 ],
					"contdata" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "0 Hz",
					"linecount" : 2,
					"numinlets" : 1,
					"patching_rect" : [ 1187.0, 536.0, 25.0, 31.0 ],
					"numoutlets" : 0,
					"id" : "obj-53",
					"fontname" : "Geneva",
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "1 KHz",
					"linecount" : 2,
					"numinlets" : 1,
					"patching_rect" : [ 1234.0, 536.0, 32.0, 31.0 ],
					"numoutlets" : 0,
					"id" : "obj-54",
					"fontname" : "Geneva",
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "-96 dB",
					"linecount" : 2,
					"numinlets" : 1,
					"patching_rect" : [ 1137.0, 524.0, 36.0, 31.0 ],
					"numoutlets" : 0,
					"id" : "obj-55",
					"fontname" : "Geneva",
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "30 dB",
					"linecount" : 2,
					"numinlets" : 1,
					"patching_rect" : [ 1140.0, 173.0, 31.0, 31.0 ],
					"numoutlets" : 0,
					"id" : "obj-56",
					"fontname" : "Geneva",
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "0 dB",
					"linecount" : 2,
					"numinlets" : 1,
					"patching_rect" : [ 1148.0, 256.0, 25.0, 31.0 ],
					"numoutlets" : 0,
					"id" : "obj-57",
					"fontname" : "Geneva",
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "-30 dB",
					"linecount" : 2,
					"numinlets" : 1,
					"patching_rect" : [ 1138.0, 337.0, 36.0, 31.0 ],
					"numoutlets" : 0,
					"id" : "obj-58",
					"fontname" : "Geneva",
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "0",
					"numinlets" : 1,
					"patching_rect" : [ 1374.0, 526.0, 16.0, 19.0 ],
					"numoutlets" : 0,
					"id" : "obj-59",
					"fontname" : "Geneva",
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "1",
					"numinlets" : 1,
					"patching_rect" : [ 1374.0, 175.0, 16.0, 19.0 ],
					"numoutlets" : 0,
					"id" : "obj-60",
					"fontname" : "Geneva",
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "peaky",
					"linecount" : 2,
					"numinlets" : 1,
					"patching_rect" : [ 1386.0, 526.0, 33.0, 31.0 ],
					"numoutlets" : 0,
					"id" : "obj-61",
					"fontname" : "Geneva",
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p description",
					"numinlets" : 0,
					"patching_rect" : [ 769.0, 507.0, 65.0, 19.0 ],
					"color" : [ 0.380392, 0.611765, 0.611765, 1.0 ],
					"numoutlets" : 0,
					"id" : "obj-62",
					"fontname" : "Geneva",
					"fontsize" : 9.0,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 30.0, 48.0, 466.0, 722.0 ],
						"bglocked" : 0,
						"defrect" : [ 30.0, 48.0, 466.0, 722.0 ],
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
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Default window is blackman70",
									"numinlets" : 1,
									"patching_rect" : [ 280.0, 222.0, 145.0, 19.0 ],
									"numoutlets" : 0,
									"id" : "obj-1",
									"fontname" : "Geneva",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "blackman92",
									"numinlets" : 1,
									"patching_rect" : [ 154.0, 270.0, 93.0, 19.0 ],
									"numoutlets" : 0,
									"id" : "obj-2",
									"fontname" : "Geneva",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "blackman74",
									"numinlets" : 1,
									"patching_rect" : [ 154.0, 258.0, 93.0, 19.0 ],
									"numoutlets" : 0,
									"id" : "obj-3",
									"fontname" : "Geneva",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "blackman70",
									"numinlets" : 1,
									"patching_rect" : [ 154.0, 246.0, 93.0, 19.0 ],
									"numoutlets" : 0,
									"id" : "obj-4",
									"fontname" : "Geneva",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Notes:",
									"linecount" : 2,
									"numinlets" : 1,
									"patching_rect" : [ 44.0, 529.0, 35.0, 31.0 ],
									"numoutlets" : 0,
									"id" : "obj-5",
									"fontname" : "Geneva",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "- Noisiness (float) 0-1",
									"numinlets" : 1,
									"patching_rect" : [ 63.0, 438.0, 113.0, 19.0 ],
									"numoutlets" : 0,
									"id" : "obj-6",
									"fontname" : "Geneva",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "- Bark decomposition (list of/or 25 floats)",
									"numinlets" : 1,
									"patching_rect" : [ 63.0, 450.0, 201.0, 19.0 ],
									"numoutlets" : 0,
									"id" : "obj-7",
									"fontname" : "Geneva",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "- Loudness (float)",
									"numinlets" : 1,
									"patching_rect" : [ 63.0, 414.0, 100.0, 19.0 ],
									"numoutlets" : 0,
									"id" : "obj-8",
									"fontname" : "Geneva",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "- Brightness (float)",
									"numinlets" : 1,
									"patching_rect" : [ 63.0, 426.0, 113.0, 19.0 ],
									"numoutlets" : 0,
									"id" : "obj-9",
									"fontname" : "Geneva",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "nolist (25 outlets)",
									"linecount" : 2,
									"numinlets" : 1,
									"patching_rect" : [ 84.0, 342.0, 87.0, 31.0 ],
									"numoutlets" : 0,
									"id" : "obj-10",
									"fontname" : "Geneva",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "list (default)",
									"numinlets" : 1,
									"patching_rect" : [ 84.0, 354.0, 63.0, 19.0 ],
									"numoutlets" : 0,
									"id" : "obj-11",
									"fontname" : "Geneva",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "- Bark output format",
									"numinlets" : 1,
									"patching_rect" : [ 63.0, 330.0, 99.0, 19.0 ],
									"numoutlets" : 0,
									"id" : "obj-12",
									"fontname" : "Geneva",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "analyzer~",
									"numinlets" : 1,
									"patching_rect" : [ 12.0, 21.0, 87.0, 27.0 ],
									"numoutlets" : 0,
									"id" : "obj-13",
									"fontname" : "Arial",
									"fontsize" : 18.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "- Pitch is measured with an adapted version of fiddle~ from Miller Puckette",
									"numinlets" : 1,
									"patching_rect" : [ 63.0, 70.0, 362.0, 19.0 ],
									"numoutlets" : 0,
									"id" : "obj-14",
									"fontname" : "Geneva",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "- Noisiness is measured with the Bark-based spectral flatness measure (SFM)",
									"numinlets" : 1,
									"patching_rect" : [ 63.0, 106.0, 363.0, 19.0 ],
									"numoutlets" : 0,
									"id" : "obj-15",
									"fontname" : "Geneva",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "- The bark scale is an auditory model spetrum decomposition: the number of outputs depends on the sampling rate. This version is set for 44100 Hz only, and outputs 25 bands.",
									"linecount" : 3,
									"numinlets" : 1,
									"patching_rect" : [ 63.0, 118.0, 363.0, 43.0 ],
									"numoutlets" : 0,
									"id" : "obj-16",
									"fontname" : "Geneva",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "- Loudness is measured with the spectral energy",
									"numinlets" : 1,
									"patching_rect" : [ 63.0, 94.0, 363.0, 19.0 ],
									"numoutlets" : 0,
									"id" : "obj-17",
									"fontname" : "Geneva",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "- Brightness is measured with the spectral centroid",
									"numinlets" : 1,
									"patching_rect" : [ 63.0, 82.0, 362.0, 19.0 ],
									"numoutlets" : 0,
									"id" : "obj-18",
									"fontname" : "Geneva",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "In this version:",
									"numinlets" : 1,
									"patching_rect" : [ 42.0, 54.0, 100.0, 19.0 ],
									"numoutlets" : 0,
									"id" : "obj-19",
									"fontname" : "Geneva",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "- Sinusoidal decomposition (freq, amp) (list)",
									"numinlets" : 1,
									"patching_rect" : [ 63.0, 498.0, 205.0, 19.0 ],
									"numoutlets" : 0,
									"id" : "obj-20",
									"fontname" : "Geneva",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "- Raw Pitch (Midi, Amp) (list)",
									"numinlets" : 1,
									"patching_rect" : [ 63.0, 474.0, 166.0, 19.0 ],
									"numoutlets" : 0,
									"id" : "obj-21",
									"fontname" : "Geneva",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "- Overall amplitude in dB (float)",
									"numinlets" : 1,
									"patching_rect" : [ 63.0, 486.0, 152.0, 19.0 ],
									"numoutlets" : 0,
									"id" : "obj-22",
									"fontname" : "Geneva",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "- Onset detection (bang)",
									"linecount" : 2,
									"numinlets" : 1,
									"patching_rect" : [ 63.0, 462.0, 114.0, 31.0 ],
									"numoutlets" : 0,
									"id" : "obj-23",
									"fontname" : "Geneva",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "- Cooked Pitch (Midi, Hz) (list)",
									"numinlets" : 1,
									"patching_rect" : [ 63.0, 402.0, 148.0, 19.0 ],
									"numoutlets" : 0,
									"id" : "obj-24",
									"fontname" : "Geneva",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Outputs are (from left to right):",
									"numinlets" : 1,
									"patching_rect" : [ 44.0, 386.0, 151.0, 19.0 ],
									"numoutlets" : 0,
									"id" : "obj-25",
									"fontname" : "Geneva",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "3- The object uses an efficient real FFT written at CNMAT by Adrian Freed when running on a G3 processor. It uses the altivec optimized Apple real FFT when running on a G4 processor.",
									"linecount" : 3,
									"numinlets" : 1,
									"patching_rect" : [ 63.0, 614.0, 361.0, 43.0 ],
									"numoutlets" : 0,
									"id" : "obj-26",
									"fontname" : "Geneva",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Default # peaks to output is 0",
									"numinlets" : 1,
									"patching_rect" : [ 280.0, 270.0, 140.0, 19.0 ],
									"numoutlets" : 0,
									"id" : "obj-27",
									"fontname" : "Geneva",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Default # peaks to find is 20",
									"numinlets" : 1,
									"patching_rect" : [ 280.0, 258.0, 133.0, 19.0 ],
									"numoutlets" : 0,
									"id" : "obj-28",
									"fontname" : "Geneva",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Default # pitches is 1",
									"numinlets" : 1,
									"patching_rect" : [ 280.0, 246.0, 107.0, 19.0 ],
									"numoutlets" : 0,
									"id" : "obj-29",
									"fontname" : "Geneva",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "- # of peaks to output (1-100)",
									"numinlets" : 1,
									"patching_rect" : [ 63.0, 318.0, 166.0, 19.0 ],
									"numoutlets" : 0,
									"id" : "obj-30",
									"fontname" : "Geneva",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "- # of peaks to find (1-100)",
									"numinlets" : 1,
									"patching_rect" : [ 63.0, 306.0, 166.0, 19.0 ],
									"numoutlets" : 0,
									"id" : "obj-31",
									"fontname" : "Geneva",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "- # of pitches to extract (1-3)",
									"numinlets" : 1,
									"patching_rect" : [ 63.0, 294.0, 166.0, 19.0 ],
									"numoutlets" : 0,
									"id" : "obj-32",
									"fontname" : "Geneva",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "2- Use the delay argument when using this object multiple times in parallel to avoid over loading the CPU with several FFTs occuring at the same time, e.g. choose 0, 1, 2, etc. FFTs will occur at different times, each one separated by the time length of a signal vector.",
									"linecount" : 4,
									"numinlets" : 1,
									"patching_rect" : [ 63.0, 562.0, 358.0, 55.0 ],
									"numoutlets" : 0,
									"id" : "obj-33",
									"fontname" : "Geneva",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Default delay is 0",
									"numinlets" : 1,
									"patching_rect" : [ 280.0, 234.0, 91.0, 19.0 ],
									"numoutlets" : 0,
									"id" : "obj-34",
									"fontname" : "Geneva",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Default FFT size is 1024",
									"numinlets" : 1,
									"patching_rect" : [ 280.0, 210.0, 123.0, 19.0 ],
									"numoutlets" : 0,
									"id" : "obj-35",
									"fontname" : "Geneva",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "- FFT size (ms or # of samples)",
									"numinlets" : 1,
									"patching_rect" : [ 63.0, 210.0, 174.0, 19.0 ],
									"numoutlets" : 0,
									"id" : "obj-36",
									"fontname" : "Geneva",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "- Initial delay (# of signal vectors)",
									"numinlets" : 1,
									"patching_rect" : [ 63.0, 282.0, 182.0, 19.0 ],
									"numoutlets" : 0,
									"id" : "obj-37",
									"fontname" : "Geneva",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Default hop size is 512",
									"numinlets" : 1,
									"patching_rect" : [ 280.0, 198.0, 143.0, 19.0 ],
									"numoutlets" : 0,
									"id" : "obj-38",
									"fontname" : "Geneva",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Arguments are:",
									"numinlets" : 1,
									"patching_rect" : [ 42.0, 170.0, 79.0, 19.0 ],
									"numoutlets" : 0,
									"id" : "obj-39",
									"fontname" : "Geneva",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "- Buffer size (ms or # of samples)",
									"numinlets" : 1,
									"patching_rect" : [ 63.0, 186.0, 189.0, 19.0 ],
									"numoutlets" : 0,
									"id" : "obj-40",
									"fontname" : "Geneva",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "- Hop size (ms or # of samples)",
									"numinlets" : 1,
									"patching_rect" : [ 63.0, 198.0, 202.0, 19.0 ],
									"numoutlets" : 0,
									"id" : "obj-41",
									"fontname" : "Geneva",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "- Type of window",
									"numinlets" : 1,
									"patching_rect" : [ 63.0, 222.0, 100.0, 19.0 ],
									"numoutlets" : 0,
									"id" : "obj-42",
									"fontname" : "Geneva",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "rectangular",
									"numinlets" : 1,
									"patching_rect" : [ 80.0, 234.0, 75.0, 19.0 ],
									"numoutlets" : 0,
									"id" : "obj-43",
									"fontname" : "Geneva",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Default buffer size is 1024",
									"numinlets" : 1,
									"patching_rect" : [ 280.0, 186.0, 136.0, 19.0 ],
									"numoutlets" : 0,
									"id" : "obj-44",
									"fontname" : "Geneva",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "hanning",
									"numinlets" : 1,
									"patching_rect" : [ 80.0, 246.0, 59.0, 19.0 ],
									"numoutlets" : 0,
									"id" : "obj-45",
									"fontname" : "Geneva",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "hamming",
									"numinlets" : 1,
									"patching_rect" : [ 80.0, 258.0, 62.0, 19.0 ],
									"numoutlets" : 0,
									"id" : "obj-46",
									"fontname" : "Geneva",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "blackman62",
									"numinlets" : 1,
									"patching_rect" : [ 154.0, 234.0, 93.0, 19.0 ],
									"numoutlets" : 0,
									"id" : "obj-47",
									"fontname" : "Geneva",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "1- Use floats to define sizes in ms and integers to define sizes in # of samples",
									"numinlets" : 1,
									"patching_rect" : [ 63.0, 546.0, 357.0, 19.0 ],
									"numoutlets" : 0,
									"id" : "obj-48",
									"fontname" : "Geneva",
									"fontsize" : 9.0
								}

							}
 ],
						"lines" : [  ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontname" : "Arial",
						"fontname" : "Arial",
						"default_fontsize" : 12.0,
						"globalpatchername" : "",
						"fontface" : 0,
						"fontsize" : 12.0,
						"default_fontface" : 0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "65",
					"linecount" : 2,
					"numinlets" : 1,
					"patching_rect" : [ 1172.0, 595.0, 17.0, 31.0 ],
					"numoutlets" : 0,
					"id" : "obj-63",
					"fontname" : "Geneva",
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "55",
					"linecount" : 2,
					"numinlets" : 1,
					"patching_rect" : [ 1172.0, 621.0, 17.0, 31.0 ],
					"numoutlets" : 0,
					"id" : "obj-64",
					"fontname" : "Geneva",
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "80",
					"linecount" : 2,
					"numinlets" : 1,
					"patching_rect" : [ 1172.0, 556.0, 17.0, 31.0 ],
					"numoutlets" : 0,
					"id" : "obj-65",
					"fontname" : "Geneva",
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "45",
					"linecount" : 2,
					"numinlets" : 1,
					"patching_rect" : [ 1172.0, 647.0, 17.0, 31.0 ],
					"numoutlets" : 0,
					"id" : "obj-66",
					"fontname" : "Geneva",
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "65",
					"linecount" : 2,
					"numinlets" : 1,
					"patching_rect" : [ 569.0, 578.0, 17.0, 31.0 ],
					"numoutlets" : 0,
					"id" : "obj-67",
					"fontname" : "Geneva",
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "55",
					"linecount" : 2,
					"numinlets" : 1,
					"patching_rect" : [ 569.0, 612.0, 17.0, 31.0 ],
					"numoutlets" : 0,
					"id" : "obj-68",
					"fontname" : "Geneva",
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "80",
					"linecount" : 2,
					"numinlets" : 1,
					"patching_rect" : [ 569.0, 530.0, 17.0, 31.0 ],
					"numoutlets" : 0,
					"id" : "obj-69",
					"fontname" : "Geneva",
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "unpack 0. 0.",
					"linecount" : 2,
					"numinlets" : 1,
					"patching_rect" : [ 1057.0, 475.0, 62.0, 31.0 ],
					"numoutlets" : 2,
					"id" : "obj-70",
					"fontname" : "Geneva",
					"outlettype" : [ "float", "float" ],
					"hidden" : 1,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "multislider",
					"numinlets" : 1,
					"setstyle" : 2,
					"patching_rect" : [ 1190.0, 560.0, 165.0, 93.0 ],
					"numoutlets" : 2,
					"id" : "obj-71",
					"peakcolor" : [ 0.498039, 0.498039, 0.498039, 1.0 ],
					"outlettype" : [ "", "" ],
					"setminmax" : [ 45.0, 80.0 ],
					"contdata" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "220.",
					"numinlets" : 2,
					"patching_rect" : [ 743.0, 138.0, 29.0, 17.0 ],
					"numoutlets" : 1,
					"id" : "obj-75",
					"fontname" : "Geneva",
					"outlettype" : [ "" ],
					"hidden" : 1,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"numinlets" : 1,
					"patching_rect" : [ 743.0, 156.0, 38.0, 19.0 ],
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"numoutlets" : 2,
					"id" : "obj-76",
					"fontname" : "Geneva",
					"minimum" : 10.0,
					"outlettype" : [ "float", "bang" ],
					"maximum" : 22000.0,
					"fontsize" : 9.0,
					"triscale" : 0.9,
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "phasor~",
					"numinlets" : 2,
					"patching_rect" : [ 743.0, 180.0, 44.0, 19.0 ],
					"numoutlets" : 1,
					"id" : "obj-77",
					"fontname" : "Geneva",
					"outlettype" : [ "signal" ],
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "print",
					"numinlets" : 2,
					"patching_rect" : [ 875.0, 334.0, 30.0, 17.0 ],
					"numoutlets" : 1,
					"id" : "obj-78",
					"fontname" : "Geneva",
					"outlettype" : [ "" ],
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "npartial 7",
					"numinlets" : 2,
					"patching_rect" : [ 875.0, 266.0, 52.0, 17.0 ],
					"numoutlets" : 1,
					"id" : "obj-79",
					"fontname" : "Geneva",
					"outlettype" : [ "" ],
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "reattack 100 10",
					"numinlets" : 2,
					"patching_rect" : [ 875.0, 186.0, 82.0, 17.0 ],
					"numoutlets" : 1,
					"id" : "obj-80",
					"fontname" : "Geneva",
					"outlettype" : [ "" ],
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "vibrato 50 0.5",
					"numinlets" : 2,
					"patching_rect" : [ 875.0, 118.0, 74.0, 17.0 ],
					"numoutlets" : 1,
					"id" : "obj-81",
					"fontname" : "Geneva",
					"outlettype" : [ "" ],
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "amp-range 40 50",
					"numinlets" : 2,
					"patching_rect" : [ 875.0, 50.0, 85.0, 17.0 ],
					"numoutlets" : 1,
					"id" : "obj-82",
					"fontname" : "Geneva",
					"outlettype" : [ "" ],
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "• A low and high amplitude threshold: if signal amplitude is below the low threshold, no pitches or peaks are output. The high threshold is a minimum at which \"cooked\" outputs may appear.",
					"linecount" : 4,
					"numinlets" : 1,
					"patching_rect" : [ 875.0, 67.0, 229.0, 55.0 ],
					"numoutlets" : 0,
					"id" : "obj-83",
					"fontname" : "Geneva",
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "• A period in milliseconds (50) over which the raw pitch may not deviate more than an interval in half-tones (0.5) from the average pitch to report it as a note to the \"cooked\" pitch outlet.",
					"linecount" : 4,
					"numinlets" : 1,
					"patching_rect" : [ 875.0, 135.0, 231.0, 55.0 ],
					"numoutlets" : 0,
					"id" : "obj-84",
					"fontname" : "Geneva",
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "• A period in milliseconds (100) over which a re-attack is reported if the amplitude rises more than (10) dB. The re-attack will result in a \"bang\" in the attack outlet and may give rise to repeated notes in the cooked pitch output.",
					"linecount" : 5,
					"numinlets" : 1,
					"patching_rect" : [ 875.0, 203.0, 231.0, 67.0 ],
					"numoutlets" : 0,
					"id" : "obj-85",
					"fontname" : "Geneva",
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "• Higher partials are weighed less strongly than lower ones in determining the pitch -- this specifies the number of the partial (7) which will be weighted half as strongly as the fundamental.",
					"linecount" : 4,
					"numinlets" : 1,
					"patching_rect" : [ 875.0, 283.0, 238.0, 55.0 ],
					"numoutlets" : 0,
					"id" : "obj-86",
					"fontname" : "Geneva",
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "• Print the values of these parameters.",
					"numinlets" : 1,
					"patching_rect" : [ 875.0, 351.0, 231.0, 19.0 ],
					"numoutlets" : 0,
					"id" : "obj-87",
					"fontname" : "Geneva",
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p fiddle",
					"numinlets" : 0,
					"patching_rect" : [ 769.0, 526.0, 41.0, 19.0 ],
					"color" : [ 0.380392, 0.611765, 0.611765, 1.0 ],
					"numoutlets" : 0,
					"id" : "obj-88",
					"fontname" : "Geneva",
					"fontsize" : 9.0,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 46.0, 82.0, 280.0, 529.0 ],
						"bglocked" : 0,
						"defrect" : [ 46.0, 82.0, 280.0, 529.0 ],
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
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "pitch estimator and sinusoidal peak finder",
									"linecount" : 2,
									"numinlets" : 1,
									"patching_rect" : [ 131.0, 31.0, 105.0, 31.0 ],
									"numoutlets" : 0,
									"id" : "obj-1",
									"fontname" : "Geneva",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "fpic",
									"numinlets" : 1,
									"patching_rect" : [ 22.0, 31.0, 101.0, 22.0 ],
									"numoutlets" : 0,
									"id" : "obj-2",
									"embed" : 1,
									"data" : [ 1445, "", "IBkSG0fBZn....PCIgDQRA...TF...fEHX....P1JKEn....DLmPIQEBHf.B7g.YHB..EvURDEDUnEXwZEBciiCD8u6K.alLyBJnCygkBMLgckkBCrG6N1svdrsrqvB6xZX0PCaXwrXnf1rHVDqGv0dksF0XmW5qeVjmNVyLZl4qw8au81auAGPo0PVVhRkpcsHNG7vP3A.M.Jqpr96Zd9XfKcIBCGolp22GL1y..9ddHjwFkLeUXB0hJsFOlkghxRx+n+a8Z..THk3grLqm+yatAddiKrPoqPeeb2pUiRO..Y44Hc+9NqkHDXURxnj4qBVAEkVi6d5InnjF0NpF2coxVpPeevFY.A.P5Hi6b.0goPNezx7UAqfR5quRFPDAAvyyCbCGNkgctNR4gCVqEclNIJcMsmtFhLeUnSPQCfLozRnUWcERhhrVOVHrbbmqijJ.KBBFsdnx3.PmdECQluRzInjSDPB88ICH.v45iEUDkAANul7CIi6RlU9YfNAEJ1OyDhK1KSVU0lQvYLDIDvC.6GYVhF0DCZ5oEw4sAvgjwcNYk8Yh544AQPvYcv4TXRZdN1ramSAR2uukkhI6jekkYUpyE6ksRIdNKypWEC.2jjfJJmDQoDMpYMQseEAAXcRhSJ5lXHxXt2yxyIyt.pqjb874H9Bd3chKZuja.iTbIQIGAwFiJ30.E.dJKCd99mTWZ.b+lMNcNxCGviYYn53QqmYVZRCbRYZj6gzTmWKnAUGOhGxxvsIIWr.yjxQDTLYmP4b5WBHqnfLfjHDfEDfborVODNo955wrLq2IC.WMcJ777P1tcj6IFPGJ5TYI8kg5..C.IylgHNGEkkVYqOuc6kKnb6xk..X698VNPQP.Vc0Us+tgcxPXunzZ7qWe0Rl0IIX96a9j3X7iGejjBtot1JkVjPX.3uu95V4h3b7uu7hkd3C39I8kYCwAfaWtrs+gHLDpCG53upNdDZfQOICJ7cQXHDggnTqsdXrPflma1Pixv5m9mRDPh371.BPsAz2gPoqW1t0RljYy5D3b0vsutN0dWVUYc3rwOXBFAw.prPfZ1ko44HMO2ISyJkp8vdK6KpxXtnIdJJkttuyUCjBsotxkRxd.mit.Nscts2nW.pc12ml1Ys9yMiBZTW10LKeytcPDDfj331CnUJE94yOCOee7iUqpCJJslrDhKFIjrWLN0RceG.5fLkSxTWENt6T+Q435DnoMLD6bOgsUc7H4AiOROeDwjFRIOi5JEMYuriGgRopCJjyAxXFWlPo0jaPggCm5TDkizkSxTWTkUmRbXgx36aCCwNGhymBLzsehYeoHNGQb9uI17NT.P0DPvu6QNAXb71kDFVe1KTFe.w8N1QjELDcQUOmRWi89ITDXh3b7WKVXs9oPHmCHkXwzo3OlOG..KhiQtThrhhN1UnuO9yEKZ6QNAXbicfZxvT2OYHHKO+hnKkVSVx7RLdEpmmaLMgFLSH5P7nYDT8GEUrPfXgn864P8MbbV9x0XGFhrhf.K4JKK6PYLMOmtLHgt56LKJKwh331e+Hw2zgRWmZu6S7IG5+tpTJ7TuoSvPM8993ilMHyyCLGUilL1gANDVZ7vPfdrXTntwWrPfhxRm2TtutDLFYP4grLHBBvqEEN6CXZCCwNCYLvdeuZ9ttOMEQbt0cSZvsKWdQteRC99XFFXkRMHVZwBABIFch7vArY2NTTVhDGko5qqjYyHkKWJwlc6P0wij5puMLT67ZhY20bC99ADFpuL7kdnjemZXfi49Ihf.qSId.0MtHBLLT+8YlOc5fzUHig0IIf5KcD56i+Y4RxF+8sggZmyEBmuOSjHD3t0q6bY3KE91G8ONwk.4NFw9Xg9cccPofmmGlx4e5eTJYUEjGN.86zx+LGWuI9eD8X.VWzkoUH.....IUjSD4pPfIH" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "by Miller Puckette",
									"numinlets" : 1,
									"patching_rect" : [ 21.0, 75.0, 94.0, 19.0 ],
									"numoutlets" : 0,
									"id" : "obj-3",
									"fontname" : "Geneva",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "MSP port by Ted Apel, David Zicarelli",
									"numinlets" : 1,
									"patching_rect" : [ 21.0, 91.0, 185.0, 19.0 ],
									"numoutlets" : 0,
									"id" : "obj-4",
									"fontname" : "Geneva",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Version 1.1 December 1999",
									"numinlets" : 1,
									"patching_rect" : [ 21.0, 59.0, 149.0, 19.0 ],
									"numoutlets" : 0,
									"id" : "obj-5",
									"fontname" : "Geneva",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "The fiddle~ object estimates the pitch and amplitude of an incoming sound, both continuously and as a streem of discrete \"note\" events. Fiddle~ optionally outputs a list of detected sinusoidal peaks used to make the pitch determination. Fiddle~ is described theoretically in the 1998 ICMC proceedings, reprinted on http://www.crca.ucsd.edu/~msp.",
									"linecount" : 8,
									"numinlets" : 1,
									"patching_rect" : [ 21.0, 124.0, 222.0, 103.0 ],
									"numoutlets" : 0,
									"id" : "obj-6",
									"fontname" : "Geneva",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Fiddle's creation arguments specify an analysis window size, the maximum polyphony (i.e., the number of simultaneous \"pitches\" to try the find), the number of peaks in the spectrum to consider, and the number of peaks, if any, to output \"raw\". The outlets give discrete pitch (a number), detected attacks in the amplitude envelope (a bang), one or more voices of continuous pitch and amplitude, overall amplitude, and optionally a sequence of messages with the peaks.",
									"linecount" : 11,
									"numinlets" : 1,
									"patching_rect" : [ 21.0, 225.0, 222.0, 139.0 ],
									"numoutlets" : 0,
									"id" : "obj-7",
									"fontname" : "Geneva",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "The analysis hop size is half the window size so in the example shown here, one analysis is done every 512 samples (1.6 msec at 44.1kHz), and the analysis uses the most recent 1024 samples (23.2 msec at 44.1kHz). The minimum frequency that fiddle~ with report is 2-1/2 cycles per analysis window, or about 108 Hz. (just below MIDI 45.)",
									"linecount" : 8,
									"numinlets" : 1,
									"patching_rect" : [ 21.0, 362.0, 224.0, 103.0 ],
									"numoutlets" : 0,
									"id" : "obj-8",
									"fontname" : "Geneva",
									"fontsize" : 9.0
								}

							}
 ],
						"lines" : [  ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontname" : "Arial",
						"fontname" : "Arial",
						"default_fontsize" : 12.0,
						"globalpatchername" : "",
						"fontface" : 0,
						"fontsize" : 12.0,
						"default_fontface" : 0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "up to 3",
					"linecount" : 2,
					"numinlets" : 1,
					"patching_rect" : [ 704.0, 561.0, 37.0, 31.0 ],
					"numoutlets" : 0,
					"id" : "obj-89",
					"fontname" : "Geneva",
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "up to 3",
					"linecount" : 2,
					"numinlets" : 1,
					"patching_rect" : [ 861.0, 561.0, 37.0, 31.0 ],
					"numoutlets" : 0,
					"id" : "obj-90",
					"fontname" : "Geneva",
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "65.390778 57.2",
					"linecount" : 2,
					"numinlets" : 2,
					"patching_rect" : [ 889.0, 625.0, 62.0, 29.0 ],
					"numoutlets" : 1,
					"id" : "obj-91",
					"fontname" : "Geneva",
					"outlettype" : [ "" ],
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend set",
					"linecount" : 2,
					"numinlets" : 1,
					"patching_rect" : [ 889.0, 605.0, 60.0, 31.0 ],
					"numoutlets" : 1,
					"id" : "obj-92",
					"fontname" : "Geneva",
					"outlettype" : [ "" ],
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "69.084084 42.142391",
					"linecount" : 2,
					"numinlets" : 2,
					"patching_rect" : [ 826.0, 625.0, 62.0, 29.0 ],
					"numoutlets" : 1,
					"id" : "obj-93",
					"fontname" : "Geneva",
					"outlettype" : [ "" ],
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend set",
					"linecount" : 2,
					"numinlets" : 1,
					"patching_rect" : [ 826.0, 605.0, 60.0, 31.0 ],
					"numoutlets" : 1,
					"id" : "obj-94",
					"fontname" : "Geneva",
					"outlettype" : [ "" ],
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "route 1 2",
					"numinlets" : 1,
					"patching_rect" : [ 853.0, 575.0, 50.0, 19.0 ],
					"numoutlets" : 3,
					"id" : "obj-95",
					"fontname" : "Geneva",
					"outlettype" : [ "", "", "" ],
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Polyphonic pitches (freq, amp)",
					"numinlets" : 1,
					"patching_rect" : [ 817.0, 655.0, 145.0, 19.0 ],
					"numoutlets" : 0,
					"id" : "obj-96",
					"fontname" : "Geneva",
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "multislider",
					"numinlets" : 1,
					"patching_rect" : [ 587.0, 534.0, 50.0, 118.0 ],
					"numoutlets" : 2,
					"id" : "obj-97",
					"peakcolor" : [ 0.498039, 0.498039, 0.498039, 1.0 ],
					"outlettype" : [ "", "" ],
					"setminmax" : [ 45.0, 80.0 ],
					"contdata" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"numinlets" : 1,
					"patching_rect" : [ 639.0, 514.0, 49.0, 19.0 ],
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"numoutlets" : 2,
					"id" : "obj-98",
					"fontname" : "Geneva",
					"outlettype" : [ "float", "bang" ],
					"fontsize" : 9.0,
					"triscale" : 0.9,
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"numinlets" : 1,
					"patching_rect" : [ 587.0, 514.0, 49.0, 19.0 ],
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"numoutlets" : 2,
					"id" : "obj-99",
					"fontname" : "Geneva",
					"outlettype" : [ "float", "bang" ],
					"fontsize" : 9.0,
					"triscale" : 0.9,
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "unpack 0. 0.",
					"linecount" : 2,
					"numinlets" : 1,
					"patching_rect" : [ 587.0, 492.0, 62.0, 31.0 ],
					"numoutlets" : 2,
					"id" : "obj-100",
					"fontname" : "Geneva",
					"outlettype" : [ "float", "float" ],
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "165.279694 0.00035",
					"linecount" : 2,
					"numinlets" : 2,
					"patching_rect" : [ 1088.0, 625.0, 63.0, 29.0 ],
					"numoutlets" : 1,
					"id" : "obj-101",
					"fontname" : "Geneva",
					"outlettype" : [ "" ],
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend set",
					"linecount" : 2,
					"numinlets" : 1,
					"patching_rect" : [ 1088.0, 605.0, 60.0, 31.0 ],
					"numoutlets" : 1,
					"id" : "obj-102",
					"fontname" : "Geneva",
					"outlettype" : [ "" ],
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "96.334343 0.000303",
					"linecount" : 2,
					"numinlets" : 2,
					"patching_rect" : [ 1025.0, 625.0, 62.0, 29.0 ],
					"numoutlets" : 1,
					"id" : "obj-103",
					"fontname" : "Geneva",
					"outlettype" : [ "" ],
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend set",
					"linecount" : 2,
					"numinlets" : 1,
					"patching_rect" : [ 1025.0, 605.0, 60.0, 31.0 ],
					"numoutlets" : 1,
					"id" : "obj-104",
					"fontname" : "Geneva",
					"outlettype" : [ "" ],
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "route 1 2 3",
					"numinlets" : 1,
					"patching_rect" : [ 1009.0, 576.0, 59.0, 19.0 ],
					"numoutlets" : 4,
					"id" : "obj-105",
					"fontname" : "Geneva",
					"outlettype" : [ "", "", "", "" ],
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "43.066406 0.000288",
					"linecount" : 3,
					"numinlets" : 2,
					"patching_rect" : [ 962.0, 625.0, 58.0, 41.0 ],
					"numoutlets" : 1,
					"id" : "obj-106",
					"fontname" : "Geneva",
					"outlettype" : [ "" ],
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend set",
					"linecount" : 2,
					"numinlets" : 1,
					"patching_rect" : [ 962.0, 605.0, 60.0, 31.0 ],
					"numoutlets" : 1,
					"id" : "obj-107",
					"fontname" : "Geneva",
					"outlettype" : [ "" ],
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "0. 0.",
					"numinlets" : 2,
					"patching_rect" : [ 927.0, 526.0, 63.0, 17.0 ],
					"numoutlets" : 1,
					"id" : "obj-108",
					"fontname" : "Geneva",
					"outlettype" : [ "" ],
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend set",
					"linecount" : 2,
					"numinlets" : 1,
					"patching_rect" : [ 927.0, 506.0, 60.0, 31.0 ],
					"numoutlets" : 1,
					"id" : "obj-109",
					"fontname" : "Geneva",
					"outlettype" : [ "" ],
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "65.390778 357.2",
					"linecount" : 2,
					"numinlets" : 2,
					"patching_rect" : [ 733.0, 625.0, 62.0, 29.0 ],
					"numoutlets" : 1,
					"id" : "obj-110",
					"fontname" : "Geneva",
					"outlettype" : [ "" ],
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend set",
					"linecount" : 2,
					"numinlets" : 1,
					"patching_rect" : [ 733.0, 605.0, 60.0, 31.0 ],
					"numoutlets" : 1,
					"id" : "obj-111",
					"fontname" : "Geneva",
					"outlettype" : [ "" ],
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "69.084091 442.142395",
					"linecount" : 3,
					"numinlets" : 2,
					"patching_rect" : [ 670.0, 625.0, 62.0, 41.0 ],
					"numoutlets" : 1,
					"id" : "obj-112",
					"fontname" : "Geneva",
					"outlettype" : [ "" ],
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend set",
					"linecount" : 2,
					"numinlets" : 1,
					"patching_rect" : [ 670.0, 605.0, 60.0, 31.0 ],
					"numoutlets" : 1,
					"id" : "obj-113",
					"fontname" : "Geneva",
					"outlettype" : [ "" ],
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "route 1 2",
					"numinlets" : 1,
					"patching_rect" : [ 697.0, 575.0, 50.0, 19.0 ],
					"numoutlets" : 3,
					"id" : "obj-114",
					"fontname" : "Geneva",
					"outlettype" : [ "", "", "" ],
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "© 1997-99 Miller Puckette",
					"numinlets" : 1,
					"patching_rect" : [ 560.0, 105.0, 132.0, 19.0 ],
					"numoutlets" : 0,
					"id" : "obj-115",
					"fontname" : "Geneva",
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "512",
					"numinlets" : 2,
					"patching_rect" : [ 678.0, 352.0, 26.0, 17.0 ],
					"numoutlets" : 1,
					"id" : "obj-116",
					"fontname" : "Geneva",
					"outlettype" : [ "" ],
					"hidden" : 1,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"numinlets" : 1,
					"patching_rect" : [ 678.0, 371.0, 35.0, 19.0 ],
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"numoutlets" : 2,
					"id" : "obj-117",
					"fontname" : "Geneva",
					"minimum" : 0,
					"outlettype" : [ "int", "bang" ],
					"maximum" : 8188,
					"fontsize" : 9.0,
					"triscale" : 0.9,
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Hop size",
					"numinlets" : 1,
					"patching_rect" : [ 676.0, 357.0, 58.0, 19.0 ],
					"numoutlets" : 0,
					"id" : "obj-118",
					"fontname" : "Geneva",
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "5000.",
					"numinlets" : 2,
					"patching_rect" : [ 703.0, 138.0, 35.0, 17.0 ],
					"numoutlets" : 1,
					"id" : "obj-119",
					"fontname" : "Geneva",
					"outlettype" : [ "" ],
					"hidden" : 1,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadbang",
					"linecount" : 2,
					"numinlets" : 1,
					"patching_rect" : [ 792.0, 156.0, 45.0, 31.0 ],
					"numoutlets" : 1,
					"id" : "obj-120",
					"fontname" : "Geneva",
					"outlettype" : [ "bang" ],
					"hidden" : 1,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"numinlets" : 1,
					"patching_rect" : [ 688.0, 250.0, 15.0, 15.0 ],
					"numoutlets" : 1,
					"id" : "obj-121",
					"outlettype" : [ "bang" ],
					"hidden" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"numinlets" : 1,
					"patching_rect" : [ 677.0, 293.0, 35.0, 19.0 ],
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"numoutlets" : 2,
					"id" : "obj-122",
					"fontname" : "Geneva",
					"outlettype" : [ "int", "bang" ],
					"fontsize" : 9.0,
					"triscale" : 0.9,
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "timer",
					"numinlets" : 2,
					"patching_rect" : [ 677.0, 271.0, 33.0, 19.0 ],
					"numoutlets" : 2,
					"id" : "obj-123",
					"fontname" : "Geneva",
					"outlettype" : [ "float", "" ],
					"hidden" : 1,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"numinlets" : 1,
					"patching_rect" : [ 703.0, 156.0, 38.0, 19.0 ],
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"numoutlets" : 2,
					"id" : "obj-126",
					"fontname" : "Geneva",
					"minimum" : 10.0,
					"outlettype" : [ "float", "bang" ],
					"maximum" : 22000.0,
					"fontsize" : 9.0,
					"triscale" : 0.9,
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "cycle~",
					"numinlets" : 2,
					"patching_rect" : [ 703.0, 180.0, 38.0, 19.0 ],
					"numoutlets" : 1,
					"id" : "obj-128",
					"fontname" : "Geneva",
					"outlettype" : [ "signal" ],
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ezdac~",
					"numinlets" : 2,
					"patching_rect" : [ 676.0, 315.0, 33.0, 33.0 ],
					"numoutlets" : 0,
					"id" : "obj-129"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "analyzer~ @buffersize 2048 @hopsize 512 @fftsize 4096 @windowtype blackman70 @initialdelay 0 @numpitches 1 @numpeakstofind 10 @numpeakstooutput 10 @barkformat list",
					"linecount" : 2,
					"numinlets" : 1,
					"patching_rect" : [ 645.5, 389.0, 391.5, 27.0 ],
					"numoutlets" : 9,
					"id" : "obj-131",
					"fontname" : "Arial",
					"outlettype" : [ "list", "float", "float", "float", "list", "bang", "list", "list", "FullPacket" ],
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Update rate (ms)",
					"linecount" : 2,
					"numinlets" : 1,
					"patching_rect" : [ 676.0, 267.0, 50.0, 31.0 ],
					"numoutlets" : 0,
					"id" : "obj-132",
					"fontname" : "Geneva",
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "© 2001 Tristan Jehan",
					"numinlets" : 1,
					"patching_rect" : [ 560.0, 117.0, 107.0, 19.0 ],
					"numoutlets" : 0,
					"id" : "obj-133",
					"fontname" : "Geneva",
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Sinusoidal components (freq, amp)",
					"numinlets" : 1,
					"patching_rect" : [ 971.0, 655.0, 167.0, 19.0 ],
					"numoutlets" : 0,
					"id" : "obj-134",
					"fontname" : "Geneva",
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Polyphonic pitches (MIDI, Hz)",
					"numinlets" : 1,
					"patching_rect" : [ 661.0, 655.0, 139.0, 19.0 ],
					"numoutlets" : 0,
					"id" : "obj-136",
					"fontname" : "Geneva",
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "MIDI Pitch",
					"numinlets" : 1,
					"patching_rect" : [ 585.0, 655.0, 53.0, 19.0 ],
					"numoutlets" : 0,
					"id" : "obj-137",
					"fontname" : "Geneva",
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Pitch (Hz)",
					"numinlets" : 1,
					"patching_rect" : [ 639.0, 533.0, 52.0, 19.0 ],
					"numoutlets" : 0,
					"id" : "obj-138",
					"fontname" : "Geneva",
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Raw MIDI pitch and amplitude",
					"linecount" : 2,
					"numinlets" : 1,
					"patching_rect" : [ 926.0, 556.0, 74.0, 31.0 ],
					"numoutlets" : 0,
					"id" : "obj-139",
					"fontname" : "Geneva",
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Cooked",
					"linecount" : 2,
					"numinlets" : 1,
					"patching_rect" : [ 600.0, 477.0, 36.0, 31.0 ],
					"numoutlets" : 0,
					"id" : "obj-140",
					"fontname" : "Geneva",
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "up to 100",
					"linecount" : 2,
					"numinlets" : 1,
					"patching_rect" : [ 1017.0, 562.0, 51.0, 31.0 ],
					"numoutlets" : 0,
					"id" : "obj-141",
					"fontname" : "Geneva",
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Attack",
					"linecount" : 2,
					"numinlets" : 1,
					"patching_rect" : [ 896.0, 444.0, 35.0, 31.0 ],
					"numoutlets" : 0,
					"id" : "obj-142",
					"fontname" : "Geneva",
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "45",
					"linecount" : 2,
					"numinlets" : 1,
					"patching_rect" : [ 569.0, 645.0, 17.0, 31.0 ],
					"numoutlets" : 0,
					"id" : "obj-143",
					"fontname" : "Geneva",
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Raw MIDI pitch",
					"numinlets" : 1,
					"patching_rect" : [ 1238.0, 655.0, 72.0, 19.0 ],
					"numoutlets" : 0,
					"id" : "obj-144",
					"fontname" : "Geneva",
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Loudness",
					"linecount" : 2,
					"numinlets" : 1,
					"patching_rect" : [ 697.0, 444.0, 46.0, 31.0 ],
					"numoutlets" : 0,
					"id" : "obj-145",
					"fontname" : "Geneva",
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Documentation",
					"linecount" : 2,
					"numinlets" : 1,
					"patching_rect" : [ 766.0, 492.0, 73.0, 31.0 ],
					"numoutlets" : 0,
					"id" : "obj-146",
					"fontname" : "Geneva",
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Bark",
					"linecount" : 2,
					"numinlets" : 1,
					"patching_rect" : [ 852.0, 444.0, 26.0, 31.0 ],
					"numoutlets" : 0,
					"id" : "obj-147",
					"fontname" : "Geneva",
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Loudness",
					"linecount" : 2,
					"numinlets" : 1,
					"patching_rect" : [ 1126.0, 161.0, 45.0, 31.0 ],
					"numoutlets" : 0,
					"id" : "obj-148",
					"fontname" : "Geneva",
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Noisiness",
					"numinlets" : 1,
					"patching_rect" : [ 1374.0, 163.0, 55.0, 19.0 ],
					"numoutlets" : 0,
					"id" : "obj-149",
					"fontname" : "Geneva",
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"numinlets" : 1,
					"patching_rect" : [ 180.0, 625.0, 50.0, 20.0 ],
					"numoutlets" : 2,
					"id" : "obj-31",
					"fontname" : "Arial",
					"outlettype" : [ "float", "bang" ],
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "* 4.",
					"numinlets" : 2,
					"patching_rect" : [ 240.0, 570.0, 32.5, 20.0 ],
					"numoutlets" : 1,
					"id" : "obj-33",
					"fontname" : "Arial",
					"outlettype" : [ "float" ],
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "- 38.",
					"numinlets" : 2,
					"patching_rect" : [ 240.0, 495.0, 35.0, 20.0 ],
					"numoutlets" : 1,
					"id" : "obj-25",
					"fontname" : "Arial",
					"outlettype" : [ "float" ],
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"numinlets" : 1,
					"patching_rect" : [ 240.0, 540.0, 38.0, 20.0 ],
					"numoutlets" : 2,
					"id" : "obj-22",
					"fontname" : "Arial",
					"outlettype" : [ "float", "bang" ],
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "bendout",
					"numinlets" : 2,
					"patching_rect" : [ 240.0, 660.0, 54.0, 20.0 ],
					"numoutlets" : 0,
					"id" : "obj-20",
					"fontname" : "Arial",
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"numinlets" : 1,
					"patching_rect" : [ 240.0, 450.0, 50.0, 20.0 ],
					"numoutlets" : 2,
					"id" : "obj-32",
					"fontname" : "Arial",
					"outlettype" : [ "float", "bang" ],
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "unpack 1 2. 3.",
					"numinlets" : 1,
					"patching_rect" : [ 240.0, 405.0, 86.0, 20.0 ],
					"numoutlets" : 3,
					"id" : "obj-24",
					"fontname" : "Arial",
					"outlettype" : [ "int", "float", "float" ],
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"numinlets" : 1,
					"patching_rect" : [ 270.0, 600.0, 50.0, 20.0 ],
					"numoutlets" : 2,
					"id" : "obj-11",
					"fontname" : "Arial",
					"outlettype" : [ "int", "bang" ],
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "0. 0.",
					"numinlets" : 2,
					"patching_rect" : [ 276.0, 316.0, 112.0, 18.0 ],
					"numoutlets" : 1,
					"id" : "obj-10",
					"fontname" : "Arial",
					"outlettype" : [ "" ],
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend set",
					"numinlets" : 1,
					"patching_rect" : [ 240.0, 255.0, 74.0, 20.0 ],
					"numoutlets" : 1,
					"id" : "obj-4",
					"fontname" : "Arial",
					"outlettype" : [ "" ],
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "led",
					"numinlets" : 1,
					"patching_rect" : [ 120.0, 300.0, 20.0, 20.0 ],
					"numoutlets" : 1,
					"id" : "obj-2",
					"outlettype" : [ "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pitch~ 2048 512 4096 blackman70 0 1 10 3",
					"numinlets" : 1,
					"patching_rect" : [ 120.0, 210.0, 241.0, 20.0 ],
					"numoutlets" : 5,
					"id" : "obj-1",
					"fontname" : "Arial",
					"outlettype" : [ "bang", "list", "list", "float", "list" ],
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"numinlets" : 1,
					"patching_rect" : [ 120.0, 60.0, 20.0, 20.0 ],
					"numoutlets" : 1,
					"id" : "obj-9",
					"outlettype" : [ "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "adc~",
					"numinlets" : 1,
					"patching_rect" : [ 120.0, 120.0, 161.0, 20.0 ],
					"numoutlets" : 2,
					"id" : "obj-6",
					"fontname" : "Arial",
					"outlettype" : [ "signal", "signal" ],
					"fontsize" : 12.0
				}

			}
 ],
		"lines" : [ 			{
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
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-131", 0 ],
					"hidden" : 0,
					"midpoints" : [ 129.5, 175.0, 655.0, 175.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-123", 0 ],
					"destination" : [ "obj-122", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-121", 0 ],
					"destination" : [ "obj-123", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-121", 0 ],
					"destination" : [ "obj-123", 1 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-131", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-44", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-114", 1 ],
					"destination" : [ "obj-111", 0 ],
					"hidden" : 0,
					"midpoints" : [ 722.0, 598.0, 742.5, 598.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-114", 0 ],
					"destination" : [ "obj-113", 0 ],
					"hidden" : 0,
					"midpoints" : [ 706.5, 598.0, 679.5, 598.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-116", 0 ],
					"destination" : [ "obj-117", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-117", 0 ],
					"destination" : [ "obj-131", 0 ],
					"hidden" : 0,
					"midpoints" : [ 687.5, 394.0, 655.0, 394.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-119", 0 ],
					"destination" : [ "obj-126", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-120", 0 ],
					"destination" : [ "obj-116", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-120", 0 ],
					"destination" : [ "obj-119", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-120", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-120", 0 ],
					"destination" : [ "obj-75", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-39", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-126", 0 ],
					"destination" : [ "obj-128", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
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
					"source" : [ "obj-131", 0 ],
					"destination" : [ "obj-114", 0 ],
					"hidden" : 0,
					"midpoints" : [ 655.0, 467.0, 706.5, 467.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-131", 3 ],
					"destination" : [ "obj-121", 0 ],
					"hidden" : 1,
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
					"source" : [ "obj-131", 8 ],
					"destination" : [ "obj-135", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-131", 4 ],
					"destination" : [ "obj-52", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-131", 6 ],
					"destination" : [ "obj-70", 0 ],
					"hidden" : 1,
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
					"destination" : [ "obj-95", 0 ],
					"hidden" : 0,
					"midpoints" : [ 934.375, 493.0, 862.5, 493.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-131", 0 ],
					"destination" : [ "obj-100", 0 ],
					"hidden" : 0,
					"midpoints" : [ 655.0, 467.0, 596.5, 467.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-131", 7 ],
					"destination" : [ "obj-105", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-131", 6 ],
					"destination" : [ "obj-109", 0 ],
					"hidden" : 0,
					"midpoints" : [ 934.375, 493.0, 936.5, 493.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-45", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 0 ],
					"destination" : [ "obj-131", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 0 ],
					"destination" : [ "obj-131", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 0 ],
					"destination" : [ "obj-131", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-27", 0 ],
					"destination" : [ "obj-131", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-131", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-131", 0 ],
					"hidden" : 0,
					"midpoints" : [ 724.5, 394.0, 655.0, 394.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-70", 0 ],
					"destination" : [ "obj-71", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-75", 0 ],
					"destination" : [ "obj-76", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-76", 0 ],
					"destination" : [ "obj-77", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-78", 0 ],
					"destination" : [ "obj-131", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-79", 0 ],
					"destination" : [ "obj-131", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-80", 0 ],
					"destination" : [ "obj-131", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-81", 0 ],
					"destination" : [ "obj-131", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-82", 0 ],
					"destination" : [ "obj-131", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-92", 0 ],
					"destination" : [ "obj-91", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-94", 0 ],
					"destination" : [ "obj-93", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-95", 1 ],
					"destination" : [ "obj-92", 0 ],
					"hidden" : 0,
					"midpoints" : [ 878.0, 598.0, 898.5, 598.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-95", 0 ],
					"destination" : [ "obj-94", 0 ],
					"hidden" : 0,
					"midpoints" : [ 862.5, 598.0, 835.5, 598.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-99", 0 ],
					"destination" : [ "obj-97", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-100", 1 ],
					"destination" : [ "obj-98", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-100", 0 ],
					"destination" : [ "obj-99", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-102", 0 ],
					"destination" : [ "obj-101", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-104", 0 ],
					"destination" : [ "obj-103", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-105", 2 ],
					"destination" : [ "obj-102", 0 ],
					"hidden" : 0,
					"midpoints" : [ 1045.166626, 598.0, 1097.5, 598.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-105", 1 ],
					"destination" : [ "obj-104", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-105", 0 ],
					"destination" : [ "obj-107", 0 ],
					"hidden" : 0,
					"midpoints" : [ 1018.5, 598.0, 971.5, 598.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-107", 0 ],
					"destination" : [ "obj-106", 0 ],
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
					"source" : [ "obj-111", 0 ],
					"destination" : [ "obj-110", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-113", 0 ],
					"destination" : [ "obj-112", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 0,
					"midpoints" : [ 249.5, 345.0, 249.5, 345.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0,
					"midpoints" : [ 249.5, 299.0, 285.5, 299.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 2 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-1", 0 ],
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
					"source" : [ "obj-131", 4 ],
					"destination" : [ "obj-72", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
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
 ]
	}

}
