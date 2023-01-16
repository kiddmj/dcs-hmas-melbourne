-- majectic_class_stovl (based on HMAS Melbourne II)

GT = {};														-- Initialise the object properties/methods for the whole mod (as a "Weapon System"?) 
-- ===========================================================================================================================
dofile(current_mod_path..'/majestic-class-RunwaysAndRoutes-stovl.lua')		-- Include/insert additional definitions from this file here in the code.  This is the file with the runways and taxi routes specific to this variant of the module.
-- ===========================================================================================================================

GT_t.ws = 0;

set_recursive_metatable(GT, GT_t.generic_ship)

GT.visual = {}													-- Initialise the object properties/methods for the visual ship model. 
GT.visual.shape = "majestic_class_stovl"						-- name of LODs lua in the Shapes directory.  It needs to be this name with '.lods' appended.
GT.visual.shape_dstr = ""										-- Name of the LODs lua for the destroyed ship.  None definded for Melbourne.  Ship will sink on fire but otherwise intact.

-- ===========================================================================================================================
dofile(current_mod_path..'/melbourne-common.lua');				-- Include/insert additional definitions from this file here in the code.  This is the common data for all variants of this module.
-- ===========================================================================================================================

GT.Name = "majestic_class_stovl"								-- The name of the directory in the "Saved Games\Liveries" directory for additional liveries.
GT.DisplayName = _("Majestic Class Carrier (STOVL/ASW)")		-- Base model name in game/mission editor
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
--						"Arresting Gear",						-- Tells DCS that the ship is equipped with Arresting Gear (details defined in this or runways and routes lua file)
--						"catapult",								-- Tells DCS that the ship is equipped with 1 or more catapults (details defined in this or runways and routes lua file)
						"ski_jump",								-- Tells DCS that the ship is equipped with a Ski-Jump (WILL disable catapult functionality if both are defined)
						"RADAR_BAND1_FOR_ARM",					-- TBD
						"RADAR_BAND2_FOR_ARM",					-- TBD
						"DetectionByAWACS",						-- Tells DCS that the ship can be detected by AWACS
					};											-- Pre-defined constants and equipment names thqat define 
GT.Categories		= {
						{name = "AircraftCarrier"},					-- In the Aircaft Carrier category
						{name = "AircraftCarrier With Tramplin"},	-- Category of Carrier with a Ski-Jump (Misspelling of Tremplin = Springboard/Ski Jump?)
--						{name = "AircraftCarrier With Catapult"},	-- Category of carriers with a catapult
						{name = "Armed Ship"}						-- Category as an Armed (Military) Ship (as opposed to a civilian one)
					};

add_surface_unit(GT)											-- Adds the unit as an object to the DCS game engine assets.  Mandatory that this exists as the last line.

-- ===========================================================================================================================
