-- ***************** "HMAS Melbourne R21 1980" ******************************

--   Runways and landing strip for HMAS Melbourne R21 in DCS

-- ===========================================================================================================================

GT.RunWays =
{     
-- ===================== Runway/Landing Strip/Flight Deck/Catapult ==============
-- ================                                                    ==========
-- ================ The Flight Deck for landing must be the first      ==========
-- ================    definition in the list.                         ==========
-- ================ Following this is the definition of the take off   ==========
-- ================  runways (in this case, catapults)                 ==========
-- ================ :  As far as i can tell the glidesope arguments    ==========
-- ================ :     for the catapults do nothing                 ==========
-- ================                                                    ==========
-- ==============================================================================


--	VppStartPoint (X, Z, Y) 	Azimuth (degrees}, 	Length_Vpp,  Width_Vpp,  alsArgument, lowGlidePath, slightlyLowGlidePath, onLowerGlidePath, onUpperGlidePath, slightlyHighGlidePath, highGlidePath
	{{-36.815, 11.987, -1.55}, 	     354,       		140.0, 		36.0,	    1, 			3.5, 		  		4.0, 			4.5, 			  4.5, 				 5, 				   5.5},

--  Position:                         Angle                                    Width
-- 	   Catapult Head	            in degrees           Theoretical    (for wing clearance)     alsArgument and Glidepath elements as above (AFAICT NOT USED)
--                               360/0 = ship datum)      Length (m)            (m)
	{{71.245, 11.987, -5.823},			2.67,               43,               25.0, 				0, 2.5, 2.8, 3.0, 3.0, 3.2, 3.5},  --runway 1 (Catapult 1)	
-- 	{{73.274, 11.987, 5.727},         357.43,               110,               25.0, 				0, 2.5, 2.8, 3.0, 3.0, 3.2, 3.5},  --runway 2 (Catapult 2)

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

		{{ 42.458,	11.987,	   5.449 },		3.0}, 					-- wp1
		{{ 58.679,  11.987,	   9.911 },	    3.0}, 					-- wp2
		{{ 71.606,  11.987,	   9.537 },		3.0}, 					-- wp3
		{{ 96.387,  11.987,	   8.139 },		3.0}, 					-- wp4
	    {{108.494,	11.987,	   5.951 },		2.0}, 					-- wp5
	    {{110.149,  11.987,	   5.354 },	    2.0}					-- end park spot
	},
	
	{ -- 2 parking spot 

		{{ 42.458,	11.987,	   5.449 },		3.0}, 					-- wp1
		{{ 58.679,  11.987,	   9.911 },	    3.0}, 					-- wp2
		{{ 71.606,  11.987,	   9.537 },		3.0}, 					-- wp3
		{{ 84.167,  11.987,	   9.213 },		3.0}, 					-- wp4
		{{ 89.387,  11.987,	   8.139 },		2.0}, 					-- wp5
	    {{ 92.477,	11.987,	   6.061 },		2.0} 					-- end park spot
	},

	{ -- 3 parking spot

		{{ 42.458,	11.987,	   5.449 },		3.0}, 					-- wp1
		{{ 58.679,  11.987,	   9.911 },	    3.0}, 					-- wp2
		{{ 71.606,  11.987,	   9.637 },		2.0}, 					-- wp3
	    {{ 76.201,	11.987,	   7.332 },		2.0}  					-- end park spot
	},


	{ -- 4 parking spot		

		{{ 44.458,	11.987,	   8.5 },		3.0}, 					-- wp1
		{{ 47.091,	11.987,	   8.5 },		3.0}, 					-- wp2
		{{ 54.679,  11.987,	   8.5 },	    2.0}, 					-- wp3
		{{ 56.037,  11.987,	   7.0 },	    2.0,	1.0*60.0}  		-- end park spot : last number = 1*60sec = 1 minute for despawn object at this point
    }

}

GT.TaxiRoutes.RoutesNumber = #GT.TaxiRoutes

-- ===========================================================================================================================

