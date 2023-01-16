-- hmas_vampire_ammo.lua

-- 40mm Bofors Ammo
declare_weapon({category = CAT_SHELLS, name = "Bofors_40_Mk12_HE", user_name = _("40mm HE"),
--	model_name      = "pula", -- Bullet, no tracer
--	model_name      = "tracer_bullet_red",
--	model_name      = "tracer_bullet_yellow",
--	model_name      = "tracer_bullet_white",
--	model_name      = "tracer_bullet_green",
	model_name      = "tracer_bullet_A-10", -- LONG-WHITE
    mass            = 0.900,
    explosive       = 0.900, -- 40mm
    v0              = 881.0,
    Dv0             = 0.0027,
    Da0             = 0.00036,
    Da1             = 0.0009,
    life_time       = 8.0,
    caliber         = 40.0,

    s               = 0.0,
    j               = 0.0,
    l               = 0.0,
    charTime        = 0,
    cx              = {1.3,0.60,0.75,0.16,2.20},
    k1              = 9.0e-10,
    tracer_off      = 4,
    scale_tracer    = 8,
    rotation_freq   = 0,
    cartridge       = 0,
})