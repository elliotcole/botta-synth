{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 9,
			"minor" : 0,
			"revision" : 5,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"classnamespace" : "box",
		"rect" : [ 34.0, 100.0, 1444.0, 848.0 ],
		"gridsize" : [ 15.0, 15.0 ],
		"boxes" : [ 			{
				"box" : 				{
					"id" : "obj-51",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "int" ],
					"patching_rect" : [ 51.75, 1137.209261655807495, 29.5, 22.0 ],
					"text" : "t b i"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-41",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 51.75, 1110.209261655807495, 77.0, 22.0 ],
					"text" : "loadmess 33"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-31",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 755.960000000000036, 81.329999999999998, 70.0, 22.0 ],
					"text" : "loadmess 5"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-19",
					"maxclass" : "flonum",
					"maximum" : 1.0,
					"minimum" : -1.0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 835.120110094547272, 718.0, 50.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 949.0, 646.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-17",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 828.82000000000005, 1479.75, 70.0, 22.0 ],
					"text" : "loadmess 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-30",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 351.767428636550903, 1729.0, 70.0, 22.0 ],
					"text" : "loadmess 0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-24",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 152.0, 1291.666617393493652, 22.0, 22.0 ],
					"text" : "t b"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 15.0,
					"id" : "obj-3",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 51.0, 753.0, 114.0, 23.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 45.352940440177917, 754.5, 70.0, 23.0 ],
					"text" : "spacebar"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-412",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 303.0, 1844.0, 89.0, 22.0 ],
					"text" : "storagewindow"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-410",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 237.0, 31.5, 150.0, 33.0 ],
					"text" : "slows down number change...may not need it"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-408",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 161.0, 37.0, 71.0, 22.0 ],
					"text" : "settime 300"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-404",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 161.0, 69.0, 93.0, 22.0 ],
					"saved_object_attributes" : 					{
						"filename" : "stablevalue.js",
						"parameter_enable" : 0
					}
,
					"text" : "js stablevalue.js"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-395",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1590.0, 973.0, 24.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 751.0, 248.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-393",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1538.0, 974.0, 50.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 704.0, 249.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-392",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1586.0, 1052.5, 49.0, 22.0 ],
					"text" : "reverse"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-391",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1538.0, 1007.0, 56.0, 22.0 ],
					"text" : "rotate $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-390",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 659.0, 175.0, 54.545455098152161, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 736.0, 219.0, 54.545455098152161, 20.0 ],
					"text" : "inc/dec"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-388",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1543.0, 925.0, 135.0, 22.0 ],
					"text" : "incrementHarmonics $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-387",
					"maxclass" : "incdec",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1543.0, 885.0, 20.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 705.0, 218.0, 23.92822852730751, 22.58401882648468 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-381",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 284.374989151954651, 193.749992609024048, 150.0, 20.0 ],
					"presentation" : 1,
					"presentation_linecount" : 2,
					"presentation_rect" : [ 266.0, 197.0, 93.0, 33.0 ],
					"text" : "change only on bang"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-379",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 891.666632652282715, 1532.720875382423401, 24.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 304.0, 219.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-377",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 836.458301424980164, 1580.20827305316925, 75.0, 22.0 ],
					"text" : "set_defer $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-375",
					"linecount" : 3,
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 2201.276350617408752, 1060.416626214981079, 69.0, 49.0 ],
					"text" : "-1 -1 -2 -2 -2 -3 -1 0 -1 -2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-373",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 2089.818021535873413, 1047.916626691818237, 72.0, 22.0 ],
					"text" : "prepend set"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 15.0,
					"id" : "obj-372",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 378.124985575675964, 689.583307027816772, 112.0, 23.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 228.0, 831.0, 67.0, 23.0 ],
					"text" : "Record "
				}

			}
, 			{
				"box" : 				{
					"checkedcolor" : [ 0.850980392156863, 0.0, 0.0, 1.0 ],
					"id" : "obj-369",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 915.116246342658997, 1646.916603803634644, 24.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 232.0, 779.0, 50.0, 50.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-358",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 855.208300709724426, 1647.916603803634644, 67.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 228.0, 755.0, 67.0, 22.0 ],
					"text" : "open wave"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-356",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 855.208300709724426, 1691.116219520568848, 69.0, 22.0 ],
					"text" : "sfrecord~ 2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-355",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 49.999998092651367, 251.041657090187073, 104.109581470489502, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 50.0, 197.0, 60.705880880355835, 20.0 ],
					"text" : "fund"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-351",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 376.041652321815491, 1310.139488101005554, 46.725776314735413, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 184.120092868804932, 51.588237404823303, 46.725776314735413, 20.0 ],
					"text" : "Hz "
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-350",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 108.297757744789124, 1328.041616082191467, 150.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 184.120092868804932, 75.62990403175354, 70.833330631256104, 20.0 ],
					"text" : "MIDI note"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-348",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 56.297757744789124, 1326.041616082191467, 50.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 131.13590133190155, 74.62990403175354, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-347",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "read" ],
					"patching_rect" : [ 12.536232113838196, 1241.0, 39.0, 22.0 ],
					"text" : "t read"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-340",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 456.249982595443726, 1274.999951362609863, 215.0, 22.0 ],
					"text" : "read 12_equal_divisions_A_440_69.txt"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-339",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 456.249982595443726, 1249.5, 58.0, 22.0 ],
					"text" : "loadbang"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-338",
					"linecount" : 2,
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 4.0, 1201.0, 125.0, 35.0 ],
					"presentation" : 1,
					"presentation_linecount" : 2,
					"presentation_rect" : [ 261.458323359489441, 53.11764931678772, 107.291662573814392, 35.0 ],
					"text" : "open temperament .txt"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-335",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "", "", "", "" ],
					"patching_rect" : [ 176.0, 1297.0, 101.0, 22.0 ],
					"saved_object_attributes" : 					{
						"embed" : 0,
						"precision" : 6
					}
,
					"text" : "coll temperament"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-332",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 364.583319425582886, 1403.488321900367737, 33.0, 22.0 ],
					"text" : "== 0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-331",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 370.041654706001282, 1444.749943971633911, 32.0, 22.0 ],
					"text" : "gate"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-329",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 631.249975919723511, 2023.958256125450134, 166.0, 23.0 ],
					"text" : "loadmess 1 2 3 4 5 6 7 8 9"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-328",
					"linecount" : 3,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 282.291655898094177, 1468.749943971633911, 115.624995589256287, 60.0 ],
					"text" : "select interp or keyboard preset mode\n"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-325",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 473.958315253257751, 1720.833267688751221, 33.0, 22.0 ],
					"text" : "== 0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-324",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 473.958315253257751, 1748.958266615867615, 32.0, 22.0 ],
					"text" : "gate"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-22",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 473.958315253257751, 1785.416598558425903, 133.0, 22.0 ],
					"text" : "prepend nodenumber"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-320",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 460.416649103164673, 2055.208254933357239, 162.0, 23.0 ],
					"text" : "vexpr ($f1*0.9999)+$f2"
				}

			}
, 			{
				"box" : 				{
					"candycane" : 8,
					"displayknob" : 2,
					"id" : "obj-321",
					"knobsize" : 20.0,
					"maxclass" : "nodes",
					"nodenumber" : 0,
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 460.416649103164673, 1844.0, 189.0, 189.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 19.0, 379.0, 363.374985337257385, 345.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-322",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 464.58331561088562, 2097.916586637496948, 122.0, 23.0 ],
					"text" : "prepend recallmulti"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-319",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 403.124984622001648, 1842.210000000000036, 35.0, 22.0 ],
					"text" : "clear"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-316",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "" ],
					"patching_rect" : [ 399.5, 1811.372029066085815, 53.0, 22.0 ],
					"text" : "sel clear"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-314",
					"items" : [ "harmonicSeries", ",", "odds", ",", "evens", ",", "nearestPrimes", ",", "nearestOdds", ",", "halveEvens" ],
					"maxclass" : "umenu",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1320.0, 939.0, 100.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 700.0, 276.0, 123.958328604698181, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-297",
					"linecount" : 2,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 251.612914323806763, 1428.124945521354675, 42.945663809776306, 35.0 ],
					"text" : "loadmess 0"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 24.0,
					"id" : "obj-296",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 26.04166567325592, 171.874993443489075, 153.0, 33.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 16.025859117507935, 266.416655302047729, 151.724135398864746, 33.0 ],
					"text" : "STORAGE"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-281",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1617.0, 1026.5, 54.545455098152161, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 736.0, 191.0, 54.545455098152161, 20.0 ],
					"text" : "reverse"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-280",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1591.0, 1024.5, 24.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 705.0, 189.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-276",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1605.0, 997.5, 54.545455098152161, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 777.0, 250.0, 54.545455098152161, 20.0 ],
					"text" : "rotate"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 20.0,
					"id" : "obj-263",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1381.927761912345886, 365.379531741142273, 122.0, 29.0 ],
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-261",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1590.361504554748535, 250.588245749473572, 71.0, 22.0 ],
					"text" : "set $1 BPM"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 20.0,
					"id" : "obj-260",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1612.941243767738342, 320.00001335144043, 122.0, 29.0 ],
					"text" : "1957.00 ms",
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-259",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1373.818180441856384, 17.662651181221008, 104.109581470489502, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 16.0, 234.0, 28.247943162918091, 20.0 ],
					"text" : "kb"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-258",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1479.927761912345886, 15.662651181221008, 24.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 18.0, 213.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-256",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 1479.927761912345886, 56.626508116722107, 29.5, 22.0 ],
					"text" : "+ 0."
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-255",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1478.313307642936707, 283.132540583610535, 87.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-251",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1394.825350403785706, 138.554221987724304, 75.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 177.0, 197.0, 75.0, 20.0 ],
					"text" : "subdivision"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-249",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1590.361504554748535, 280.518082618713379, 105.882357358932495, 20.0 ],
					"presentation" : 1,
					"presentation_linecount" : 2,
					"presentation_rect" : [ 119.0, 234.0, 45.604587405920029, 33.0 ],
					"text" : "30.66 BPM"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-246",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "float" ],
					"patching_rect" : [ 1338.198842287063599, 171.084343671798706, 29.5, 22.0 ],
					"text" : "t b f"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-244",
					"maxclass" : "number",
					"maximum" : 8,
					"minimum" : 1,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1338.198842287063599, 138.554221987724304, 50.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 188.0, 213.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-237",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1729.659657120704651, 26.506025075912476, 150.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 101.0, 197.0, 80.000003337860107, 20.0 ],
					"text" : "time octave"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-234",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1577.852422595024109, 59.036146759986877, 104.109581470489502, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 50.0, 234.0, 60.705880880355835, 20.0 ],
					"text" : "(Hz)"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-231",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "float" ],
					"patching_rect" : [ 1685.081342220306396, 150.602415204048157, 29.5, 22.0 ],
					"text" : "t b f"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-230",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "int" ],
					"patching_rect" : [ 1694.719896793365479, 68.674701333045959, 29.5, 22.0 ],
					"text" : "t 2 i"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-229",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 1685.081342220306396, 118.072293519973755, 43.835613250732422, 22.0 ],
					"text" : "pow 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-227",
					"maxclass" : "incdec",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1694.719896793365479, 15.662651181221008, 34.979451656341553, 42.465750336647034 ],
					"presentation" : 1,
					"presentation_rect" : [ 123.0, 212.0, 36.470589756965637, 23.529412746429443 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-224",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 1522.430733799934387, 177.108440279960632, 29.5, 22.0 ],
					"text" : "/ 2."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-217",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 1590.361504554748535, 220.481935858726501, 62.0, 22.0 ],
					"text" : "!/ 120000."
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-211",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1521.225914478302002, 59.036146759986877, 50.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 43.0, 213.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-210",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1478.313307642936707, 228.915671110153198, 87.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-208",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 1522.430733799934387, 130.120486736297607, 33.0, 22.0 ],
					"text" : "* 16."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-207",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 1522.430733799934387, 100.000003695487976, 49.0, 22.0 ],
					"text" : "!/ 1000."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-206",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 51.446240305900574, 1597.65218722820282, 150.0, 20.0 ],
					"text" : "store current note"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-201",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 551.5, 434.5, 84.0, 22.0 ],
					"text" : "vexpr $i1 / 12."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-188",
					"items" : [ "clear", ",", "read", ",", "write" ],
					"maxclass" : "umenu",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 359.0, 1774.193626642227173, 100.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 223.958324790000916, 303.050427794456482, 100.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-179",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 592.000017642974854, 155.813947916030884, 41.0, 22.0 ],
					"text" : "del 10"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-119",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 507.0, 121.0, 41.0, 22.0 ],
					"text" : "set $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-116",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "" ],
					"patching_rect" : [ 585.0, 121.0, 37.0, 22.0 ],
					"text" : "sel 0."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-98",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 538.0, 202.0, 41.0, 22.0 ],
					"text" : "set $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-106",
					"maxclass" : "number",
					"maximum" : 100,
					"minimum" : 0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 507.0, 164.0, 50.0, 22.0 ],
					"varname" : "voices"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-172",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 424.767428636550903, 1619.0, 53.0, 22.0 ],
					"text" : "format 7"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-163",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 585.0, 81.0, 35.0, 22.0 ],
					"text" : "% 1."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-87",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "", "", "", "" ],
					"patching_rect" : [ 218.000008821487427, 1842.210000000000036, 56.0, 22.0 ],
					"restore" : 					{
						"attack" : [ 0, 0, 0, 0, 0 ],
						"curve" : [ 0.0, 0.0, 0.0, 0.0, 0.0 ],
						"harmonics" : [ 1, 1, 1, 1, 2 ],
						"level" : [ 0.009999999776483, 0.009999999776483, 0.009999999776483, 0.009999999776483, 0.009999999776483 ],
						"live.tab[1]" : [ 0.0 ],
						"pan" : [ -0.032786885245902, -0.032786885245902, -0.049180327868853, -0.049180327868853, 0.0 ],
						"release" : [ 1.0, 1.0, 1.0, 1.0, 1.0 ],
						"transposition" : [ 0, 0, 0, 0, 0 ],
						"voices" : [ 5 ],
						"voices[1]" : [ 5 ]
					}
