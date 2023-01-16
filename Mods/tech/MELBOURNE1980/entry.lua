
declare_plugin("HMAS Melbourne by Bungo",
{
dirName		  = current_mod_path,
displayName   = _("HMAS Melbourne"),
shortName	  =   "Melbourne",
version		  =   __DCS_VERSION__,
state		  =   "installed",
developerName =   "Bungo",
info		  =    _("HMAS Melbourne R21, Australia's last fixed wing aircraft carrier.  Served between 1955 and 1982 operating Sea Venoms, Gannets, A-4 Skyhawks, S-2 Trackers, Wessex, and Sea King helicopters."),

encyclopedia_path = current_mod_path..'/Encyclopedia',

Skins	=
	{
		{
			name	= _("HMAS Melbourne 1"),
			dir		= "Theme/1"
		},
		{
			name	= _("HMAS Melbourne 2"),
			dir		= "Theme/2"
		},
	},
})

local function ship_file(f)
	if dofile(f) then
		error("can't load file "..f);
		return
	end
	if(GT) then
		GT.shape_table_data = 
		{
			{
				file  	    = GT.visual.shape;
				username    = GT.Name;
				desrt       = GT.visual.shape_dstr;
			    classname 	= "lLandShip";
				positioning = "BYNORMAL";
			},
			{
				name  = GT.visual.shape_dstr;
				file  = GT.visual.shape_dstr;
			},
		}
		add_surface_unit(GT);
		GT = nil;
	else
		error("GT empty in file "..f);
	end;
end


mount_vfs_liveries_path (current_mod_path.."/Liveries");
mount_vfs_model_path    (current_mod_path.."/Shapes");
mount_vfs_texture_path	(current_mod_path.."/Textures");
mount_vfs_texture_path  (current_mod_path.."/Textures/ASW/HMAS-Sydney-Fictional")
mount_vfs_texture_path  (current_mod_path.."/Textures/ASW/HMS-Albion-R07-LPH")
mount_vfs_texture_path  (current_mod_path.."/Textures/ASW/HMS-Bulwark-R08-LPH")
mount_vfs_texture_path  (current_mod_path.."/Textures/ASW/HMS-Ocean-R68-LPH")
mount_vfs_texture_path  (current_mod_path.."/Textures/FW/Red-Flight-Deck-Markings")
mount_vfs_texture_path  (current_mod_path.."/Textures/FW/Yellow-1960s")
mount_vfs_texture_path  (current_mod_path.."/Textures/FW/ARA-25-de-Mayo")
mount_vfs_texture_path  (current_mod_path.."/Textures/FW/HMCS-Bonaventure")
mount_vfs_texture_path  (current_mod_path.."/Textures/FW/HMS-Centaur-R06")
mount_vfs_texture_path  (current_mod_path.."/Textures/FW/HMS-Warrior-R31")
mount_vfs_texture_path  (current_mod_path.."/Textures/FW/NAeL-Minas-Gerais-A11")
mount_vfs_texture_path  (current_mod_path.."/Textures/FW/mel-yellow-deck-markings")
mount_vfs_texture_path  (current_mod_path.."/Textures/mel-common-textures")


ship_file(current_mod_path..'/melbourne.lua');
ship_file(current_mod_path..'/melbourne-wip.lua');
ship_file(current_mod_path..'/majestic-class-stovl.lua');
dofile(current_mod_path..'/hmas_melbourne_ammo.lua');


plugin_done()