GT.TaxiForTORoutes = 
--       x, z, y (-y = port, +y = stbd),     V_target (m/s)
{       
    { RunwayIdx = 1, Points =
        { -- 1 spawn Stbd pos 1 aft of island to cat 1
            {{  2.781,    11.987,      8.963 },       1.0 },
            {{ 15.772,    11.987,     -5.767 },       1.0 },    
            {{  71.245,   11.987,     -5.823 },       1.0 }
        }
    },
    { RunwayIdx = 1, Points =
        { -- 2 spawn Stbd pos 2 aft of island to cat 1
            {{ -12.965,   11.987,      8.963 },       1.0 },
            {{   0.025,   11.987,     -5.867 },       1.0 },
            {{  15.772,   11.987,     -5.867 },       1.0 },
            {{  71.245,   11.987,     -5.823 },       1.0 }
        }
    },
    { RunwayIdx = 1, Points =
        { -- 3 spawn Stbd pos 3 aft of island to cat 1
            {{ -30.166,   11.987,      8.963 },       1.0 },
            {{ -17.175,   11.987,     -5.867 },       1.0 },
            {{   0.025,   11.987,     -5.867 },       1.0 },
            {{  15.772,   11.987,     -5.867 },       1.0 },
            {{  71.245,   11.987,     -5.823 },       1.0 }
        }
    },  
    { RunwayIdx = 1, Points =
        { -- 4 spawn Stbd pos 4 aft of island to cat 1
            {{ -48.128,   11.987,      10.963},       1.0 },
            {{ -35.138,   11.987,     -5.867 },       1.0 },
            {{ -17.175,   11.987,     -5.867 },       1.0 },
            {{   0.025,   11.987,     -5.867 },       1.0 },
            {{  15.772,   11.987,     -5.867 },       1.0 },
            {{  71.245,   11.987,     -5.823 },       1.0 }
        }
    },  
    { RunwayIdx = 1, Points =
        { -- 5 spawn Stbd pos 5 aft of island to cat 1
            {{ -66.103,   11.987,      8.963 },       1.0 },
            {{ -53.104,   11.987,     -5.867 },       1.0 },
            {{ -35.138,   11.987,     -5.867 },       1.0 },
            {{ -17.175,   11.987,     -5.867 },       1.0 },
            {{   0.025,   11.987,     -5.867 },       1.0 },
            {{  15.772,   11.987,     -5.867 },       1.0 },
            {{  71.245,   11.987,     -5.823 },       1.0 }
        }
    },
    { RunwayIdx = 1, Points =
        { -- 6 spawn Port Aft most spot to cat 1
            {{ -81.507,   11.987,     -9.189 },       1.0 },
            {{ -76.405,   11.987,     -5.867 },       1.0 },
            {{ -53.104,   11.987,     -5.867 },       1.0 },
            {{ -35.138,   11.987,     -5.867 },       1.0 },
            {{ -17.175,   11.987,     -5.867 },       1.0 },
            {{   0.025,   11.987,     -5.867 },       1.0 },
            {{  15.772,   11.987,     -5.867 },       1.0 },
            {{  71.245,   11.987,     -5.823 },       1.0 }
        }
    },
}

GT.TaxiForTORoutes.RoutesForTONumber = #GT.TaxiForTORoutes;

-- ===========================================================================================================================

GT.HelicopterSpawnTerminal = 
--        x, z, y (-y = port, +y = stbd), direction (degrees)
{		
	{ TerminalIdx = 1, Points =
		{ -- 6 spawn spot
        {{-75.227,   11.987,   0},        0.0}
		}
	},
	{ TerminalIdx = 2, Points =
		{ -- 5 spawn spot
        {{-51.136,   11.987,   -4.082},   0.0}
		}
	},	
	{ TerminalIdx = 3, Points =
		{ -- 4 spawn spot
        {{-19.261,   11.987,   0},        0.0}
		}
	},		
	{ TerminalIdx = 4, Points =
		{ -- 3 spawn spot
        {{11.922,    11.987,     -5.303}, 0.0}
		}
	},	
	{ TerminalIdx = 5, Points =
		{ -- 2 spawn spot
        {{39.767,    11.987,    -4.977},  0.0}			
		}
	},
	{ TerminalIdx = 6, Points =
		{ -- 1 spawn spot
        {{93.666,   11.987,     0.763},   0.0}			
		}
	},

}
GT.HelicopterSpawnTerminal.TerminalNumber = #GT.HelicopterSpawnTerminal;

-- ===========================================================================================================================

GT.ArrestingGears =
{
-- ==============================================================================
-- ================                                                    ==========
-- ================         Arrestor Gear Definition                   ==========
-- ================                                                    ==========
-- ================  Can be specified by either in-model helper        ==========
-- ================    points of TYPE="CONNECTOR", or via regular      ==========
-- ================    coordinates.                                    ==========
-- ================  Coordinates and connectors specify the arrestor   ==========
-- ================     reels on either side of the flight deck        ==========
-- ================     for each wire.  Maximum of 4 wires.            ==========
-- ================                                                    ==========
-- ==============================================================================

	{
		Left = { pos = {-71.47, 12, -9.39} },
		Right = { pos = {-69.465, 12, 11.38} }
	},
	{
		Left = { pos = {-65.179, 12, -9.944} },
		Right = { pos = {-62.984, 12, 11.419} }
	},
	{
		Left = { pos = {-59.884, 12, -10.18} },
		Right = { pos = {-57.623, 12, 11.436} }
	},
	{
		Left = { pos = {-53.105, 12, -11.239} },
		Right = { pos = {-50.83, 12, 11.281} }
	},

--[[
	{
		Left = {	connector_name = 'con_ARR_PORT_001' },
		Right = {	connector_name = 'con_ARR_STBD_001' }
	},
	{
		Left = {	connector_name = 'con_ARR_PORT_002' },
		Right = {	connector_name = 'con_ARR_STBD_002' }
	},
	{
		Left = {	connector_name = 'con_ARR_PORT_003' },
		Right = {	connector_name = 'con_ARR_STBD_003' }
	},
	{
		Left = {	connector_name = 'con_ARR_PORT_004' },
		Right = {	connector_name = 'con_ARR_STBD_004' }
	},
--]]
}

GT.ArrestingGears.ArrestingGearsNumber = #GT.ArrestingGears;

-- ===========================================================================================================================