,
					"text" : "autopattr",
					"varname" : "u349002474"
				}

			}
, 			{
				"box" : 				{
					"active" : 					{
						"live.tab[1]" : 0,
						"voices" : 0,
						"voices[1]" : 0
					}
,
					"id" : "obj-34",
					"interp" : 					{
						"voices" : [ 0, 0.0 ],
						"voices[1]" : [ 0, 0.0 ]
					}
,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 123.760000000000005, 1842.210000000000036, 73.0, 22.0 ],
					"saved_object_attributes" : 					{
						"client_rect" : [ 100, 172, 720, 374 ],
						"parameter_enable" : 0,
						"parameter_mappable" : 0,
						"storage_rect" : [ 100, 172, 852, 490 ]
					}
,
					"text" : "pattrstorage",
					"varname" : "u646005219"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-223",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 728.000021696090698, 1762.941797256469727, 85.093006134033203, 22.0 ],
					"text" : "dac~ 1 2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-222",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 257.112914323806763, 1667.591471314430237, 41.0, 20.0 ],
					"text" : "recall "
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-221",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 61.797757744789124, 1671.597675979137421, 39.0, 20.0 ],
					"text" : "store "
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-199",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 253.623190522193909, 214.49275541305542, 151.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 142.138882890343666, 328.050426840782166, 39.722234219312668, 20.0 ],
					"text" : "KB"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-194",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 27.536232113838196, 1595.65218722820282, 24.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 143.749994516372681, 304.092094421386719, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-192",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 27.536232113838196, 1636.231897711753845, 62.318841099739075, 22.0 ],
					"text" : "+"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-191",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 308.5, 1619.0, 55.0, 22.0 ],
					"text" : "max 100"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-189",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 192.900546550750732, 1623.188419342041016, 48.0, 22.0 ],
					"text" : "max 11"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-175",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "int" ],
					"patching_rect" : [ 218.000008821487427, 1590.322650790214539, 32.0, 22.0 ],
					"text" : "t b 2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-174",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 176.0, 1738.709754109382629, 52.0, 22.0 ],
					"text" : "switch 2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-173",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 91.5, 1738.709754109382629, 52.0, 22.0 ],
					"text" : "switch 2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-168",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 209.0, 1709.0, 42.0, 22.0 ],
					"text" : "+ 100."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-167",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 124.5, 1704.301150441169739, 39.0, 22.0 ],
					"text" : "+ 100"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-155",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "int" ],
					"patching_rect" : [ 313.978508472442627, 1575.268886685371399, 32.0, 22.0 ],
					"text" : "t b 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-154",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 369.767428636550903, 1619.0, 53.0, 22.0 ],
					"text" : "format 0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-152",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 242.028987526893616, 1623.188419342041016, 53.0, 22.0 ],
					"text" : "format 4"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-146",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "" ],
					"patching_rect" : [ 251.612914323806763, 1550.039999999999964, 50.0, 22.0 ],
					"text" : "select 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-137",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"patching_rect" : [ 313.541654706001282, 1403.488321900367737, 29.5, 22.0 ],
					"text" : "t l b"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-136",
					"linecount" : 3,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 116.129037380218506, 246.236570000648499, 151.0, 47.0 ],
					"presentation" : 1,
					"presentation_linecount" : 5,
					"presentation_rect" : [ 85.416663408279419, 328.050426840782166, 55.072464227676392, 74.0 ],
					"text" : "KB NOTE RECALL\n   \n "
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-134",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 202.150546550750732, 1478.494688868522644, 29.5, 22.0 ],
					"text" : "-1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-131",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 251.612914323806763, 1466.666731357574463, 24.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 89.583329916000366, 303.050427794456482, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-126",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 202.150546550750732, 1511.828023672103882, 32.0, 22.0 ],
					"text" : "gate"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-124",
					"linecount" : 3,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 341.935498952865601, 232.258074760437012, 151.0, 47.0 ],
					"presentation" : 1,
					"presentation_linecount" : 3,
					"presentation_rect" : [ 19.7916659116745, 328.050426840782166, 60.0, 47.0 ],
					"text" : "RECALL\n   \n "
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-122",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 259.139796376228333, 229.032268166542053, 151.0, 33.0 ],
					"presentation" : 1,
					"presentation_linecount" : 2,
					"presentation_rect" : [ 170.833326816558838, 328.050426840782166, 60.0, 33.0 ],
					"text" : "STORE   \n "
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-99",
					"maxclass" : "flonum",
					"maximum" : 100.0,
					"minimum" : 0.0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 202.150546550750732, 1666.591471314430237, 50.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 19.7916659116745, 304.092094421386719, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-100",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 175.500008821487427, 1774.193626642227173, 85.0, 22.0 ],
					"text" : "prepend recall",
					"varname" : "u317000893[2]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-101",
					"maxclass" : "number",
					"maximum" : 100,
					"minimum" : 0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 113.9784996509552, 1665.591471314430237, 50.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 167.708326935768127, 303.050427794456482, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-103",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 84.946240305900574, 1774.193626642227173, 83.0, 22.0 ],
					"text" : "prepend store",
					"varname" : "u317000893[1]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-91",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 200.000008821487427, 1541.935551881790161, 36.0, 22.0 ],
					"text" : "% 12"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-75",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 549.0, 1619.0, 65.0, 22.0 ],
					"text" : "debug_me"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-86",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 339.0, 216.0, 150.0, 20.0 ],
					"text" : "don't use 0s for now!"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-83",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "float" ],
					"patching_rect" : [ 1440.630032181739807, 395.180737495422363, 29.5, 22.0 ],
					"text" : "t b f"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-65",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 840.120110094547272, 180.0, 40.0, 22.0 ],
					"text" : "size 4"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-61",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1129.0, 194.0, 40.0, 22.0 ],
					"text" : "size 4"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-104",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1025.453446745872498, 222.255805969238281, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-102",
					"linecount" : 9,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 784.620110094547272, 497.774215459823608, 151.0, 127.0 ],
					"text" : "this should connect to R input. however, when number_of_synths gets changed, i get a stack overflow. I can disconnect it, set synths, reconnect it, and it works. and i can bang it or both and it works. something the"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-89",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 75.862067699432373, 1063.21837306022644, 150.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 136.0, 732.0, 62.06896448135376, 20.0 ],
					"text" : "gap (ms)"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-78",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 303.291654706001282, 1082.0, 50.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 137.0, 755.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-33",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1031.453446745872498, 537.647081255912781, 93.0, 22.0 ],
					"saved_object_attributes" : 					{
						"filename" : "formatTime.js",
						"parameter_enable" : 0
					}
,
					"text" : "js formatTime.js"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-16",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 573.25, 531.0, 93.0, 22.0 ],
					"saved_object_attributes" : 					{
						"filename" : "formatTime.js",
						"parameter_enable" : 0
					}
,
					"text" : "js formatTime.js"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-90",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 9,
							"minor" : 0,
							"revision" : 5,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 132.0, 193.0, 298.0, 575.0 ],
						"gridsize" : [ 15.0, 15.0 ],
						"boxes" : [ 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-1",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 161.0, 225.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-65",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 261.0, 115.0, 65.0, 22.0 ],
									"text" : "debug_me"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-34",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 201.0, 81.0, 108.0, 22.0 ],
									"text" : "prepend set_time2"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-33",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 60.0, 85.0, 108.0, 22.0 ],
									"text" : "prepend set_time1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-16",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 53.0, 164.0, 134.0, 22.0 ],
									"saved_object_attributes" : 									{
										"filename" : "enforce_timepoints.js",
										"parameter_enable" : 0
									}
,
									"text" : "js enforce_timepoints.js"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-86",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 60.0, 21.0, 30.0, 30.0 ],
									"varname" : "u015009219"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-87",
									"index" : 2,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 201.0, 21.0, 30.0, 30.0 ],
									"varname" : "u377009221"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"source" : [ "obj-16", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-16", 0 ],
									"source" : [ "obj-33", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-16", 0 ],
									"source" : [ "obj-34", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-16", 0 ],
									"source" : [ "obj-65", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-33", 0 ],
									"source" : [ "obj-86", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-34", 0 ],
									"source" : [ "obj-87", 0 ]
								}

							}
 ],
						"originid" : "pat-8"
					}
,
					"patching_rect" : [ 782.120110094547272, 468.564543962478638, 155.0, 22.0 ],
					"text" : "p ASetsMinimumValueForR"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-81",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1159.90693461894989, 503.5, 42.0, 21.0 ],
					"text" : "index"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-82",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1105.453446745872498, 502.5, 53.0, 23.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-70",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 687.666685700416565, 538.0, 42.0, 21.0 ],
					"text" : "index"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-71",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 682.166685700416565, 507.0, 53.0, 23.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-64",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 846.0, 938.0, 85.0, 22.0 ],
					"text" : "prepend curve"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-58",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 939.976709961891174, 938.0, 41.0, 22.0 ],
					"text" : "set $1"
				}

			}
, 			{
				"box" : 				{
					"contdata" : 1,
					"id" : "obj-54",
					"maxclass" : "multislider",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 890.976709961891174, 713.0, 139.0, 122.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 808.0, 646.0, 139.0, 122.0 ],
					"setstyle" : 1,
					"signed" : 1,
					"size" : 5,
					"slidercolor" : [ 0.982667446136475, 0.0, 0.113207086920738, 1.0 ],
					"spacing" : 37,
					"thickness" : 16,
					"varname" : "curve"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 20.0,
					"id" : "obj-37",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 939.976709961891174, 993.0, 122.0, 29.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 794.0, 779.0, 134.5, 29.0 ],
					"text" : "0.00",
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-39",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 9,
							"minor" : 0,
							"revision" : 5,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 0.0, 0.0, 1000.0, 780.0 ],
						"gridsize" : [ 15.0, 15.0 ],
						"boxes" : [ 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 13.0,
									"id" : "obj-10",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 157.0, 253.0, 42.0, 21.0 ],
									"text" : "index"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 13.0,
									"id" : "obj-7",
									"maxclass" : "number",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 153.0, 232.0, 53.0, 23.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 13.0,
									"id" : "obj-4",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 50.0, 186.0, 97.0, 23.0 ],
									"text" : "zl mth"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 13.0,
									"id" : "obj-3",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 73.0, 149.0, 74.0, 23.0 ],
									"text" : "zl compare"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 13.0,
									"id" : "obj-1",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 50.0, 100.0, 103.0, 23.0 ],
									"text" : "t l l l"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-8624",
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
									"id" : "obj-8625",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 50.0, 334.0, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 0 ],
									"source" : [ "obj-1", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 1 ],
									"source" : [ "obj-1", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 1 ],
									"order" : 1,
									"source" : [ "obj-3", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-7", 0 ],
									"midpoints" : [ 137.5, 179.0, 162.5, 179.0 ],
									"order" : 0,
									"source" : [ "obj-3", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8625", 0 ],
									"source" : [ "obj-4", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"source" : [ "obj-8624", 0 ]
								}

							}
 ],
						"originid" : "pat-10"
					}
,
					"patching_rect" : [ 904.286778092384338, 877.333359479904175, 120.0, 22.0 ],
					"text" : "p displayEditedValue"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 24.0,
					"id" : "obj-32",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 810.953441977500916, 762.666689395904541, 97.333336234092712, 33.0 ],
					"presentation" : 1,
					"presentation_linecount" : 5,
					"presentation_rect" : [ 773.02272754907608, 636.0, 28.0, 141.0 ],
					"text" : "CURVE"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-183",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1054.732555270195007, 1897.674350738525391, 70.0, 33.0 ],
					"style" : "helpfile_label",
					"text" : "imaginary output"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-184",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 983.802325248718262, 1897.674350738525391, 46.0, 33.0 ],
					"style" : "helpfile_label",
					"text" : "real output"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-185",
					"linecount" : 2,
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1092.244147539138794, 1977.333392262458801, 103.0, 38.0 ],
					"text" : "4 128, range 0 10, drawstyle 1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-186",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "signal" ],
					"patching_rect" : [ 974.5, 1958.139464855194092, 89.5, 23.0 ],
					"text" : "cartopol~"
				}

			}
