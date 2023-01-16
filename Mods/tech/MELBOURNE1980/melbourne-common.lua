-- hmas_melbourne - Common Parameters


GT.life = 800;											
GT.mass = 38900000;										-- Displacmeent (kg)
GT.max_velocity = 12.4									-- Maximum speed in (m/s)       	= ~24kts
GT.race_velocity = 9.25									-- Maximum dash speed (m/s)     	= 18kts
GT.economy_velocity = 7.8								-- Economic cruising speed (m/s)    = 15kts
GT.economy_distance = 13000								-- Range at cruising speed (km?)
GT.race_distance = 2.778e+006							
GT.shipLength = 226.9 									-- Waterline ship length (m)
GT.Width = 43.90 										-- Beam (Width) (m)
GT.Height = 35.226										-- Height (Keel to top of mast?) (m)
GT.Length = 236											-- Total length (m)
GT.DeckLevel = 11.987									-- Height above waterline of flight deck (m)
GT.X_nose = 107
--GT.X_nose = 107.0										-- Distance from 0,0,0 to bow @ waterline (m - for wake calculation)
GT.X_tail = -105.0										-- Distance from 0,0,0 to stern @ waterline (m - for wake calculation)
GT.Tail_Width = 10			    						-- Distance across the stern @ waterline (m - for wake calculation)
GT.Gamma_max = 0.35										-- TBD
GT.Om = 0.05											-- TBD
GT.speedup = 0.119249;									-- Rate of acceleration? (m/s/s)
GT.R_min = 665.8										-- TBD
GT.distFindObstacles = 10000							-- How far to detect obstacles (for avoidance?)
												
GT.TACAN = true;										-- Is there a TACAN (true/false)
GT.TACAN_position = {7.006,  43.155,  -14.1}			-- TACAN location on the ship (m {X,Z,Y} from 0,0,0 : +Y=port, -Y=stbd)

GT.numParking = 6										-- Number of Helipads (?), may be number of parking for FW aircraft?.
GT.Plane_Num_ = 15										-- Number of embarked aircraft (max)?
GT.Helicopter_Num_ = 6									-- Number of Helicopters (max)

GT.airWeaponDist = 5000									-- Max range to engage enemy air threats
GT.airFindDist = 18000									

--GT.LSOView  = R1281_LSOView

GT.exhaust = {
	  [1] = { size = 0.4 , pos = {22, 25, 12.7 } },				-- Smoke Origin from Funnel (Y, Z, X : where +Y=port, -Y=stbd)
      --[2] = { size = 1.0 , pos = {-1.9, 29.0, 14.0 } },		-- as above if there is a second funnel
}


 -- This was copied verbatum from the Super Carrier code.  as no lights exist in the model at the momnent, they will not activate anything.
 
--GT.Landing_Point = {-104.0, 19.6, -33.0}
--GT.animation_arguments.arresting_wires = {141, 142, 143, 144}
--GT.animation_arguments.catapult_shuttles = {145, 146, 147, 148}
--GT.animation_arguments.holdback_bars_pos = {817, 818, 819, 820}
--GT.animation_arguments.holdback_bars_angle = {808, 809, 810, 811}
--GT.animation_arguments.holdback_bars_color = {812, 813, 814, 815}
--GT.animation_arguments.holdback_bars_deck_cleat = {804, 805, 806, 807}
--GT.animation_arguments.bubbles = {138, 139}


