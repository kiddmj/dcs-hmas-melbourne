-- ***************** "HMAS Melbourne R21 1980" ******************************

--   Runways and landing strip for HMAS Melbourne R21 in DCS

-- ===========================================================================================================================

GT.RunWays =
{     
-- landing strip definition (first in table)
--	VppStartPoint; 					azimuth (degree} 	Length_Vpp; 	Width_Vpp;
	{{-50.0, 11.987, -5.0}, 				0, 				120.0, 				12.0, 
-- alsArgument, lowGlidePath, slightlyLowGlidePath, onLowerGlidePath, onUpperGlidePath, slightlyHighGlidePath, highGlidePath
	0, 			2.5, 		  		2.8, 					3.0, 			  3.0, 				3.2, 				3.5},
-- runways 
	{{30.0,	  11.987,   -5.0}, 		0, 			70.0, 	    12.0, 		0, 2.5, 2.8, 3.0, 3.0, 3.2, 3.5}  --runway 1	

	};

GT.RunWays.RunwaysNumber = #GT.RunWays;

-- ===========================================================================================================================

GT.Landing_Point	= {-0.7, 11.987, -46.879} 						-- Landing touch-down point (Y, Z, X : -Y = port, +Y = Stbd : Z should = deck level)

-- ===========================================================================================================================

-- ==============================================================================
-- ================                                                    ==========
-- ================         Parking/Ramp and taxi paths                ==========
-- ================                                                    ==========
-- ================ Parking is at the first waypoint, with the         ==========
-- ================    aircraft following the waypoints to the         ==========
-- ================                                                    ==========
-- ================  Thre needs to be one entry for every combination  ==========
-- ================     of path from parking to each catapult.         ==========
-- ================                                                    ==========
-- ==============================================================================

GT.TaxiRoutes = 
{					
--[[
--]]
--       x, z, y (-y = port, +y = stbd),     V_target (m/s)

	{ -- 1 parking spot
		{{ 0,   11.987,   -5.0 },		1.0}, --wp1
		{{ 10,	11.987,	   4.2 },		1.0}, --wp2
	    {{105,  11.987,	   4.2 },	    1.0} -- end park spot
	},
	
	{ -- 2 parking spot 
		{{ 0,   11.987,   -5.0 },		1.0}, --wp1
		{{ 10,	11.987,	   4.2 },		1.0}, --wp2
	    {{ 89,	11.987,	   4.2 },		1.0} -- end park spot
	},

	{ -- 3 parking spot
		{{ 0,   11.987,   -5.0 },		1.0}, --wp1
		{{ 10,	11.987,	   4.2 },		1.0}, --wp2
	    {{ 73,	11.987,	   4.2 },		1.0} -- end park spot
	},

	{ -- 4 parking spot
		{{ 0,   11.987,   -5.0 },		1.0}, --wp1
		{{ 10,	11.987,	   4.2 },		1.0}, --wp2
		{{ 57,  11.987,	   4.2 },		1.0} -- end park spot
	},	

	{ -- 5 parking spot		
		{{ 0,   11.987,   -5.0 },		1.0}, --wp1
		{{ 10,	11.987,	   4.2 },		1.0}, --wp2
		{{ 39,  11.987,	   4.2 },	    1.0} -- end park spot
    },

	{ -- 6 parking spot	
		{{ 0,   11.987,   -5.0 },		1.0}, --wp1
		{{ 10,	11.987,	   4.2 },		1.0}, --wp2
		{{ 23,	11.987,	   4.2 },		1.0}  -- end park spot
    },

}
GT.TaxiRoutes.RoutesNumber = #GT.TaxiRoutes

-- ===========================================================================================================================