, 			{
				"box" : 				{
					"calccount" : 4,
					"drawstyle" : 1,
					"id" : "obj-187",
					"maxclass" : "scope~",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 974.418569803237915, 2039.534810781478882, 449.999983906745911, 108.139531016349792 ],
					"range" : [ 0.0, 10.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-29",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "signal", "signal", "signal" ],
					"patching_rect" : [ 974.5, 1877.906909584999084, 160.0, 23.0 ],
					"text" : "fft~ 512 512 0"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 15.0,
					"id" : "obj-181",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 44.446240305900574, 1087.499958515167236, 110.0, 23.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 133.533214792609215, 831.0, 46.0, 23.0 ],
					"text" : "Loop "
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-180",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 160.465110540390015, 1099.999960660934448, 24.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 137.0, 779.0, 50.0, 50.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-178",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 281.609190702438354, 1114.94251012802124, 29.5, 22.0 ],
					"text" : "+ 0."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-177",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 169.0, 1137.209261655807495, 73.0, 22.0 ],
					"text" : "metro 5000."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-158",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 927.906943559646606, 1308.139488101005554, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-156",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "int" ],
					"patching_rect" : [ 670.930208563804626, 116.0, 29.5, 22.0 ],
					"text" : "t b i"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-153",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1177.90693461894989, 931.395315527915955, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-151",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1434.88366961479187, 1449.999948143959045, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-149",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 2016.278997659683228, 1611.627849340438843, 29.5, 22.0 ],
					"text" : "- 0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-148",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "bang" ],
					"patching_rect" : [ 2016.278997659683228, 1661.6278475522995, 29.5, 22.0 ],
					"text" : "t i b"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-145",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 2016.278997659683228, 1579.069710969924927, 65.0, 22.0 ],
					"text" : "r midi_root"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-144",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 1977.906906008720398, 1743.02319347858429, 29.5, 22.0 ],
					"text" : "+ 0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-143",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 62.0, 1291.666617393493652, 67.0, 22.0 ],
					"text" : "s midi_root"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-142",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 803.488343358039856, 1533.720875382423401, 78.0, 22.0 ],
					"text" : "set_mode $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-139",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 9,
							"minor" : 0,
							"revision" : 5,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 0.0, 0.0, 1000.0, 780.0 ],
						"gridsize" : [ 15.0, 15.0 ],
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-136",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 158.651160836219788, 153.350139021873474, 100.0, 22.0 ],
									"text" : "setminmax 0 127"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-135",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 176.093020677566528, 108.001303434371948, 93.0, 22.0 ],
									"text" : "setminmax 1 50"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-133",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 3,
									"outlettype" : [ "bang", "bang", "" ],
									"patching_rect" : [ 50.0, 226.5013427734375, 60.0, 22.0 ],
									"text" : "select 1 2"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-137",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 50.000004281700171, 39.999999773437594, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-138",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 161.372074281700179, 316.502685773437406, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-135", 0 ],
									"source" : [ "obj-133", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-136", 0 ],
									"source" : [ "obj-133", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-138", 0 ],
									"source" : [ "obj-135", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-138", 0 ],
									"source" : [ "obj-136", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-133", 0 ],
									"source" : [ "obj-137", 0 ]
								}

							}
 ],
						"originid" : "pat-12"
					}
,
					"patching_rect" : [ 984.883685708045959, 1191.860422492027283, 95.0, 22.0 ],
					"text" : "p change_range"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-132",
					"linecount" : 2,
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1398.837159276008606, 1133.720889687538147, 52.0, 35.0 ],
					"text" : "26 9 19 19 17"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-130",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 9,
							"minor" : 0,
							"revision" : 5,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 59.0, 106.0, 1000.0, 780.0 ],
						"gridsize" : [ 15.0, 15.0 ],
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-4",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "int" ],
									"patching_rect" : [ 50.0, 118.0, 29.5, 22.0 ],
									"text" : "t b i"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-58",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 69.0, 158.0, 77.0, 22.0 ],
									"text" : "prepend size"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-54",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 75.0, 115.0, 22.0 ],
									"text" : "r number_of_synths"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-124",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 50.0, 215.0, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-124", 0 ],
									"source" : [ "obj-4", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-58", 0 ],
									"source" : [ "obj-4", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"source" : [ "obj-54", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-124", 0 ],
									"source" : [ "obj-58", 0 ]
								}

							}
 ],
						"originid" : "pat-14"
					}
,
					"patching_rect" : [ 1856.976677775382996, 1031.395311951637268, 183.0, 22.0 ],
					"text" : "p set_number_of_synths.maxpat"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-129",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 9,
							"minor" : 0,
							"revision" : 5,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 59.0, 106.0, 1000.0, 780.0 ],
						"gridsize" : [ 15.0, 15.0 ],
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-4",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "int" ],
									"patching_rect" : [ 50.0, 118.0, 29.5, 22.0 ],
									"text" : "t b i"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-58",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 69.0, 158.0, 77.0, 22.0 ],
									"text" : "prepend size"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-54",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 75.0, 115.0, 22.0 ],
									"text" : "r number_of_synths"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-124",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 50.0, 215.0, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-124", 0 ],
									"source" : [ "obj-4", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-58", 0 ],
									"source" : [ "obj-4", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"source" : [ "obj-54", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-124", 0 ],
									"source" : [ "obj-58", 0 ]
								}

							}
 ],
						"originid" : "pat-16"
					}
,
					"patching_rect" : [ 638.666685700416565, 680.666688442230225, 140.0, 22.0 ],
					"text" : "p set_number_of_synths"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-128",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 9,
							"minor" : 0,
							"revision" : 5,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 34.0, 34.0, 1000.0, 780.0 ],
						"gridsize" : [ 15.0, 15.0 ],
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-58",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 133.0, 77.0, 22.0 ],
									"text" : "prepend size"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-54",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 100.0, 115.0, 22.0 ],
									"text" : "r number_of_synths"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-124",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 50.0, 215.0, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-58", 0 ],
									"source" : [ "obj-54", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-124", 0 ],
									"source" : [ "obj-58", 0 ]
								}

							}
 ],
						"originid" : "pat-18"
					}
,
					"patching_rect" : [ 1498.0, 1438.0, 183.0, 22.0 ],
					"text" : "p set_number_of_synths.maxpat"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-127",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 9,
							"minor" : 0,
							"revision" : 5,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 59.0, 106.0, 1000.0, 780.0 ],
						"gridsize" : [ 15.0, 15.0 ],
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-4",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "int" ],
									"patching_rect" : [ 50.0, 118.0, 29.5, 22.0 ],
									"text" : "t b i"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-58",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 69.0, 158.0, 77.0, 22.0 ],
									"text" : "prepend size"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-54",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 75.0, 115.0, 22.0 ],
									"text" : "r number_of_synths"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-124",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 50.0, 215.0, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-124", 0 ],
									"source" : [ "obj-4", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-58", 0 ],
									"source" : [ "obj-4", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"source" : [ "obj-54", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-124", 0 ],
									"source" : [ "obj-58", 0 ]
								}

							}
 ],
						"originid" : "pat-20"
					}
,
					"patching_rect" : [ 1106.5, 1052.5, 183.0, 22.0 ],
					"text" : "p set_number_of_synths.maxpat"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-125",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 9,
							"minor" : 0,
							"revision" : 5,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 1526.0, 161.0, 1000.0, 780.0 ],
						"gridsize" : [ 15.0, 15.0 ],
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-4",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "int" ],
									"patching_rect" : [ 50.0, 118.0, 29.5, 22.0 ],
									"text" : "t b i"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-58",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 69.0, 158.0, 77.0, 22.0 ],
									"text" : "prepend size"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-54",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 75.0, 115.0, 22.0 ],
									"text" : "r number_of_synths"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-124",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 50.0, 215.0, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-124", 0 ],
									"source" : [ "obj-4", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-58", 0 ],
									"source" : [ "obj-4", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"source" : [ "obj-54", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-124", 0 ],
									"source" : [ "obj-58", 0 ]
								}

							}
 ],
						"originid" : "pat-22"
					}
,
					"patching_rect" : [ 701.162765622138977, 223.255805969238281, 183.0, 22.0 ],
					"text" : "p set_number_of_synths.maxpat"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-123",
					"linecount" : 4,
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 2780.934276819229126, 1761.627843976020813, 62.0, 62.0 ],
					"text" : "7 22 21 8 7 4 3 3 2 14 9 16 9 2 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-120",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 2559.374902367591858, 1637.209243774414062, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-118",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"patching_rect" : [ 2579.771493315696716, 1667.441800832748413, 67.0, 22.0 ],
					"text" : "opendialog"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-108",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1777.906913161277771, 1452.325529456138611, 93.0, 22.0 ],
					"text" : "setminmax 0 50"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-107",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1710.465055108070374, 1423.790647149085999, 100.0, 22.0 ],
					"text" : "setminmax 0 127"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-105",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 2228.608715176582336, 1888.541594624519348, 141.0, 22.0 ],
					"text" : "prepend set_frequencies"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-96",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 2289.025379538536072, 1771.874932408332825, 115.0, 22.0 ],
					"text" : "r number_of_synths"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-95",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 2228.608715176582336, 1835.416596651077271, 61.0, 22.0 ],
					"text" : "zl.group 2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-94",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 1939.976677775382996, 1656.372038006782532, 47.0, 22.0 ],
					"text" : "zl.iter 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-93",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 996.116244554519653, 1466.279017329216003, 41.0, 22.0 ],
					"text" : "set $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-88",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 915.116246342658997, 1496.511574387550354, 29.5, 22.0 ],
					"text" : "+ 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-85",
					"maxclass" : "slider",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 2115.818021535873413, 1538.372038006782532, 20.0, 140.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 20.0,
					"id" : "obj-79",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1283.720884323120117, 1665.116219520568848, 211.0, 51.0 ],
					"text" : "set_harmonics 1 1 1 1 2",
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-80",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 965.116244554519653, 1601.162733435630798, 72.0, 22.0 ],
					"text" : "prepend set"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-77",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 956.976709961891174, 1533.720875382423401, 52.0, 22.0 ],
					"text" : "switch 2"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 16.0,
					"id" : "obj-121",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 2207.678483366966248, 1476.744133234024048, 256.0, 24.0 ],
					"text" : "scale from Max's Scala archive"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 16.0,
					"id" : "obj-76",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 2703.027302861213684, 1637.209243774414062, 268.0, 24.0 ],
					"text" : "custom .scl file"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-35",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 2212.329645991325378, 1499.999946355819702, 129.0, 22.0 ],
					"text" : "scalename pelog_me3"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-46",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 2628.124899744987488, 1761.627843976020813, 84.0, 22.0 ],
					"text" : "prepend scale"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-48",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 2671.499899387359619, 1681.249935865402222, 33.0, 22.0 ],
					"text" : "view"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-56",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 2637.499899387359619, 1725.169512033462524, 101.0, 22.0 ],
					"text" : "pdm.scala.parser"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-59",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 2137.911044001579285, 1743.02319347858429, 32.0, 22.0 ],
					"text" : "mtof"
				}

			}
, 			{
				"box" : 				{
					"attr" : "base",
					"id" : "obj-63",
					"maxclass" : "attrui",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 2212.499915599822998, 1621.874938130378723, 487.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 801.0, -25.0, 202.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-28",
					"maxclass" : "live.tab",
					"num_lines_patching" : 2,
					"num_lines_presentation" : 2,
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 911.976709961891174, 1371.988321900367737, 97.0, 85.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 700.0, -30.0, 97.0, 85.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_enum" : [ "HARMONICS", "SCALE DEGREES" ],
							"parameter_longname" : "live.tab[1]",
							"parameter_mmax" : 1,
							"parameter_modmode" : 0,
							"parameter_shortname" : "live.tab[1]",
							"parameter_type" : 2,
							"parameter_unitstyle" : 9
						}

					}