--GT.animation_arguments.catapult_shuttles = {145}				-- animation arguments for the catapult shuttle. Usually from starboard to port, 145-148 are used.
--GT.animation_arguments.elevators = {57, 58};					-- animation arguments for aircraft elevator animations.  (lift1, lift2, etc from the 
--GT.animation_arguments.elevators_doors = {47, 48};
--GT.animation_arguments.landing_strip_illumination = 150;

--[[
GT.carrierIlluminationStates = {  -- Not sure what the numbers are at this stage. Possibly the first is the animation number for a set of lights for the different states flight ops 
                                 {{307, 0.0, 0.4}, {791, 0.0, 1.0}, {792, 0.0, 1.0}, {797, 0.0, 1.0}},										-- NAV_LIGHTS
                                 {{307, 0.0, 0.9}, {150, 0.0, 1.0}, {790, 0.0, 1.0}, {791, 0.0, 0.5}, {792, 0.0, 0.5}, {797, 0.0, 1.0}},	-- AC_LAUNCH_STATE
                                 {{150, 0.0, 1.0}, {790, 0.0, 1.0}, {797, 0.0, 1.0}},														-- AC_RECOVERY_STATE
                                } -- This was copied verbatum from the Super Carrier code.  as no lights exist in the model at the momnent, they will not activate anything.
]]--

-- ==============================================================================
-- ================             Radar rotations and speeds             ==========
-- ================                                                    ==========
-- ================ : relates to animations and arguments in the model ==========
-- ================ : radar_period: integer - more is slower           ==========
-- ================ :                but difference in speed is hard   ==========
-- ================ :                to detect after about 5-6         ==========
-- ================ :  Model has 5 key frames at 0, 25, 50, 75, & 100  ==========
-- ================ :        but 0 and 100 are the same position       ==========
-- ================                                                    ==========
-- ==============================================================================

GT.animation_arguments.radar1_rotation = 3; -- Radar 1 Rotation
GT.radar1_period = 7;

GT.animation_arguments.radar2_rotation = 2; -- Radar 2 Rotation
GT.radar2_period = 7;

GT.animation_arguments.radar3_rotation = 11; -- Flag Animation
GT.radar3_period = 3;

GT.animation_arguments.luna_lights = 150;

--GT.animation_arguments.water_propeller = 8;

-- ==============================================================================
-- ================ Damage Model (segmentation of the collision model) ==========
-- ================                                                    ==========
-- ================ area_name : Name of the model element              ==========
-- ================                    of the collision shell          ==========
-- ================ area_arg : The user argument DAMAGE_ARGUMENT="";   ==========
-- ================              on the collision shell defines which  ==========
-- ================              element of the collision shell this   ==========
-- ================                                     refers to.     ==========
-- ================ area_life : The hit damage of the component.       ==========
-- ================               (Units Unknown)                      ==========
-- ================ area_fire : The connector name on the collision    ==========
-- ================               shell that the fire animation        ==========
-- ================               connects to, and what size the fire  ==========
-- ================               should be.  Units Unknown.           ==========
-- ================                                                    ==========
-- ==============================================================================

GT.DM = {
    { area_name = "ISLAND", 				area_arg = 70, area_life = 50, area_fire = { connector = "FIRE_ISLAND_01", size = 0.5}},
    { area_name = "HULL_FWD_PORT", 			area_arg = 71, area_life = 150, area_fire = { connector = "FIRE_HULL_FWD_PORT_01", size = 0.5}},
    { area_name = "HULL_MID_PORT", 			area_arg = 72, area_life = 150, area_fire = { connector = "FIRE_HULL_MID_PORT_01", size = 0.5}},
    { area_name = "HULL_AFT_PORT", 			area_arg = 73, area_life = 150, area_fire = { connector = "FIRE_HULL_STERN_PORT_01", size = 0.5}},
    { area_name = "HULL_FWD_STBD", 			area_arg = 76, area_life = 150, area_fire = { connector = "FIRE_HULL_FWD_STBD_01", size = 0.5}},
    { area_name = "HULL_MID_STBD", 			area_arg = 77, area_life = 150, area_fire = { connector = "FIRE_HULL_MID_STBD_01", size = 0.5}},
    { area_name = "HULL_AFT_STBD", 			area_arg = 78, area_life = 150, area_fire = { connector = "FIRE_HULL_STERN_STBD_01", size = 0.5}},
    { area_name = "PALUBA_FWD", 				area_arg = 79, area_life = 150, area_fire = { connector = "FIRE_DECK_FWD", size = 0.5}},
    { area_name = "PALUBA_MID", 				area_arg = 80, area_life = 150, area_fire = { connector = "FIRE_DECK_MID", size = 0.5}},
    { area_name = "PALUBA_REAR", 				area_arg = 81, area_life = 150, area_fire = { connector = "FIRE_DECK_AFT", size = 0.5}},

}


-- ==============================================================================
-- ================             Weapon System Definitions              ==========
-- ================                                                    ==========
-- ================    Definition of the weapon parameters for use     ==========
-- ================          in the turret definitions                 ==========
-- ================                                                    ==========
-- ==============================================================================

-- Bofors Mk 12 (40 mm) naval AAA weapons. Source: https://en.wikipedia.org/wiki/Bofors_40_mm_gun
-- Used default Mark 15 CIWS Phalanx Block 1 weapon system as template with alterations

GT_t.WS_t.ship_Bofors_40_Mk_12 = {name = "40 mm Bofors Mk 12"};
GT_t.WS_t.ship_Bofors_40_Mk_12.angles = {
                    {math.rad(180), math.rad(-180), math.rad(-5), math.rad(90)},
                    };
GT_t.WS_t.ship_Bofors_40_Mk_12.omegaY = math.rad(115)									-- TBD
GT_t.WS_t.ship_Bofors_40_Mk_12.omegaZ = math.rad(116)									-- TBD
GT_t.WS_t.ship_Bofors_40_Mk_12.pidY = {p=300, i = 0.05, d = 10.0, inn = 1000};			-- TBD
GT_t.WS_t.ship_Bofors_40_Mk_12.pidZ = {p=300, i = 0.05, d = 10.0, inn = 1000};			-- TBD
GT_t.WS_t.ship_Bofors_40_Mk_12.reference_angle_Z = 0									-- Vertical resting angle of the guns relative to horizontal.  + = up, - = down
GT_t.WS_t.ship_Bofors_40_Mk_12.LN = {}													-- component initialisation
GT_t.WS_t.ship_Bofors_40_Mk_12.LN[1] = {}												-- sub-component (array) initialisation
GT_t.WS_t.ship_Bofors_40_Mk_12.LN[1].type = 3											-- What sort of gun.  3 = machine cannon/gun
GT_t.WS_t.ship_Bofors_40_Mk_12.LN[1].distanceMin = 10									-- Minimum firing istance (m)
GT_t.WS_t.ship_Bofors_40_Mk_12.LN[1].distanceMax = 7160									-- Maximum effective shooting range
GT_t.WS_t.ship_Bofors_40_Mk_12.LN[1].max_trg_alt = 3800									-- Minimum altitude for targets before firing.
GT_t.WS_t.ship_Bofors_40_Mk_12.LN[1].reactionTime = 1.8									-- How long it takes to prep gthe gun after a threat is detected.
GT_t.WS_t.ship_Bofors_40_Mk_12.LN[1].beamWidth = math.rad(1);							-- Accuracy/shot spread (Radians)
GT_t.WS_t.ship_Bofors_40_Mk_12.LN[1].sensor = {}									    -- sub-component initialisation
set_recursive_metatable(GT_t.WS_t.ship_Bofors_40_Mk_12.LN[1].sensor, GT_t.WSN_t[3])     -- TBD
GT_t.WS_t.ship_Bofors_40_Mk_12.LN[1].PL = {}											-- sub-component (array) initialisation
GT_t.WS_t.ship_Bofors_40_Mk_12.LN[1].PL[1] = {}											-- sub-component (array) initialisation
GT_t.WS_t.ship_Bofors_40_Mk_12.LN[1].PL[1].ammo_capacity = 100000;						-- Rounds before empty
GT_t.WS_t.ship_Bofors_40_Mk_12.LN[1].PL[1].shell_name = {"Bofors_40_Mk12_HE"};			-- Name of shell (relevance unknown)
GT_t.WS_t.ship_Bofors_40_Mk_12.LN[1].PL[1].shell_display_name = "40mm HE";				-- Name of shell (relevance unknown)
GT_t.WS_t.ship_Bofors_40_Mk_12.LN[1].PL[1].shot_delay = 60/120							-- Rate of fire per barrel (120 rpm = 0.5 seconds)
GT_t.WS_t.ship_Bofors_40_Mk_12.LN[1].PL[1].reload_time = 1000000;						-- Reload time (1000000 = never during the mission (ship autogun))
GT_t.WS_t.ship_Bofors_40_Mk_12.LN[1].BR = { {pos = {3.478, 0, 0} }, }					-- TBD


-- =================================================================================
-- ===========                                                           ===========
-- ===========        Individual weapon mount definitions                ===========
-- ===========                                                           ===========
-- =========== NOTES:                                                    ===========
-- ===========  The turret animation arguments used in this file follow  ===========
-- ===========  the following numbering system:                          ===========
-- ===========   Turrets numbered 1-8 clockwise from starboard bow       ===========
-- ===========   Animation numbers for this particular model are:        ===========
-- ===========      40+<turret number> for azimuth                       ===========
-- ===========      50+<turret number> for elevaton                      ===========
-- ===========                                                           ===========
-- ===========  Any entry here superceeds any definitions in the         ===========
-- ===========    General weapon type definition.                        ===========
-- ===========  for example:                                             ===========
-- ===========   GT_t.WS_t.ship_Bofors_40_Mk_12.reference_angle_Z = 0    ===========
-- ===========    can be defined in the general weapon definition for    ===========
-- ===========       all bofors guns, or individually for any turret.    ===========
-- ===========                                                           ===========
-- ===========  Turrets with more ethan one barrel have more than one    ===========
-- ===========   barrel definition.  Definitions and should be equal in  ===========
-- ===========   number to exactly the number of barrels on the turret.  ===========
-- ===========   If there are fewer barrels defined than exist in the    ===========
-- ===========     model, only the number defined in the lua will shoot, ===========
-- ===========     and effects will only appear on the helper(s) as      ===========
-- ===========     defined in the lua.                                   ===========
-- ===========   If more definitions are defined in lua, regardless of   ===========
-- ===========     the helper name specified, DCS will walk back up the  ===========
-- ===========     helper heirachy to the helper defined in the          ===========
-- ===========     'GT.WS[ws].center =' definition and effects will      ===========
-- ===========     be seen originating at the base of the turret.        ===========
-- ===========                                                           ===========
-- ===========  Most angular values are in radians.                      ===========
-- ===========   the function 'math.rad(<degrees>)' is used to convert.  ===========
-- ===========                                                           ===========
-- =================================================================================

GT.WS = {};																-- Initialise the Weapon System resources
local ws;																-- Initialise the Weapon System resources
GT.WS.maxTargetDetectionRange = 450000;									-- Max threat detection range for the ship as a whole.
GT.WS.radar_type = 102;													-- TBD - from a lua database reference somewhere

--- 1)  Single Bofors 40 mm gun - Fwd Turret, Fwd Sponson Starboard
ws = GT_t.inc_ws();														-- Initialise an instance for this element of the weapon system
GT.WS[ws] = {};															-- Initialise an instance for this element of the weapon system
set_recursive_metatable(GT.WS[ws], GT_t.WS_t.ship_Bofors_40_Mk_12 );	-- TBD
GT.WS[ws].area = 'HULL_FWD_PORT';										-- The name of the area on the damage model that includes this weapon
GT.WS[ws].center = 'CENTER_TOWER_01';									-- The point helper object that the weapon movement heirachy is linked to
GT.WS[ws].drawArgument1 = 41;											-- The animation argument number in the model for the turret rotation. Can be any unused number, but between 40 and 60 is usually OK (integer)
GT.WS[ws].drawArgument2 = 51;											-- The animation argument number in the model for the turret elevation. Can be any unused number, but between 40 and 60 is usually OK (integer)
GT.WS[ws].angles[1][1] = math.rad(0);									-- most anti-clockwise azimuth (rotational) angle referenced to the ship longitudinal direction. - = clockwise, + = anti-clockwise from ship datum (radians)
GT.WS[ws].angles[1][2] = math.rad(-160);								-- most clockwise azimuth (rotational) angle referenced to the ship longitudinal direction. - = clockwise, + = anti-clockwise from ship datum (radians)
GT.WS[ws].angles[1][3] = math.rad(-5);									-- minimum elevation angle reference to the horizontal (radians)
GT.WS[ws].angles[1][4] = math.rad(70);									-- maximum elevation angle reference to the horizontal (radians)
GT.WS[ws].reference_angle_Y = math.rad(-90);  							-- azimuth (rotational) angle of the turret when not engaged (at rest) (radians)
GT.WS[ws].LN[1].BR[1].recoilTime = 1.0;									-- Weapon recoil animation duration (seconds)
GT.WS[ws].LN[1].BR = 													-- Beginning of the initialisation for the barrel definitions (for guns)
{
	{
		connector_name = 'POINT_Bofors_1_1',							-- Point connector in model at end of the barrel.  Has direction.  Used to attach flame and smoke when firing.
--		recoilArgument = 130,											-- Animation argument for recoil animation (not used on Melbourne)
	}
}