GT.TaxiForTORoutes = 
	-- taxi routes and parking spots in LCS
	--    x				z        y		V_target
	{		
	{ RunwayIdx = 1, Points =
		{ -- 1 spawn Stbd pos 1 aft of island
			{{  0,	  11.987,     4.2 },       1.0 },
			{{ 10,	  11.987,     4.2 },       1.0 },	
			{{ 20,    11.987,    -5.0 },       1.0 },
			{{ 30,    11.987,    -5.0 },       1.0 }
		}
	},
	{ RunwayIdx = 2, Points =
		{ -- 2 spawn Stbd pos 2 aft of island
			{{-16,	  11.987,     4.2 },       1.0 },
			{{ 10,	  11.987,     4.2 },       1.0 },	
			{{ 20,    11.987,    -5.0 },       1.0 },
			{{ 30,    11.987,    -5.0 },       1.0 }
		}
	},
	{ RunwayIdx = 3, Points =
		{ -- 3 spawn Stbd pos 3 aft of island
			{{-32,	  11.987,     4.2 },       1.0 },
			{{ 10,	  11.987,     4.2 },       1.0 },	
			{{ 20,    11.987,    -5.0 },       1.0 },
			{{ 30,    11.987,    -5.0 },       1.0 }
		}
	},	
	{ RunwayIdx = 4, Points =
		{ -- 4 spawn Stbd pos 4 aft of island
			{{-48,	  11.987,      4.2},        1.0 },
			{{ 10,	  11.987,     4.2 },       1.0 },	
			{{ 20,    11.987,    -5.0 },       1.0 },
			{{ 30,    11.987,    -5.0 },       1.0 }
		}
	},	
	{ RunwayIdx = 5, Points =
		{ -- 5 spawn Stbd pos 5 aft of island
			{{-64,	  11.987,     4.2 },       1.0 },
			{{ 10,	  11.987,     4.2 },       1.0 },	
			{{ 20,    11.987,    -5.0 },       1.0 },
			{{ 30,    11.987,    -5.0 },       1.0 }
		}
	},
	{ RunwayIdx = 6, Points =
		{ -- 6 spawn Stbd pos 6 aft of island
			{{-80,	  11.987,     4.2 },       1.0 },
			{{ 10,	  11.987,     4.2 },       1.0 },	
			{{ 20,    11.987,    -5.0 },       1.0 },
			{{ 30,    11.987,    -5.0 },       1.0 }
		}
	},
}
GT.TaxiForTORoutes.RoutesForTONumber = #GT.TaxiForTORoutes;

-- ===========================================================================================================================

GT.HelicopterSpawnTerminal = 
	-- taxi routes and parking spots in LCS
	--    x				y        z			direction
{		
	{ TerminalIdx = 1, Points =
		{ -- 9 spawn spot
        {{-81.541,   11.987,   -6.832}, 0.0}
		}
	},
	{ TerminalIdx = 2, Points =
		{ -- 8 spawn spot
        {{-56.461,   11.987,   -6.832},  0.0}
		}
	},	
	{ TerminalIdx = 3, Points =
		{ -- 7 spawn spot
        {{-31.684,   11.987,   -6.832},  0.0}
		}
	},		
	{ TerminalIdx = 4, Points =
		{ -- 6 spawn spot
        {{-11.216,    11.987,     -7.727},   0.0}
		}
	},	
	{ TerminalIdx = 5, Points =
		{ -- 5 spawn spot
        {{11.522,    11.987,    -7.727},   0.0}			
		}
	},
	{ TerminalIdx = 6, Points =
		{ -- 4 spawn spot
        {{34.779,   11.987,     -7.727}, 	0.0}			
		}
	},
	{ TerminalIdx = 7, Points =
		{ -- 3 spawn spot
        {{57.693,    11.987,     -7.292},   0.0}
		}
	},	
	{ TerminalIdx = 8, Points =
		{ -- 2 spawn spot
        {{81.502,    11.987,    -6.097},   0.0}			
		}
	},
}

GT.HelicopterSpawnTerminal.TerminalNumber = #GT.HelicopterSpawnTerminal;

-- ===========================================================================================================================
-- NOTE: Not used in this model.
GT.ArrestingGears =
{
	{
		Left = {	connector_name = 'con_ARR_PORT_001' },
		Right = {	connector_name = 'con_ARR_STBD_001' }
	},
	{
		Left = {	connector_name = 'con_ARR_PORT_002' },
		Right = {	connector_name = 'Pcon_ARR_STBD_002' }
	},
	{
		Left = {	connector_name = 'con_ARR_PORT_003' },
		Right = {	connector_name = 'con_ARR_STBD_003' }
	},
	{
		Left = {	connector_name = 'con_ARR_PORT_004' },
		Right = {	connector_name = 'con_ARR_STBD_004' }
	},
}
GT.ArrestingGears.ArrestingGearsNumber = #GT.ArrestingGears;

-- ===========================================================================================================================