,
					"varname" : "live.tab[1]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-21",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1404.65111255645752, 646.483142375946045, 65.0, 22.0 ],
					"text" : "debug_me"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-26",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 4,
					"outlettype" : [ "int", "int", "int", "int" ],
					"patching_rect" : [ 333.0, 949.999963760375977, 64.0, 23.0 ],
					"text" : "key"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-27",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "" ],
					"patching_rect" : [ 333.0, 979.166629314422607, 64.0, 23.0 ],
					"text" : "select 32"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-72",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 1032.453446745872498, 496.774215459823608, 29.5, 22.0 ],
					"text" : "* 1."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-73",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1031.453446745872498, 560.215078473091125, 41.0, 22.0 ],
					"text" : "set $1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 20.0,
					"id" : "obj-74",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1031.453446745872498, 600.000025033950806, 122.0, 29.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1090.0, 574.0, 134.5, 29.0 ],
					"text" : "1 ms",
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-66",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 610.75, 497.0, 29.5, 22.0 ],
					"text" : "* 1."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-67",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 605.0, 560.215078473091125, 41.0, 22.0 ],
					"text" : "set $1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 20.0,
					"id" : "obj-68",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 605.0, 587.096800088882446, 122.0, 29.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 865.0, 574.0, 134.5, 29.0 ],
					"text" : "0 ms",
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-62",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 738.709710001945496, 636.781598567962646, 88.0, 22.0 ],
					"text" : "prepend attack"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-57",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1194.5, 615.0, 95.0, 22.0 ],
					"text" : "prepend release"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-55",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1662.65066385269165, 496.385560512542725, 147.0, 22.0 ],
					"text" : "prepend set_totalDuration"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-43",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1381.927761912345886, 279.518082618713379, 61.0, 22.0 ],
					"text" : "set $1 ms"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 20.0,
					"id" : "obj-45",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1381.927761912345886, 331.325313448905945, 122.0, 29.0 ],
					"text" : "3913.99 ms",
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-36",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 1338.198842287063599, 212.048200607299805, 29.5, 22.0 ],
					"text" : "/ 1."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-23",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1252.941228747367859, 296.470600605010986, 93.0, 22.0 ],
					"saved_object_attributes" : 					{
						"filename" : "formatTime.js",
						"parameter_enable" : 0
					}
,
					"text" : "js formatTime.js"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-20",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1274.698842287063599, 369.879531741142273, 77.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 175.0, 234.0, 78.823532700538635, 20.0 ],
					"text" : "3913.99 ms"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 24.0,
					"id" : "obj-18",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1527.710899829864502, 3.441653728485107, 153.0, 33.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 22.120099544525146, 165.624993681907654, 151.724135398864746, 33.0 ],
					"text" : "DURATION"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-11",
					"maxclass" : "meter~",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 831.581396222114563, 1774.418541193008423, 80.0, 13.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-4",
					"maxclass" : "meter~",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 617.627915501594543, 1767.441797256469727, 80.0, 13.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 20.0,
					"id" : "obj-15",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1125.581355094909668, 1282.534837603569031, 194.915258884429932, 29.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 436.0, 308.0, 287.0, 29.0 ],
					"text" : "1 1 1 1 2",
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-14",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1121.0, 1249.999955296516418, 72.0, 22.0 ],
					"text" : "prepend set"
				}

			}
, 			{
				"box" : 				{
					"contdata" : 1,
					"id" : "obj-13",
					"ignoreclick" : 1,
					"maxclass" : "multislider",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1484.883667826652527, 1496.511574387550354, 134.0, 125.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1086.0, 105.0, 235.0, 193.0 ],
					"setminmax" : [ 0.0, 127.0 ],
					"settype" : 0,
					"size" : 5,
					"slidercolor" : [ 0.831372549019608, 0.619607843137255, 0.952941176470588, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 24.0,
					"id" : "obj-12",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1512.790643572807312, 1412.790647149085999, 116.800001740455627, 33.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1155.0, 57.0, 106.060613393783569, 33.0 ],
					"text" : "RESULT"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 20.0,
					"id" : "obj-7",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1610.139475584030151, 1317.441813349723816, 148.0, 29.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1080.0, 300.0, 246.0, 29.0 ],
					"text" : "1 1 1 1 2",
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-6",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1502.98831832408905, 1289.534837603569031, 72.0, 22.0 ],
					"text" : "prepend set"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-5",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1476.744133234024048, 1260.0, 145.0, 22.0 ],
					"saved_object_attributes" : 					{
						"filename" : "performTransposition.js",
						"parameter_enable" : 0
					}
,
					"text" : "js performTransposition.js"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 20.0,
					"id" : "obj-10",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 2016.278997659683228, 1315.11623203754425, 194.915258884429932, 29.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 826.0, 308.0, 249.152548313140869, 29.0 ],
					"text" : "1/1 1/1 1/1 1/1 1/1",
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-9",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 2019.767369627952576, 1265.116233825683594, 72.0, 22.0 ],
					"text" : "prepend set"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-8",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 1788.372029066085815, 1208.0, 155.0, 22.0 ],
					"saved_object_attributes" : 					{
						"filename" : "mapRatioTransposition.js",
						"parameter_enable" : 0
					}
,
					"text" : "js mapRatioTransposition.js"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 24.0,
					"id" : "obj-2",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1856.976677775382996, 985.209267020225525, 213.0, 33.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 854.0, 57.0, 207.575771927833557, 33.0 ],
					"text" : "TRANSPOSITION"
				}

			}
, 			{
				"box" : 				{
					"contdata" : 1,
					"id" : "obj-1",
					"maxclass" : "multislider",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1856.976677775382996, 1063.953450322151184, 134.0, 125.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 839.0, 105.0, 235.0, 193.0 ],
					"setminmax" : [ -4.0, 2.0 ],
					"setstyle" : 1,
					"settype" : 0,
					"signed" : 1,
					"size" : 5,
					"varname" : "transposition"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-8695",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 965.116244554519653, 1811.372029066085815, 29.5, 22.0 ],
					"text" : "+~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-8677",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 402.0, 497.0, 40.0, 22.0 ],
					"text" : "* 100."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-8672",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 176.041659951210022, 1389.583280324935913, 69.791664004325867, 20.0 ],
					"text" : "65.41 hz"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-8670",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 176.041659951210022, 1351.041615128517151, 57.0, 22.0 ],
					"text" : "set $1 hz"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-8665",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1364.0, 974.0, 134.0, 22.0 ],
					"text" : "prepend set_harmonics"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-8660",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1363.953439593315125, 1052.5, 144.0, 22.0 ],
					"saved_object_attributes" : 					{
						"filename" : "harmonicFunctions",
						"parameter_enable" : 0
					}
,
					"text" : "js harmonicFunctions"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-8647",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 704.0, 938.0, 41.0, 22.0 ],
					"text" : "set $1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 20.0,
					"id" : "obj-8648",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 704.0, 983.709267020225525, 122.0, 29.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 556.0, 772.0, 134.5, 29.0 ],
					"text" : "-0.03",
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-8649",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 9,
							"minor" : 0,
							"revision" : 5,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 0.0, 0.0, 1000.0, 780.0 ],
						"gridsize" : [ 15.0, 15.0 ],
						"boxes" : [ 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 13.0,
									"id" : "obj-10",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 157.0, 253.0, 42.0, 21.0 ],
									"text" : "index"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 13.0,
									"id" : "obj-7",
									"maxclass" : "number",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 153.0, 232.0, 53.0, 23.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 13.0,
									"id" : "obj-4",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 50.0, 186.0, 97.0, 23.0 ],
									"text" : "zl mth"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 13.0,
									"id" : "obj-3",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 73.0, 149.0, 74.0, 23.0 ],
									"text" : "zl compare"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 13.0,
									"id" : "obj-1",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 50.0, 100.0, 103.0, 23.0 ],
									"text" : "t l l l"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-8624",
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
									"id" : "obj-8625",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 50.0, 334.0, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 0 ],
									"source" : [ "obj-1", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 1 ],
									"source" : [ "obj-1", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 1 ],
									"order" : 1,
									"source" : [ "obj-3", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-7", 0 ],
									"midpoints" : [ 137.5, 179.0, 162.5, 179.0 ],
									"order" : 0,
									"source" : [ "obj-3", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8625", 0 ],
									"source" : [ "obj-4", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"source" : [ "obj-8624", 0 ]
								}

							}
 ],
						"originid" : "pat-26"
					}
,
					"patching_rect" : [ 673.0, 873.0, 120.0, 22.0 ],
					"text" : "p displayEditedValue"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-8643",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 9,
							"minor" : 0,
							"revision" : 5,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 59.0, 106.0, 1000.0, 780.0 ],
						"gridsize" : [ 15.0, 15.0 ],
						"boxes" : [ 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-2",
									"index" : 2,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 154.0, 338.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 13.0,
									"id" : "obj-4",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 50.0, 186.0, 97.0, 23.0 ],
									"text" : "zl mth"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 13.0,
									"id" : "obj-3",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 73.0, 149.0, 74.0, 23.0 ],
									"text" : "zl compare"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 13.0,
									"id" : "obj-1",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 50.0, 100.0, 103.0, 23.0 ],
									"text" : "t l l l"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-8624",
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
									"id" : "obj-8625",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 50.0, 334.0, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 0 ],
									"source" : [ "obj-1", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 1 ],
									"source" : [ "obj-1", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"order" : 0,
									"source" : [ "obj-3", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 1 ],
									"order" : 1,
									"source" : [ "obj-3", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8625", 0 ],
									"source" : [ "obj-4", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"source" : [ "obj-8624", 0 ]
								}

							}
 ],
						"originid" : "pat-28"
					}
,
					"patching_rect" : [ 1032.453446745872498, 468.564543962478638, 120.0, 22.0 ],
					"text" : "p displayEditedValue"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-8635",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 402.0, 531.0, 55.0, 22.0 ],
					"text" : "set $1 %"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 20.0,
					"id" : "obj-8636",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 402.0, 566.0, 122.0, 29.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 554.0, 574.0, 134.5, 29.0 ],
					"text" : "1.00 %",
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-8637",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 9,
							"minor" : 0,
							"revision" : 5,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 59.0, 106.0, 1000.0, 780.0 ],
						"gridsize" : [ 15.0, 15.0 ],
						"boxes" : [ 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 13.0,
									"id" : "obj-10",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 157.0, 253.0, 42.0, 21.0 ],
									"text" : "index"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 13.0,
									"id" : "obj-7",
									"maxclass" : "number",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 153.0, 232.0, 53.0, 23.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 13.0,
									"id" : "obj-4",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 50.0, 186.0, 97.0, 23.0 ],
									"text" : "zl mth"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 13.0,
									"id" : "obj-3",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 73.0, 149.0, 74.0, 23.0 ],
									"text" : "zl compare"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 13.0,
									"id" : "obj-1",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 50.0, 100.0, 103.0, 23.0 ],
									"text" : "t l l l"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-8624",
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
									"id" : "obj-8625",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 50.0, 334.0, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 0 ],
									"source" : [ "obj-1", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 1 ],
									"source" : [ "obj-1", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 1 ],
									"order" : 1,
									"source" : [ "obj-3", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-7", 0 ],
									"midpoints" : [ 137.5, 179.0, 162.5, 179.0 ],
									"order" : 0,
									"source" : [ "obj-3", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8625", 0 ],
									"source" : [ "obj-4", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"source" : [ "obj-8624", 0 ]
								}

							}
 ],
						"originid" : "pat-30"
					}
,
					"patching_rect" : [ 395.0, 455.0, 120.0, 22.0 ],
					"text" : "p displayEditedValue"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-8626",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 9,
							"minor" : 0,
							"revision" : 5,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 59.0, 106.0, 1000.0, 780.0 ],
						"gridsize" : [ 15.0, 15.0 ],
						"boxes" : [ 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-2",
									"index" : 2,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 158.0, 247.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 13.0,
									"id" : "obj-4",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 50.0, 186.0, 97.0, 23.0 ],
									"text" : "zl mth"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 13.0,
									"id" : "obj-3",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 73.0, 149.0, 74.0, 23.0 ],
									"text" : "zl compare"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 13.0,
									"id" : "obj-1",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 50.0, 100.0, 103.0, 23.0 ],
									"text" : "t l l l"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-8624",
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
									"id" : "obj-8625",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 39.0, 247.0, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 0 ],
									"source" : [ "obj-1", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 1 ],
									"source" : [ "obj-1", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"order" : 0,
									"source" : [ "obj-3", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 1 ],
									"order" : 1,
									"source" : [ "obj-3", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8625", 0 ],
									"source" : [ "obj-4", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"source" : [ "obj-8624", 0 ]
								}

							}
 ],
						"originid" : "pat-32"
					}
,
					"patching_rect" : [ 607.0, 463.541648983955383, 120.0, 22.0 ],
					"text" : "p displayEditedValue"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 15.0,
					"id" : "obj-8606",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 149.0, 1047.0, 114.0, 23.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 48.898835897445679, 831.0, 38.109192371368408, 23.0 ],
					"text" : "Play"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 24.0,
					"id" : "obj-8605",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 630.0, 25.0, 218.0, 33.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 24.20343279838562, 3.12499988079071, 201.600003004074097, 33.0 ],
					"text" : "Number of Voices"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-8604",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "signal" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 9,
							"minor" : 0,
							"revision" : 5,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 384.0, 100.0, 1094.0, 838.0 ],
						"gridsize" : [ 15.0, 15.0 ],
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-8530",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 762.0, 97.0, 125.0, 22.0 ],
									"text" : "prepend createVoices"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-8515",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 762.0, 60.0, 115.0, 22.0 ],
									"text" : "r number_of_synths"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-2040",
									"index" : 2,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 963.0, 696.0, 30.0, 30.0 ],
									"varname" : "outlet_right"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-2039",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 896.0, 696.0, 30.0, 30.0 ],
									"varname" : "outlet_left"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-30",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 970.0, 121.0, 70.0, 22.0 ],
									"text" : "clearVoices"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-173",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 970.0, 93.0, 65.0, 22.0 ],
									"text" : "debug_me"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-1",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 914.0, 144.0, 19.0, 22.0 ],
									"saved_object_attributes" : 									{
										"filename" : "createVoices.js",
										"parameter_enable" : 0
									}