--- 2)  Single Bofors 40 mm gun - Aft Turret, Fwd Sponson Starboard
ws = GT_t.inc_ws();
GT.WS[ws] = {};
set_recursive_metatable(GT.WS[ws], GT_t.WS_t.ship_Bofors_40_Mk_12 );
GT.WS[ws].area = 'HULL_FWD_PORT';
GT.WS[ws].center = 'CENTER_TOWER_02';
GT.WS[ws].drawArgument1 = 42;
GT.WS[ws].drawArgument2 = 52;
GT.WS[ws].angles[1][1] = math.rad(-20);
GT.WS[ws].angles[1][2] = math.rad(-160);
GT.WS[ws].angles[1][3] = math.rad(-5);
GT.WS[ws].angles[1][4] = math.rad(70);
GT.WS[ws].reference_angle_Y = math.rad(-90);  
GT.WS[ws].LN[1].BR[1].recoilTime = 1.0;
GT.WS[ws].LN[1].BR = 
{
	{
		connector_name = 'POINT_Bofors_2_1',
--		recoilArgument = 131,
	}
}

--- 3)  Single Bofors 40 mm gun - Fwd Turret, Midships Sponson Port
ws = GT_t.inc_ws();
GT.WS[ws] = {};
set_recursive_metatable(GT.WS[ws], GT_t.WS_t.ship_Bofors_40_Mk_12 );
GT.WS[ws].area = 'HULL_MID_PORT';
GT.WS[ws].center = 'CENTER_TOWER_03';
GT.WS[ws].drawArgument1 = 43;
GT.WS[ws].drawArgument2 = 53;
GT.WS[ws].angles[1][1] = math.rad(150);
GT.WS[ws].angles[1][2] = math.rad(30);
GT.WS[ws].angles[1][3] = math.rad(-5);
GT.WS[ws].angles[1][4] = math.rad(70);
GT.WS[ws].reference_angle_Y = math.rad(90);  
GT.WS[ws].LN[1].BR[1].recoilTime = 1.0;
GT.WS[ws].LN[1].BR = 
{
	{
		connector_name = 'POINT_Bofors_3_1',
--		recoilArgument = 132,
	}
}

