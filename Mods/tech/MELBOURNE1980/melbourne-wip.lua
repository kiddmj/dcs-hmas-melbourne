-- hmas_melbourne_hybrid

mount_vfs_texture_path  (current_mod_path.."/Textures/FW/mel-yellow-deck-markings");

GT = {};														-- Initialise the object properties/methods for the whole mod (as a "Weapon System"?) 
-- ===========================================================================================================================
dofile(current_mod_path..'/melbourneRunwaysAndRoutes-wip.lua') -- Include/insert additional definitions from this file here in the code.  This is the file with the runways and taxi routes specific to this variant of the module.
-- ===========================================================================================================================

GT_t.ws = 0;

set_recursive_metatable(GT, GT_t.generic_ship)

GT.visual = {}													-- Initialise the object properties/methods for the visual ship model. 
GT.visual.shape = "hmas_melbourne_wip"							-- name of LODs lua in the Shapes directory.  It needs to be this name with '.lods' appended.
GT.visual.shape_dstr = ""										-- Name of the LODs lua for the destroyed ship.  None definded for Melbourne.  Ship will sink on fire but otherwise intact.

-- ===========================================================================================================================
dofile(current_mod_path..'/melbourne-common.lua');				-- Include/insert additional definitions from this file here in the code.  This is the common data for all variants of this module.
-- ===========================================================================================================================

GT.animation_arguments.arresting_wires = {400, 401, 402, 403}	-- Animation of the built in arrestor wires when an aircraft catches a wire.  Maximum of 4 in Wire number order.
GT.animation_arguments.catapult_shuttles = { 145 }				-- Animation argument for the Catapult Shuttle.  Only one on Melbourne, so 145 is used.
GT.animation_arguments.landing_strip_illumination = 150;

-- Instrument Carrier Landing System
GT.ICLS						= true;
GT.ICLS_Localizer_position	= {-46.1, 3.44, 10.32, 186.0}	-- {x [m], y [m], z [m], yaw [deg]}
GT.ICLS_Glideslope_position	= {-1.5, 18.75, 12.7, 3.5}	-- {x [m], y [m], z [m], glideslope = 3.5 [deg]}

-- Optical Landing System
GT.OLS = {
	Type = GT_t.OLS_TYPE.IFLOLS, 
	CutLightsArg = 404, 
	DatumAndWaveOffLightsArg = 405, 
	MeatBallArg = 151, 
	GlideslopeBasicAngle = 3.5, 
	VerticalCoverageAngle = 1.7
}

-- Aviation Facilities
GT.Landing_Point	= {-71.0, 19.9, -8.0} 

-- LSO View.
--GT.LSOView = {
--	cockpit = "empty", 
--	position = {
--		connector = "POINT-LSO-VIEW",
--		offset = {-79.0, 13.82, -13.2, -174, 3.6}
--	}
--}

-- ===========================================================================================================================

GT.Name = "hmas_melbourne_wip"									-- The name of the directory in the "Saved Games\Liveries" directory for additional liveries.
GT.DisplayName = _("HMAS Melbourne (Fixed Wing [WIP])")			-- Base model name in game/mission editor
GT.Rate = 5500.000000											-- TBD

GT.Sensors = {  												-- Pre-defined sensor properties fitted to the ship.  Nearest applicable ones may need to be used.
				OPTIC = {"long-range naval optics", 			-- Optical Sensors (From Mk I Eyeballs?, to Binoculars?, to Laser Ranging?)
                         "long-range naval LLTV", 				-- Long Range Low Light TV?
						 "long-range naval FLIR",},				-- Long range Forward Looking Infra Red
                RADAR = {
				    "Osa 9A33 ln",								-- Anti-Air Radar with the lock/tracking capabilites of the OSA SAM missile system
					"rezki search radar",
                    "carrier search radar",						-- Generic Search Radar
                },
            };

GT.DetectionRange	= GT.airFindDist;							-- This comes from definitions in melbourne-common.lua
GT.ThreatRange		= GT.airWeaponDist;							-- This comes from definitions in melbourne-common.lua
GT.Singleton		= "yes";									-- TBD
GT.mapclasskey		= "P0091000065";							-- Appearance of the ship icon on the map.

GT.attribute		= {wsType_Navy, wsType_Ship, wsType_AirCarrier, WSTYPE_PLACEHOLDER,  -- Internal DCS constants for various properties 
						"Aircraft Carriers",					-- Tells DCS that the ship has the inherent properties defined for an Aircraft Carrier in the DCS game engine
						"Arresting Gear",						-- Tells DCS that the ship is equipped with Arresting Gear (details defined in this or runways and routes lua file)
						"catapult",								-- Tells DCS that the ship is equipped with 1 or more catapults (details defined in this or runways and routes lua file)
--						"ski_jump",								-- Tells DCS that the ship is equipped with a Ski-Jump (WILL disable catapult functionality if both are defined)
						"RADAR_BAND1_FOR_ARM",					-- TBD
						"RADAR_BAND2_FOR_ARM",					-- TBD
						"DetectionByAWACS",						-- Tells DCS that the ship can be detected by AWACS
					};											-- Pre-defined constants and equipment names thqat define 
GT.Categories		= {
						{name = "AircraftCarrier"},					-- In the Aircaft Carrier category
						{name = "AircraftCarrier With Tramplin"},	-- Category of Carrier with a Ski-Jump (Misspelling of Tremplin = Springboard/Ski Jump?)
						{name = "AircraftCarrier With Catapult"},	-- Category of carriers with a catapult
						{name = "Armed Ship"}						-- Category as an Armed (Military) Ship (as opposed to a civilian one)
					};

add_surface_unit(GT)											-- Adds the unit as an object to the DCS game engine assets.  Mandatory that this exists as the last line.

-- ===========================================================================================================================