,
									"text" : "js"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-8603",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 909.0, 89.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-39813",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 110.0, 50.0, 100.0, 0.0 ],
									"text" : "cycle~ 500"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-39814",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 110.0, 90.0, 100.0, 0.0 ],
									"text" : "*~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-39815",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 2,
									"outlettype" : [ "signal", "bang" ],
									"patching_rect" : [ 250.0, 50.0, 100.0, 0.0 ],
									"text" : "curve~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-39816",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 110.0, 130.0, 100.0, 0.0 ],
									"text" : "*~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-39817",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 410.0, 130.0, 100.0, 0.0 ],
									"text" : "*~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-39818",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 110.0, 250.0, 100.0, 0.0 ],
									"text" : "cycle~ 900"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-39819",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 110.0, 290.0, 100.0, 0.0 ],
									"text" : "*~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-39820",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 2,
									"outlettype" : [ "signal", "bang" ],
									"patching_rect" : [ 250.0, 250.0, 100.0, 0.0 ],
									"text" : "curve~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-39821",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 110.0, 330.0, 100.0, 0.0 ],
									"text" : "*~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-39822",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 410.0, 330.0, 100.0, 0.0 ],
									"text" : "*~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-39823",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 55.0, 400.0, 100.0, 0.0 ],
									"text" : "+~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-39824",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 410.0, 400.0, 100.0, 0.0 ],
									"text" : "+~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-39825",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 110.0, 450.0, 100.0, 0.0 ],
									"text" : "cycle~ 900"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-39826",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 110.0, 490.0, 100.0, 0.0 ],
									"text" : "*~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-39827",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 2,
									"outlettype" : [ "signal", "bang" ],
									"patching_rect" : [ 250.0, 450.0, 100.0, 0.0 ],
									"text" : "curve~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-39828",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 110.0, 530.0, 100.0, 0.0 ],
									"text" : "*~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-39829",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 410.0, 530.0, 100.0, 0.0 ],
									"text" : "*~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-39830",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 55.0, 600.0, 100.0, 0.0 ],
									"text" : "+~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-39831",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 410.0, 600.0, 100.0, 0.0 ],
									"text" : "+~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-39832",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 110.0, 650.0, 100.0, 0.0 ],
									"text" : "cycle~ 1200"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-39833",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 110.0, 690.0, 100.0, 0.0 ],
									"text" : "*~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-39834",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 2,
									"outlettype" : [ "signal", "bang" ],
									"patching_rect" : [ 250.0, 650.0, 100.0, 0.0 ],
									"text" : "curve~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-39835",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 110.0, 730.0, 100.0, 0.0 ],
									"text" : "*~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-39836",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 410.0, 730.0, 100.0, 0.0 ],
									"text" : "*~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-39837",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 55.0, 800.0, 100.0, 0.0 ],
									"text" : "+~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-39838",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 410.0, 800.0, 100.0, 0.0 ],
									"text" : "+~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-39839",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 110.0, 850.0, 100.0, 0.0 ],
									"text" : "cycle~ 1100"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-39840",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 110.0, 890.0, 100.0, 0.0 ],
									"text" : "*~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-39841",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 2,
									"outlettype" : [ "signal", "bang" ],
									"patching_rect" : [ 250.0, 850.0, 100.0, 0.0 ],
									"text" : "curve~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-39842",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 110.0, 930.0, 100.0, 0.0 ],
									"text" : "*~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-39843",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 410.0, 930.0, 100.0, 0.0 ],
									"text" : "*~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-39844",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 55.0, 1000.0, 100.0, 0.0 ],
									"text" : "+~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-39845",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 410.0, 1000.0, 100.0, 0.0 ],
									"text" : "+~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-6394",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 110.0, 50.0, 100.0, 0.0 ],
									"text" : "cycle~ 880"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-6395",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 110.0, 90.0, 100.0, 0.0 ],
									"text" : "*~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-6396",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 2,
									"outlettype" : [ "signal", "bang" ],
									"patching_rect" : [ 250.0, 50.0, 100.0, 0.0 ],
									"text" : "curve~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-6397",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 110.0, 130.0, 100.0, 0.0 ],
									"text" : "*~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-6398",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 410.0, 130.0, 100.0, 0.0 ],
									"text" : "*~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-6399",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 110.0, 250.0, 100.0, 0.0 ],
									"text" : "cycle~ 1100"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-6400",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 110.0, 290.0, 100.0, 0.0 ],
									"text" : "*~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-6401",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 2,
									"outlettype" : [ "signal", "bang" ],
									"patching_rect" : [ 250.0, 250.0, 100.0, 0.0 ],
									"text" : "curve~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-6402",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 110.0, 330.0, 100.0, 0.0 ],
									"text" : "*~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-6403",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 410.0, 330.0, 100.0, 0.0 ],
									"text" : "*~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-6404",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 55.0, 400.0, 100.0, 0.0 ],
									"text" : "+~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-6405",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 410.0, 400.0, 100.0, 0.0 ],
									"text" : "+~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-6406",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 110.0, 450.0, 100.0, 0.0 ],
									"text" : "cycle~ 660"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-6407",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 110.0, 490.0, 100.0, 0.0 ],
									"text" : "*~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-6408",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 2,
									"outlettype" : [ "signal", "bang" ],
									"patching_rect" : [ 250.0, 450.0, 100.0, 0.0 ],
									"text" : "curve~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-6409",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 110.0, 530.0, 100.0, 0.0 ],
									"text" : "*~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-6410",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 410.0, 530.0, 100.0, 0.0 ],
									"text" : "*~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-6411",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 55.0, 600.0, 100.0, 0.0 ],
									"text" : "+~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-6412",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 410.0, 600.0, 100.0, 0.0 ],
									"text" : "+~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-6413",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 110.0, 650.0, 100.0, 0.0 ],
									"text" : "cycle~ 770"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-6414",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 110.0, 690.0, 100.0, 0.0 ],
									"text" : "*~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-6415",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 2,
									"outlettype" : [ "signal", "bang" ],
									"patching_rect" : [ 250.0, 650.0, 100.0, 0.0 ],
									"text" : "curve~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-6416",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 110.0, 730.0, 100.0, 0.0 ],
									"text" : "*~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-6417",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 410.0, 730.0, 100.0, 0.0 ],
									"text" : "*~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-6418",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 55.0, 800.0, 100.0, 0.0 ],
									"text" : "+~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-6419",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 410.0, 800.0, 100.0, 0.0 ],
									"text" : "+~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-6420",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 110.0, 850.0, 100.0, 0.0 ],
									"text" : "cycle~ 220"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-6421",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 110.0, 890.0, 100.0, 0.0 ],
									"text" : "*~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-6422",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 2,
									"outlettype" : [ "signal", "bang" ],
									"patching_rect" : [ 250.0, 850.0, 100.0, 0.0 ],
									"text" : "curve~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-6423",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 110.0, 930.0, 100.0, 0.0 ],
									"text" : "*~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-6424",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 410.0, 930.0, 100.0, 0.0 ],
									"text" : "*~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-6425",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 55.0, 1000.0, 100.0, 0.0 ],
									"text" : "+~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-6426",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 410.0, 1000.0, 100.0, 0.0 ],
									"text" : "+~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-32864",
									"linecount" : 2,
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 110.0, 50.0, 100.0, 0.0 ],
									"text" : "cycle~ 1308.127826"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-32865",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 110.0, 90.0, 100.0, 0.0 ],
									"text" : "*~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-32866",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 2,
									"outlettype" : [ "signal", "bang" ],
									"patching_rect" : [ 250.0, 50.0, 100.0, 0.0 ],
									"text" : "curve~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-32867",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 110.0, 130.0, 100.0, 0.0 ],
									"text" : "*~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-32868",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 410.0, 130.0, 100.0, 0.0 ],
									"text" : "*~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-32869",
									"linecount" : 2,
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 110.0, 250.0, 100.0, 0.0 ],
									"text" : "cycle~ 425.141543"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-32870",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 110.0, 290.0, 100.0, 0.0 ],
									"text" : "*~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-32871",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 2,
									"outlettype" : [ "signal", "bang" ],
									"patching_rect" : [ 250.0, 250.0, 100.0, 0.0 ],
									"text" : "curve~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-32872",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 110.0, 330.0, 100.0, 0.0 ],
									"text" : "*~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-32873",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 410.0, 330.0, 100.0, 0.0 ],
									"text" : "*~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-32874",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 55.0, 400.0, 100.0, 0.0 ],
									"text" : "+~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-32875",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 410.0, 400.0, 100.0, 0.0 ],
									"text" : "+~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-32876",
									"linecount" : 2,
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 110.0, 450.0, 100.0, 0.0 ],
									"text" : "cycle~ 343.383554"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-32877",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 110.0, 490.0, 100.0, 0.0 ],
									"text" : "*~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-32878",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 2,
									"outlettype" : [ "signal", "bang" ],
									"patching_rect" : [ 250.0, 450.0, 100.0, 0.0 ],
									"text" : "curve~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-32879",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 110.0, 530.0, 100.0, 0.0 ],
									"text" : "*~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-32880",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 410.0, 530.0, 100.0, 0.0 ],
									"text" : "*~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-32881",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 55.0, 600.0, 100.0, 0.0 ],
									"text" : "+~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-32882",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 410.0, 600.0, 100.0, 0.0 ],
									"text" : "+~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-32883",
									"linecount" : 2,
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 110.0, 650.0, 100.0, 0.0 ],
									"text" : "cycle~ 376.08675"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-32884",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 110.0, 690.0, 100.0, 0.0 ],
									"text" : "*~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-32885",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 2,
									"outlettype" : [ "signal", "bang" ],
									"patching_rect" : [ 250.0, 650.0, 100.0, 0.0 ],
									"text" : "curve~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-32886",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 110.0, 730.0, 100.0, 0.0 ],
									"text" : "*~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-32887",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 410.0, 730.0, 100.0, 0.0 ],
									"text" : "*~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-32888",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 55.0, 800.0, 100.0, 0.0 ],
									"text" : "+~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-32889",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 410.0, 800.0, 100.0, 0.0 ],
									"text" : "+~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-32890",
									"linecount" : 2,
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 110.0, 850.0, 100.0, 0.0 ],
									"text" : "cycle~ 61.318492"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-32891",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 110.0, 890.0, 100.0, 0.0 ],
									"text" : "*~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-32892",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 2,
									"outlettype" : [ "signal", "bang" ],
									"patching_rect" : [ 250.0, 850.0, 100.0, 0.0 ],
									"text" : "curve~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-32893",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 110.0, 930.0, 100.0, 0.0 ],
									"text" : "*~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-32894",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 410.0, 930.0, 100.0, 0.0 ],
									"text" : "*~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-32895",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 55.0, 1000.0, 100.0, 0.0 ],
									"text" : "+~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-32896",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 410.0, 1000.0, 100.0, 0.0 ],
									"text" : "+~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-36",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 110.0, 50.0, 100.0, 0.0 ],
									"text" : "cycle~ 1800"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-37",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 110.0, 90.0, 100.0, 0.0 ],
									"text" : "*~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-38",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 2,
									"outlettype" : [ "signal", "bang" ],
									"patching_rect" : [ 250.0, 50.0, 100.0, 0.0 ],
									"text" : "curve~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-39",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 110.0, 130.0, 100.0, 0.0 ],
									"text" : "*~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-40",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 410.0, 130.0, 100.0, 0.0 ],
									"text" : "*~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-41",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 110.0, 250.0, 100.0, 0.0 ],
									"text" : "cycle~ 2300"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-42",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 110.0, 290.0, 100.0, 0.0 ],
									"text" : "*~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-43",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 2,
									"outlettype" : [ "signal", "bang" ],
									"patching_rect" : [ 250.0, 250.0, 100.0, 0.0 ],
									"text" : "curve~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-44",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 110.0, 330.0, 100.0, 0.0 ],
									"text" : "*~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-45",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 410.0, 330.0, 100.0, 0.0 ],
									"text" : "*~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-46",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 55.0, 400.0, 100.0, 0.0 ],
									"text" : "+~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-47",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 410.0, 400.0, 100.0, 0.0 ],
									"text" : "+~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-48",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 110.0, 450.0, 100.0, 0.0 ],
									"text" : "cycle~ 2300"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-49",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 110.0, 490.0, 100.0, 0.0 ],
									"text" : "*~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-50",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 2,
									"outlettype" : [ "signal", "bang" ],
									"patching_rect" : [ 250.0, 450.0, 100.0, 0.0 ],
									"text" : "curve~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-51",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 110.0, 530.0, 100.0, 0.0 ],
									"text" : "*~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-52",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 410.0, 530.0, 100.0, 0.0 ],
									"text" : "*~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-53",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 55.0, 600.0, 100.0, 0.0 ],
									"text" : "+~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-54",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 410.0, 600.0, 100.0, 0.0 ],
									"text" : "+~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-55",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 110.0, 650.0, 100.0, 0.0 ],
									"text" : "cycle~ 2000"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-56",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 110.0, 690.0, 100.0, 0.0 ],
									"text" : "*~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-57",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 2,
									"outlettype" : [ "signal", "bang" ],
									"patching_rect" : [ 250.0, 650.0, 100.0, 0.0 ],
									"text" : "curve~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-58",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 110.0, 730.0, 100.0, 0.0 ],
									"text" : "*~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-59",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 410.0, 730.0, 100.0, 0.0 ],
									"text" : "*~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-60",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 55.0, 800.0, 100.0, 0.0 ],
									"text" : "+~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-61",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 410.0, 800.0, 100.0, 0.0 ],
									"text" : "+~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-62",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 110.0, 850.0, 100.0, 0.0 ],
									"text" : "cycle~ 1400"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-63",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 110.0, 890.0, 100.0, 0.0 ],
									"text" : "*~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-64",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 2,
									"outlettype" : [ "signal", "bang" ],
									"patching_rect" : [ 250.0, 850.0, 100.0, 0.0 ],
									"text" : "curve~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-65",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 110.0, 930.0, 100.0, 0.0 ],
									"text" : "*~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-66",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 410.0, 930.0, 100.0, 0.0 ],
									"text" : "*~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-67",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 55.0, 1000.0, 100.0, 0.0 ],
									"text" : "+~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-68",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 410.0, 1000.0, 100.0, 0.0 ],
									"text" : "+~"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"source" : [ "obj-173", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"source" : [ "obj-30", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-32865", 0 ],
									"source" : [ "obj-32864", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-32867", 0 ],
									"order" : 1,
									"source" : [ "obj-32865", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-32868", 0 ],
									"order" : 0,
									"source" : [ "obj-32865", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-32865", 1 ],
									"source" : [ "obj-32866", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-32874", 0 ],
									"source" : [ "obj-32867", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-32875", 0 ],
									"source" : [ "obj-32868", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-32870", 0 ],
									"source" : [ "obj-32869", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-32872", 0 ],
									"order" : 1,
									"source" : [ "obj-32870", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-32873", 0 ],
									"order" : 0,
									"source" : [ "obj-32870", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-32870", 1 ],
									"source" : [ "obj-32871", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-32874", 1 ],
									"source" : [ "obj-32872", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-32875", 1 ],
									"source" : [ "obj-32873", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-32881", 0 ],
									"source" : [ "obj-32874", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-32882", 0 ],
									"source" : [ "obj-32875", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-32877", 0 ],
									"source" : [ "obj-32876", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-32879", 0 ],
									"order" : 1,
									"source" : [ "obj-32877", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-32880", 0 ],
									"order" : 0,
									"source" : [ "obj-32877", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-32877", 1 ],
									"source" : [ "obj-32878", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-32881", 1 ],
									"source" : [ "obj-32879", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-32882", 1 ],
									"source" : [ "obj-32880", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-32888", 0 ],
									"source" : [ "obj-32881", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-32889", 0 ],
									"source" : [ "obj-32882", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-32884", 0 ],
									"source" : [ "obj-32883", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-32886", 0 ],
									"order" : 1,
									"source" : [ "obj-32884", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-32887", 0 ],
									"order" : 0,
									"source" : [ "obj-32884", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-32884", 1 ],
									"source" : [ "obj-32885", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-32888", 1 ],
									"source" : [ "obj-32886", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-32889", 1 ],
									"source" : [ "obj-32887", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-32895", 0 ],
									"source" : [ "obj-32888", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-32896", 0 ],
									"source" : [ "obj-32889", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-32891", 0 ],
									"source" : [ "obj-32890", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-32893", 0 ],
									"order" : 1,
									"source" : [ "obj-32891", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-32894", 0 ],
									"order" : 0,
									"source" : [ "obj-32891", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-32891", 1 ],
									"source" : [ "obj-32892", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-32895", 1 ],
									"source" : [ "obj-32893", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-32896", 1 ],
									"source" : [ "obj-32894", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2039", 0 ],
									"source" : [ "obj-32895", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2040", 0 ],
									"source" : [ "obj-32896", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-37", 0 ],
									"source" : [ "obj-36", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-39", 0 ],
									"order" : 1,
									"source" : [ "obj-37", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-40", 0 ],
									"order" : 0,
									"source" : [ "obj-37", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-37", 1 ],
									"source" : [ "obj-38", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-46", 0 ],
									"source" : [ "obj-39", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-39814", 0 ],
									"source" : [ "obj-39813", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-39816", 0 ],
									"order" : 1,
									"source" : [ "obj-39814", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-39817", 0 ],
									"order" : 0,
									"source" : [ "obj-39814", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-39814", 1 ],
									"source" : [ "obj-39815", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-39823", 0 ],
									"source" : [ "obj-39816", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-39824", 0 ],
									"source" : [ "obj-39817", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-39819", 0 ],
									"source" : [ "obj-39818", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-39821", 0 ],
									"order" : 1,
									"source" : [ "obj-39819", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-39822", 0 ],
									"order" : 0,
									"source" : [ "obj-39819", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-39819", 1 ],
									"source" : [ "obj-39820", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-39823", 1 ],
									"source" : [ "obj-39821", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-39824", 1 ],
									"source" : [ "obj-39822", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-39830", 0 ],
									"source" : [ "obj-39823", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-39831", 0 ],
									"source" : [ "obj-39824", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-39826", 0 ],
									"source" : [ "obj-39825", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-39828", 0 ],
									"order" : 1,
									"source" : [ "obj-39826", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-39829", 0 ],
									"order" : 0,
									"source" : [ "obj-39826", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-39826", 1 ],
									"source" : [ "obj-39827", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-39830", 1 ],
									"source" : [ "obj-39828", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-39831", 1 ],
									"source" : [ "obj-39829", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-39837", 0 ],
									"source" : [ "obj-39830", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-39838", 0 ],
									"source" : [ "obj-39831", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-39833", 0 ],
									"source" : [ "obj-39832", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-39835", 0 ],
									"order" : 1,
									"source" : [ "obj-39833", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-39836", 0 ],
									"order" : 0,
									"source" : [ "obj-39833", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-39833", 1 ],
									"source" : [ "obj-39834", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-39837", 1 ],
									"source" : [ "obj-39835", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-39838", 1 ],
									"source" : [ "obj-39836", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-39844", 0 ],
									"source" : [ "obj-39837", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-39845", 0 ],
									"source" : [ "obj-39838", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-39840", 0 ],
									"source" : [ "obj-39839", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-39842", 0 ],
									"order" : 1,
									"source" : [ "obj-39840", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-39843", 0 ],
									"order" : 0,
									"source" : [ "obj-39840", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-39840", 1 ],
									"source" : [ "obj-39841", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-39844", 1 ],
									"source" : [ "obj-39842", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-39845", 1 ],
									"source" : [ "obj-39843", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2039", 0 ],
									"source" : [ "obj-39844", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2040", 0 ],
									"source" : [ "obj-39845", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-47", 0 ],
									"source" : [ "obj-40", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-42", 0 ],
									"source" : [ "obj-41", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-44", 0 ],
									"order" : 1,
									"source" : [ "obj-42", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-45", 0 ],
									"order" : 0,
									"source" : [ "obj-42", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-42", 1 ],
									"source" : [ "obj-43", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-46", 1 ],
									"source" : [ "obj-44", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-47", 1 ],
									"source" : [ "obj-45", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-53", 0 ],
									"source" : [ "obj-46", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-54", 0 ],
									"source" : [ "obj-47", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-49", 0 ],
									"source" : [ "obj-48", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-51", 0 ],
									"order" : 1,
									"source" : [ "obj-49", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-52", 0 ],
									"order" : 0,
									"source" : [ "obj-49", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-49", 1 ],
									"source" : [ "obj-50", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-53", 1 ],
									"source" : [ "obj-51", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-54", 1 ],
									"source" : [ "obj-52", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-60", 0 ],
									"source" : [ "obj-53", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-61", 0 ],
									"source" : [ "obj-54", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-56", 0 ],
									"source" : [ "obj-55", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-58", 0 ],
									"order" : 1,
									"source" : [ "obj-56", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-59", 0 ],
									"order" : 0,
									"source" : [ "obj-56", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-56", 1 ],
									"source" : [ "obj-57", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-60", 1 ],
									"source" : [ "obj-58", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-61", 1 ],
									"source" : [ "obj-59", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-67", 0 ],
									"source" : [ "obj-60", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-68", 0 ],
									"source" : [ "obj-61", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-63", 0 ],
									"source" : [ "obj-62", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-65", 0 ],
									"order" : 1,
									"source" : [ "obj-63", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-66", 0 ],
									"order" : 0,
									"source" : [ "obj-63", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6395", 0 ],
									"source" : [ "obj-6394", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6397", 0 ],
									"order" : 1,
									"source" : [ "obj-6395", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6398", 0 ],
									"order" : 0,
									"source" : [ "obj-6395", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6395", 1 ],
									"source" : [ "obj-6396", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6404", 0 ],
									"source" : [ "obj-6397", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6405", 0 ],
									"source" : [ "obj-6398", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6400", 0 ],
									"source" : [ "obj-6399", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-63", 1 ],
									"source" : [ "obj-64", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6402", 0 ],
									"order" : 1,
									"source" : [ "obj-6400", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6403", 0 ],
									"order" : 0,
									"source" : [ "obj-6400", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6400", 1 ],
									"source" : [ "obj-6401", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6404", 1 ],
									"source" : [ "obj-6402", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6405", 1 ],
									"source" : [ "obj-6403", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6411", 0 ],
									"source" : [ "obj-6404", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6412", 0 ],
									"source" : [ "obj-6405", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6407", 0 ],
									"source" : [ "obj-6406", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6409", 0 ],
									"order" : 1,
									"source" : [ "obj-6407", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6410", 0 ],
									"order" : 0,
									"source" : [ "obj-6407", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6407", 1 ],
									"source" : [ "obj-6408", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6411", 1 ],
									"source" : [ "obj-6409", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6412", 1 ],
									"source" : [ "obj-6410", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6418", 0 ],
									"source" : [ "obj-6411", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6419", 0 ],
									"source" : [ "obj-6412", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6414", 0 ],
									"source" : [ "obj-6413", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6416", 0 ],
									"order" : 1,
									"source" : [ "obj-6414", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6417", 0 ],
									"order" : 0,
									"source" : [ "obj-6414", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6414", 1 ],
									"source" : [ "obj-6415", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6418", 1 ],
									"source" : [ "obj-6416", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6419", 1 ],
									"source" : [ "obj-6417", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6425", 0 ],
									"source" : [ "obj-6418", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6426", 0 ],
									"source" : [ "obj-6419", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6421", 0 ],
									"source" : [ "obj-6420", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6423", 0 ],
									"order" : 1,
									"source" : [ "obj-6421", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6424", 0 ],
									"order" : 0,
									"source" : [ "obj-6421", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6421", 1 ],
									"source" : [ "obj-6422", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6425", 1 ],
									"source" : [ "obj-6423", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6426", 1 ],
									"source" : [ "obj-6424", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2039", 0 ],
									"source" : [ "obj-6425", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2040", 0 ],
									"source" : [ "obj-6426", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-67", 1 ],
									"source" : [ "obj-65", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-68", 1 ],
									"source" : [ "obj-66", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2039", 0 ],
									"source" : [ "obj-67", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2040", 0 ],
									"source" : [ "obj-68", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8530", 0 ],
									"source" : [ "obj-8515", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"source" : [ "obj-8530", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"source" : [ "obj-8603", 0 ]
								}

							}
 ],
						"originid" : "pat-34"
					}
,
					"patching_rect" : [ 728.093027830123901, 1661.6278475522995, 85.0, 22.0 ],
					"text" : "p synthEngine"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-5300",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 320.0, 1309.139488101005554, 50.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 131.13590133190155, 50.588237404823303, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 24.0,
					"id" : "obj-433",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1116.0, 987.209267020225525, 164.0, 33.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 464.0, 57.0, 232.307714462280273, 33.0 ],
					"text" : "HARMONICS",
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 24.0,
					"id" : "obj-432",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 45.0, 1162.5, 101.0, 33.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 24.20343279838562, 50.588237404823303, 101.0, 33.0 ],
					"text" : "ROOT"
				}

			}
, 			{
				"box" : 				{
					"contdata" : 1,
					"id" : "obj-431",
					"maxclass" : "multislider",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 649.33335268497467, 731.333356618881226, 139.0, 122.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 560.0, 646.0, 139.0, 122.0 ],
					"setstyle" : 1,
					"signed" : 1,
					"size" : 5,
					"slidercolor" : [ 0.982667446136475, 0.0, 0.113207086920738, 1.0 ],
					"spacing" : 37,
					"thickness" : 16,
					"varname" : "pan"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 24.0,
					"id" : "obj-428",
					"linecount" : 3,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 592.000017642974854, 739.333356857299805, 30.0, 87.0 ],
					"presentation" : 1,
					"presentation_linecount" : 3,
					"presentation_rect" : [ 511.0, 646.0, 30.0, 87.0 ],
					"text" : "PAN"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-429",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 605.0, 938.0, 76.0, 22.0 ],
					"text" : "prepend pan"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-170",
					"maxclass" : "kslider",
					"numinlets" : 2,
					"numoutlets" : 2,
					"offset" : 24,
					"outlettype" : [ "int", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 124.5, 1210.0, 336.0, 53.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 29.411765933036804, 97.64706289768219, 336.0, 53.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-169",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1076.744147539138794, 1452.325529456138611, 134.0, 22.0 ],
					"text" : "prepend set_harmonics"
				}

			}
, 			{
				"box" : 				{
					"contdata" : 1,
					"id" : "obj-166",
					"maxclass" : "multislider",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1121.0, 1105.0, 134.0, 125.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 464.0, 105.0, 235.0, 193.0 ],
					"setminmax" : [ 1.0, 50.0 ],
					"settype" : 0,
					"size" : 5,
					"varname" : "harmonics"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-165",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 313.541654706001282, 1358.333281517028809, 145.0, 22.0 ],
					"text" : "prepend set_fundamental"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-164",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 364.583319425582886, 1031.395311951637268, 24.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 49.70343279838562, 779.0, 50.0, 50.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-114",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 332.0, 643.0, 94.0, 22.0 ],
					"text" : "prepend sustain"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.125490196078431, 0.125490196078431, 0.125490196078431, 1.0 ],
					"contdata" : 1,
					"id" : "obj-113",
					"maxclass" : "multislider",
					"numinlets" : 1,
					"numoutlets" : 2,
					"orientation" : 0,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1025.453446745872498, 300.96571284532547, 134.0, 125.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1064.0, 379.0, 235.0, 193.0 ],
					"setminmax" : [ 0.0, 1.0 ],
					"setstyle" : 1,
					"shadowblend" : 0.03,
					"shadoworientation" : 6,
					"shadowperbar" : 0,
					"shadowproportion" : 1.0,
					"size" : 5,
					"slidercolor" : [ 0.619607843137255, 0.745098039215686, 0.952941176470588, 1.0 ],
					"varname" : "release"
				}

			}
, 			{
				"box" : 				{
					"contdata" : 1,
					"id" : "obj-111",
					"maxclass" : "multislider",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 355.0, 310.0, 134.0, 125.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 464.0, 378.0, 235.0, 193.0 ],
					"setminmax" : [ 0.009999999776483, 1.0 ],
					"size" : 5,
					"varname" : "level"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-53",
					"maxclass" : "number",
					"minimum" : 1,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 670.930208563804626, 81.0, 50.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 236.703424692153931, 9.374999642372131, 50.0, 22.0 ],
					"varname" : "voices[1]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-50",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 670.930208563804626, 155.813947916030884, 117.0, 22.0 ],
					"text" : "s number_of_synths"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.619607843137255, 0.745098039215686, 0.952941176470588, 1.0 ],
					"contdata" : 1,
					"id" : "obj-49",
					"maxclass" : "multislider",
					"numinlets" : 1,
					"numoutlets" : 2,
					"orientation" : 0,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 710.0, 304.0, 134.0, 125.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 833.0, 379.0, 235.0, 193.0 ],
					"setminmax" : [ 0.0, 12.0 ],
					"setstyle" : 1,
					"settype" : 0,
					"size" : 5,
					"slidercolor" : [ 0.125490196078431, 0.125490196078431, 0.125490196078431, 1.0 ],
					"varname" : "attack"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 24.0,
					"id" : "obj-44",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 958.786778092384338, 346.299047529697418, 30.0, 33.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1064.0, 572.0, 30.0, 33.0 ],
					"text" : "R"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 24.0,
					"id" : "obj-40",
					"linecount" : 5,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 289.0, 356.0, 30.0, 141.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 464.0, 572.0, 87.499996662139893, 33.0 ],
					"text" : "LEVEL"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 24.0,
					"id" : "obj-25",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 652.0, 350.0, 30.0, 33.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 833.0, 572.0, 30.0, 33.0 ],
					"text" : "A"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 0 ],
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-34", 0 ],
					"source" : [ "obj-100", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-167", 0 ],
					"order" : 1,
					"source" : [ "obj-101", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-173", 1 ],
					"order" : 2,
					"source" : [ "obj-101", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-324", 1 ],
					"midpoints" : [ 123.4784996509552, 1698.950329686980695, 496.458315253257751, 1698.950329686980695 ],
					"order" : 0,
					"source" : [ "obj-101", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-34", 0 ],
					"source" : [ "obj-103", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-113", 0 ],
					"order" : 0,
					"source" : [ "obj-104", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-49", 0 ],
					"order" : 1,
					"source" : [ "obj-104", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-77", 2 ],
					"source" : [ "obj-105", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-98", 0 ],
					"source" : [ "obj-106", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 0 ],
					"source" : [ "obj-107", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 0 ],
					"source" : [ "obj-108", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-114", 0 ],
					"order" : 1,
					"source" : [ "obj-111", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8637", 0 ],
					"order" : 0,
					"source" : [ "obj-111", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-57", 0 ],
					"midpoints" : [ 1034.953446745872498, 445.08169208932668, 1204.0, 445.08169208932668 ],
					"order" : 0,
					"source" : [ "obj-113", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8643", 0 ],
					"order" : 1,
					"source" : [ "obj-113", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-90", 1 ],
					"order" : 2,
					"source" : [ "obj-113", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8604", 0 ],
					"source" : [ "obj-114", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-179", 0 ],
					"source" : [ "obj-116", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-56", 0 ],
					"source" : [ "obj-118", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-106", 0 ],
					"source" : [ "obj-119", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-118", 0 ],
					"source" : [ "obj-120", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-111", 0 ],
					"order" : 2,
					"source" : [ "obj-125", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-113", 0 ],
					"order" : 0,
					"source" : [ "obj-125", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-49", 0 ],
					"order" : 1,
					"source" : [ "obj-125", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-91", 0 ],
					"source" : [ "obj-126", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-166", 0 ],
					"source" : [ "obj-127", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 0 ],
					"source" : [ "obj-128", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-431", 0 ],
					"order" : 1,
					"source" : [ "obj-129", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-54", 0 ],
					"order" : 0,
					"source" : [ "obj-129", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-94", 0 ],
					"source" : [ "obj-13", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"source" : [ "obj-130", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-134", 0 ],
					"order" : 2,
					"source" : [ "obj-131", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-146", 0 ],
					"order" : 1,
					"source" : [ "obj-131", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-325", 0 ],
					"midpoints" : [ 261.112914323806763, 1534.578941040206701, 483.458315253257751, 1534.578941040206701 ],
					"order" : 0,
					"source" : [ "obj-131", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-126", 0 ],
					"source" : [ "obj-134", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-331", 1 ],
					"source" : [ "obj-137", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8604", 0 ],
					"midpoints" : [ 323.041654706001282, 1519.104750804137439, 737.593027830123901, 1519.104750804137439 ],
					"source" : [ "obj-137", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-166", 0 ],
					"source" : [ "obj-139", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-15", 0 ],
					"source" : [ "obj-14", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8604", 0 ],
					"source" : [ "obj-142", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-59", 0 ],
					"source" : [ "obj-144", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-149", 0 ],
					"source" : [ "obj-145", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-155", 0 ],
					"source" : [ "obj-146", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-175", 0 ],
					"source" : [ "obj-146", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 0 ],
					"midpoints" : [ 2036.278997659683228, 1693.6278475522995, 1765.331332743167877, 1693.6278475522995, 1765.331332743167877, 1486.511574387550354, 1494.383667826652527, 1486.511574387550354 ],
					"source" : [ "obj-148", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-144", 1 ],
					"source" : [ "obj-148", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-148", 0 ],
					"source" : [ "obj-149", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 0 ],
					"source" : [ "obj-151", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-101", 0 ],
					"midpoints" : [ 251.528987526893616, 1652.007128302939236, 123.4784996509552, 1652.007128302939236 ],
					"order" : 1,
					"source" : [ "obj-152", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-99", 0 ],
					"midpoints" : [ 251.528987526893616, 1650.957061052322388, 211.650546550750732, 1650.957061052322388 ],
					"order" : 0,
					"source" : [ "obj-152", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-166", 0 ],
					"source" : [ "obj-153", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-101", 0 ],
					"midpoints" : [ 379.267428636550903, 1657.805894136428833, 123.4784996509552, 1657.805894136428833 ],
					"source" : [ "obj-154", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-154", 0 ],
					"order" : 1,
					"source" : [ "obj-155", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-172", 0 ],
					"order" : 0,
					"source" : [ "obj-155", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-173", 0 ],
					"midpoints" : [ 336.478508472442627, 1656.804004043806344, 101.0, 1656.804004043806344 ],
					"order" : 1,
					"source" : [ "obj-155", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-174", 0 ],
					"midpoints" : [ 336.478508472442627, 1667.989320397377014, 185.5, 1667.989320397377014 ],
					"order" : 0,
					"source" : [ "obj-155", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-191", 0 ],
					"order" : 2,
					"source" : [ "obj-155", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-50", 0 ],
					"source" : [ "obj-156", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-28", 0 ],
					"source" : [ "obj-158", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-67", 0 ],
					"source" : [ "obj-16", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-116", 0 ],
					"source" : [ "obj-163", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8604", 0 ],
					"source" : [ "obj-164", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-137", 0 ],
					"midpoints" : [ 323.041654706001282, 1388.428593460004777, 323.041654706001282, 1388.428593460004777 ],
					"source" : [ "obj-165", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-14", 0 ],
					"order" : 2,
					"source" : [ "obj-166", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"order" : 0,
					"source" : [ "obj-166", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8665", 0 ],
					"midpoints" : [ 1130.5, 1240.0, 1288.913491731509566, 1240.0, 1288.913491731509566, 1017.761591151356697, 1373.5, 1017.761591151356697 ],
					"order" : 1,
					"source" : [ "obj-166", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-173", 2 ],
					"source" : [ "obj-167", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-174", 2 ],
					"source" : [ "obj-168", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-77", 1 ],
					"source" : [ "obj-169", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-379", 0 ],
					"source" : [ "obj-17", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-126", 1 ],
					"midpoints" : [ 134.0, 1506.364957755431533, 224.650546550750732, 1506.364957755431533 ],
					"order" : 0,
					"source" : [ "obj-170", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-143", 0 ],
					"order" : 3,
					"source" : [ "obj-170", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-24", 0 ],
					"order" : 2,
					"source" : [ "obj-170", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-335", 0 ],
					"order" : 1,
					"source" : [ "obj-170", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-348", 0 ],
					"order" : 4,
					"source" : [ "obj-170", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-99", 0 ],
					"source" : [ "obj-172", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-103", 0 ],
					"source" : [ "obj-173", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-100", 0 ],
					"source" : [ "obj-174", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-152", 0 ],
					"order" : 0,
					"source" : [ "obj-175", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-173", 0 ],
					"midpoints" : [ 240.500008821487427, 1654.178835917264223, 101.0, 1654.178835917264223 ],
					"order" : 1,
					"source" : [ "obj-175", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-174", 0 ],
					"midpoints" : [ 240.500008821487427, 1700.805264949798584, 185.5, 1700.805264949798584 ],
					"order" : 0,
					"source" : [ "obj-175", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-189", 0 ],
					"order" : 1,
					"source" : [ "obj-175", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-164", 0 ],
					"order" : 1,
					"source" : [ "obj-177", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8604", 0 ],
					"order" : 0,
					"source" : [ "obj-177", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-177", 1 ],
					"source" : [ "obj-178", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-177", 0 ],
					"order" : 1,
					"source" : [ "obj-180", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-332", 0 ],
					"order" : 0,
					"source" : [ "obj-180", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-187", 0 ],
					"source" : [ "obj-185", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-187", 0 ],
					"source" : [ "obj-186", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-316", 0 ],
					"order" : 0,
					"source" : [ "obj-188", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-34", 0 ],
					"order" : 1,
					"source" : [ "obj-188", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-101", 0 ],
					"order" : 1,
					"source" : [ "obj-189", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-99", 0 ],
					"order" : 0,
					"source" : [ "obj-189", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-54", 0 ],
					"source" : [ "obj-19", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-101", 0 ],
					"order" : 1,
					"source" : [ "obj-191", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-99", 0 ],
					"order" : 0,
					"source" : [ "obj-191", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-101", 0 ],
					"source" : [ "obj-192", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-192", 0 ],
					"source" : [ "obj-194", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-62", 0 ],
					"order" : 1,
					"source" : [ "obj-201", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8626", 0 ],
					"order" : 2,
					"source" : [ "obj-201", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-90", 0 ],
					"order" : 0,
					"source" : [ "obj-201", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-208", 0 ],
					"source" : [ "obj-207", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-224", 0 ],
					"source" : [ "obj-208", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-207", 0 ],
					"source" : [ "obj-211", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-261", 0 ],
					"source" : [ "obj-217", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-321", 0 ],
					"source" : [ "obj-22", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-210", 0 ],
					"order" : 1,
					"source" : [ "obj-224", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-217", 0 ],
					"order" : 0,
					"source" : [ "obj-224", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-36", 0 ],
					"order" : 2,
					"source" : [ "obj-224", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-230", 0 ],
					"source" : [ "obj-227", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-231", 0 ],
					"source" : [ "obj-229", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-229", 1 ],
					"source" : [ "obj-230", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-229", 0 ],
					"source" : [ "obj-230", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-224", 1 ],
					"source" : [ "obj-231", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-224", 0 ],
					"source" : [ "obj-231", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8604", 0 ],
					"source" : [ "obj-24", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-246", 0 ],
					"source" : [ "obj-244", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-36", 1 ],
					"source" : [ "obj-246", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-36", 0 ],
					"source" : [ "obj-246", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-211", 0 ],
					"source" : [ "obj-256", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-256", 0 ],
					"source" : [ "obj-258", 0 ]
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
					"destination" : [ "obj-249", 0 ],
					"source" : [ "obj-261", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-164", 0 ],
					"source" : [ "obj-27", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-142", 0 ],
					"order" : 1,
					"source" : [ "obj-28", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-88", 0 ],
					"order" : 0,
					"source" : [ "obj-28", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-93", 0 ],
					"source" : [ "obj-28", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-392", 0 ],
					"source" : [ "obj-280", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-186", 1 ],
					"source" : [ "obj-29", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-186", 0 ],
					"source" : [ "obj-29", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-131", 0 ],
					"source" : [ "obj-297", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-188", 0 ],
					"source" : [ "obj-30", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-53", 0 ],
					"source" : [ "obj-31", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8660", 0 ],
					"source" : [ "obj-314", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-319", 0 ],
					"source" : [ "obj-316", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-321", 0 ],
					"source" : [ "obj-319", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-322", 0 ],
					"source" : [ "obj-320", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-320", 0 ],
					"source" : [ "obj-321", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-34", 0 ],
					"source" : [ "obj-322", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 0 ],
					"source" : [ "obj-324", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-324", 0 ],
					"source" : [ "obj-325", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-320", 1 ],
					"source" : [ "obj-329", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-73", 0 ],
					"source" : [ "obj-33", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8604", 0 ],
					"source" : [ "obj-331", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-331", 0 ],
					"source" : [ "obj-332", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-165", 0 ],
					"order" : 1,
					"source" : [ "obj-335", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5300", 0 ],
					"order" : 0,
					"source" : [ "obj-335", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8670", 0 ],
					"order" : 2,
					"source" : [ "obj-335", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-347", 0 ],
					"source" : [ "obj-338", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-340", 0 ],
					"source" : [ "obj-339", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-335", 0 ],
					"source" : [ "obj-340", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-335", 0 ],
					"source" : [ "obj-347", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-59", 0 ],
					"source" : [ "obj-35", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-356", 0 ],
					"source" : [ "obj-358", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-178", 0 ],
					"order" : 5,
					"source" : [ "obj-36", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-23", 0 ],
					"order" : 4,
					"source" : [ "obj-36", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-255", 0 ],
					"order" : 1,
					"source" : [ "obj-36", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-43", 0 ],
					"order" : 3,
					"source" : [ "obj-36", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-55", 0 ],
					"midpoints" : [ 1347.698842287063599, 401.117994162959803, 1672.15066385269165, 401.117994162959803 ],
					"order" : 0,
					"source" : [ "obj-36", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-83", 0 ],
					"order" : 2,
					"source" : [ "obj-36", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-356", 0 ],
					"source" : [ "obj-369", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-375", 0 ],
					"source" : [ "obj-373", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8604", 0 ],
					"source" : [ "obj-377", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-377", 0 ],
					"source" : [ "obj-379", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-388", 0 ],
					"source" : [ "obj-387", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8660", 0 ],
					"source" : [ "obj-388", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-58", 0 ],
					"source" : [ "obj-39", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8660", 0 ],
					"source" : [ "obj-391", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8660", 0 ],
					"source" : [ "obj-392", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-391", 0 ],
					"source" : [ "obj-393", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-393", 0 ],
					"source" : [ "obj-395", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-404", 0 ],
					"source" : [ "obj-408", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-51", 0 ],
					"source" : [ "obj-41", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-34", 0 ],
					"source" : [ "obj-412", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8604", 0 ],
					"source" : [ "obj-429", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-20", 0 ],
					"order" : 1,
					"source" : [ "obj-43", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-45", 0 ],
					"order" : 0,
					"source" : [ "obj-43", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-429", 0 ],
					"order" : 1,
					"source" : [ "obj-431", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8649", 0 ],
					"order" : 0,
					"source" : [ "obj-431", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-59", 0 ],
					"source" : [ "obj-46", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-56", 0 ],
					"source" : [ "obj-48", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-201", 0 ],
					"source" : [ "obj-49", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 0 ],
					"order" : 1,
					"source" : [ "obj-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-169", 0 ],
					"order" : 2,
					"source" : [ "obj-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"order" : 0,
					"source" : [ "obj-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-170", 0 ],
					"source" : [ "obj-51", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-258", 0 ],
					"source" : [ "obj-51", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-119", 0 ],
					"midpoints" : [ 680.430208563804626, 112.0, 516.5, 112.0 ],
					"order" : 1,
					"source" : [ "obj-53", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-156", 0 ],
					"order" : 0,
					"source" : [ "obj-53", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-165", 0 ],
					"order" : 1,
					"source" : [ "obj-5300", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-256", 1 ],
					"order" : 0,
					"source" : [ "obj-5300", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-39", 0 ],
					"order" : 0,
					"source" : [ "obj-54", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-64", 0 ],
					"order" : 1,
					"source" : [ "obj-54", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8604", 0 ],
					"source" : [ "obj-55", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-123", 1 ],
					"order" : 0,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-46", 0 ],
					"order" : 1,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8604", 0 ],
					"source" : [ "obj-57", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-37", 0 ],
					"source" : [ "obj-58", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-95", 0 ],
					"source" : [ "obj-59", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 0 ],
					"source" : [ "obj-6", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-113", 0 ],
					"source" : [ "obj-61", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8604", 0 ],
					"source" : [ "obj-62", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-59", 0 ],
					"source" : [ "obj-63", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8604", 0 ],
					"source" : [ "obj-64", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-49", 0 ],
					"source" : [ "obj-65", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-16", 0 ],
					"source" : [ "obj-66", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-68", 0 ],
					"source" : [ "obj-67", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-33", 0 ],
					"source" : [ "obj-72", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-74", 0 ],
					"source" : [ "obj-73", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8604", 0 ],
					"source" : [ "obj-75", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-80", 0 ],
					"order" : 0,
					"source" : [ "obj-77", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8604", 0 ],
					"order" : 1,
					"source" : [ "obj-77", 0 ],
					"watchpoint_flags" : 1,
					"watchpoint_id" : 2
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-178", 1 ],
					"source" : [ "obj-78", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 1 ],
					"source" : [ "obj-8", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-9", 0 ],
					"source" : [ "obj-8", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-79", 0 ],
					"source" : [ "obj-80", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-66", 1 ],
					"order" : 1,
					"source" : [ "obj-83", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-66", 0 ],
					"order" : 1,
					"source" : [ "obj-83", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-72", 1 ],
					"order" : 0,
					"source" : [ "obj-83", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-72", 0 ],
					"order" : 0,
					"source" : [ "obj-83", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-59", 0 ],
					"source" : [ "obj-85", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-11", 0 ],
					"order" : 2,
					"source" : [ "obj-8604", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-223", 1 ],
					"order" : 3,
					"source" : [ "obj-8604", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-223", 0 ],
					"order" : 2,
					"source" : [ "obj-8604", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-356", 1 ],
					"order" : 1,
					"source" : [ "obj-8604", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-356", 0 ],
					"order" : 1,
					"source" : [ "obj-8604", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 0 ],
					"order" : 3,
					"source" : [ "obj-8604", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8695", 1 ],
					"order" : 0,
					"source" : [ "obj-8604", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8695", 0 ],
					"order" : 0,
					"source" : [ "obj-8604", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-66", 0 ],
					"source" : [ "obj-8626", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-71", 0 ],
					"source" : [ "obj-8626", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8636", 0 ],
					"source" : [ "obj-8635", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8677", 0 ],
					"source" : [ "obj-8637", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-72", 0 ],
					"source" : [ "obj-8643", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-82", 0 ],
					"source" : [ "obj-8643", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8648", 0 ],
					"source" : [ "obj-8647", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8647", 0 ],
					"source" : [ "obj-8649", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-132", 1 ],
					"order" : 0,
					"source" : [ "obj-8660", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-166", 0 ],
					"order" : 1,
					"source" : [ "obj-8660", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8660", 0 ],
					"source" : [ "obj-8665", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8672", 0 ],
					"source" : [ "obj-8670", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8635", 0 ],
					"source" : [ "obj-8677", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-29", 0 ],
					"source" : [ "obj-8695", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-139", 0 ],
					"order" : 0,
					"source" : [ "obj-88", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-77", 0 ],
					"order" : 1,
					"source" : [ "obj-88", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 0 ],
					"source" : [ "obj-9", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-113", 0 ],
					"source" : [ "obj-90", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-192", 1 ],
					"order" : 1,
					"source" : [ "obj-91", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-99", 0 ],
					"order" : 0,
					"source" : [ "obj-91", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-433", 0 ],
					"source" : [ "obj-93", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-144", 0 ],
					"source" : [ "obj-94", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-105", 0 ],
					"source" : [ "obj-95", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-95", 1 ],
					"source" : [ "obj-96", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-53", 0 ],
					"midpoints" : [ 547.5, 50.0390625, 603.5, 50.0390625, 603.5, 60.609375, 680.430208563804626, 60.609375 ],
					"source" : [ "obj-98", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-163", 0 ],
					"midpoints" : [ 211.650546550750732, 1696.324238479137421, 406.5, 1696.324238479137421, 406.5, 38.03515625, 594.5, 38.03515625 ],
					"order" : 0,
					"source" : [ "obj-99", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-168", 0 ],
					"order" : 1,
					"source" : [ "obj-99", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-174", 1 ],
					"order" : 2,
					"source" : [ "obj-99", 0 ]
				}

			}
 ],
		"originid" : "pat-6",
		"parameters" : 		{
			"obj-28" : [ "live.tab[1]", "live.tab[1]", 0 ],
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
		"dependency_cache" : [ 			{
				"name" : "12_equal_divisions_A_440_69.txt",
				"bootpath" : "~/Music/MAX/ADDITIVE SYNTH ELLIOT/botta-synth-main",
				"patcherrelativepath" : ".",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "createVoices.js",
				"bootpath" : "~/Music/MAX/ADDITIVE SYNTH ELLIOT/botta-synth-main",
				"patcherrelativepath" : ".",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "enforce_timepoints.js",
				"bootpath" : "~/Music/MAX/ADDITIVE SYNTH ELLIOT/botta-synth-main",
				"patcherrelativepath" : ".",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "formatTime.js",
				"bootpath" : "~/Music/MAX/ADDITIVE SYNTH ELLIOT/botta-synth-main",
				"patcherrelativepath" : ".",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "harmonicFunctions.js",
				"bootpath" : "~/Music/MAX/ADDITIVE SYNTH ELLIOT/botta-synth-main",
				"patcherrelativepath" : ".",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "mapRatioTransposition.js",
				"bootpath" : "~/Music/MAX/ADDITIVE SYNTH ELLIOT/botta-synth-main",
				"patcherrelativepath" : ".",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "pdm.scala.parser.maxpat",
				"bootpath" : "~/Music/MAX/ADDITIVE SYNTH ELLIOT/botta-synth-main",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "performTransposition.js",
				"bootpath" : "~/Music/MAX/ADDITIVE SYNTH ELLIOT/botta-synth-main",
				"patcherrelativepath" : ".",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "stablevalue.js",
				"bootpath" : "~/Music/MAX/ADDITIVE SYNTH ELLIOT/botta-synth-main",
				"patcherrelativepath" : ".",
				"type" : "TEXT",
				"implicit" : 1
			}
 ],
		"autosave" : 0,
		"toolbaradditions" : [ "audiosolo" ],
		"oscreceiveudpport" : 0
	}

}