--- 4)  Single Bofors 40 mm gun - Aft Turret, Midships Sponson Port
ws = GT_t.inc_ws();
GT.WS[ws] = {};
set_recursive_metatable(GT.WS[ws], GT_t.WS_t.ship_Bofors_40_Mk_12 );
GT.WS[ws].area = 'HULL_MID_PORT';
GT.WS[ws].center = 'CENTER_TOWER_04';
GT.WS[ws].drawArgument1 = 44;
GT.WS[ws].drawArgument2 = 54;
GT.WS[ws].angles[1][1] = math.rad(150);
GT.WS[ws].angles[1][2] = math.rad(30);
GT.WS[ws].angles[1][3] = math.rad(-5);
GT.WS[ws].angles[1][4] = math.rad(70);
GT.WS[ws].reference_angle_Y = math.rad(90);  
GT.WS[ws].LN[1].BR[1].recoilTime = 1.0;
GT.WS[ws].LN[1].BR = 
{
	{
		connector_name = 'POINT_Bofors_4_1',
--		recoilArgument = 133,
	}
}

--- 5)  Dual Bofors 40 mm gun - Fwd Sponson Starboard
ws = GT_t.inc_ws();
GT.WS[ws] = {};
set_recursive_metatable(GT.WS[ws], GT_t.WS_t.ship_Bofors_40_Mk_12 );
GT.WS[ws].area = 'HULL_FWD_PORT';
GT.WS[ws].center = 'CENTER_TOWER_05';
GT.WS[ws].drawArgument1 = 45;
GT.WS[ws].drawArgument2 = 55;
GT.WS[ws].angles[1][1] = math.rad(-30);
GT.WS[ws].angles[1][2] = math.rad(-160);
GT.WS[ws].angles[1][3] = math.rad(-5);
GT.WS[ws].angles[1][4] = math.rad(70);
GT.WS[ws].reference_angle_Y = math.rad(-90);  
GT.WS[ws].reference_angle_Z = math.rad(5);  
GT.WS[ws].LN[1].BR[1].recoilTime = 1.0;
GT.WS[ws].LN[1].BR = 
{
	{
		connector_name = 'POINT_Bofors_5_1',
--		recoilArgument = 134,
	},
	{
		connector_name = 'POINT_Bofors_5_2',
--		recoilArgument = 135,
	}
}

--- 6)  Dual Bofors 40 mm gun - Midships Sponson Starboard
ws = GT_t.inc_ws();
GT.WS[ws] = {};
set_recursive_metatable(GT.WS[ws], GT_t.WS_t.ship_Bofors_40_Mk_12 );
GT.WS[ws].area = 'HULL_AFT_PORT';
GT.WS[ws].center = 'CENTER_TOWER_06';
GT.WS[ws].drawArgument1 = 46;
GT.WS[ws].drawArgument2 = 56;
GT.WS[ws].angles[1][1] = math.rad(-20);
GT.WS[ws].angles[1][2] = math.rad(-150);
GT.WS[ws].angles[1][3] = math.rad(-5);
GT.WS[ws].angles[1][4] = math.rad(70);
GT.WS[ws].reference_angle_Y = math.rad(-90);  
GT.WS[ws].reference_angle_Z = math.rad(5);  
GT.WS[ws].LN[1].BR[1].recoilTime = 1.0;
GT.WS[ws].LN[1].BR = 
{
	{
		connector_name = 'POINT_Bofors_6_1',
--		recoilArgument = 136,
	},
	{
		connector_name = 'POINT_Bofors_6_2',
--		recoilArgument = 137,
	}
}

--- 7)  Dual Bofors 40 mm gun - Midships Sponson Port
ws = GT_t.inc_ws();
GT.WS[ws] = {};
set_recursive_metatable(GT.WS[ws], GT_t.WS_t.ship_Bofors_40_Mk_12 );
GT.WS[ws].area = 'HULL_AFT_STBD';
GT.WS[ws].center = 'CENTER_TOWER_07';
GT.WS[ws].drawArgument1 = 47;
GT.WS[ws].drawArgument2 = 57;
GT.WS[ws].angles[1][1] = math.rad(150);
GT.WS[ws].angles[1][2] = math.rad(20);
GT.WS[ws].angles[1][3] = math.rad(-5);
GT.WS[ws].angles[1][4] = math.rad(70);
GT.WS[ws].reference_angle_Y = math.rad(90);  
GT.WS[ws].reference_angle_Z = math.rad(5);  
GT.WS[ws].LN[1].BR[1].recoilTime = 1.0;
GT.WS[ws].LN[1].BR = 
{
	{
		connector_name = 'POINT_Bofors_7_1',
--		recoilArgument = 138,
	},
	{
		connector_name = 'POINT_Bofors_7_2',
--		recoilArgument = 139,
	}
}

--- 8)  Dual Bofors 40 mm gun - Aft Sponson Port
ws = GT_t.inc_ws();
GT.WS[ws] = {};
set_recursive_metatable(GT.WS[ws], GT_t.WS_t.ship_Bofors_40_Mk_12 );
GT.WS[ws].area = 'HULL_AFT_STBD';
GT.WS[ws].center = 'CENTER_TOWER_08';
GT.WS[ws].drawArgument1 = 48;
GT.WS[ws].drawArgument2 = 58;
GT.WS[ws].angles[1][1] = math.rad(160);
GT.WS[ws].angles[1][2] = math.rad(20);
GT.WS[ws].angles[1][3] = math.rad(-5);
GT.WS[ws].angles[1][4] = math.rad(70);
GT.WS[ws].reference_angle_Y = math.rad(90);  
GT.WS[ws].reference_angle_Z = math.rad(5);  
GT.WS[ws].LN[1].BR[1].recoilTime = 1.0;
GT.WS[ws].LN[1].BR = 
{
	{
		connector_name = 'POINT_Bofors_8_1',
--		recoilArgument = 140,
	},
	{
		connector_name = 'POINT_Bofors_8_2',
--		recoilArgument = 141,
	}
}

-- ===========================================================================================================================

