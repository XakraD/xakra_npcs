Config = {}

Config.NPCS = {
    { -- Employee
        coords = vector4(-264.17, 673.86, 112.33, 172.04), -- Npc coordinates
        model = 'S_M_M_StrLumberjack_01', -- Npc model
        weapon = false, -- Choose the weapon that will be equipped or without a weapon (false)
        outfit = false, -- Outfit number or random (false)
        scenario = 'PROP_HUMAN_REPAIR_WAGON_WHEEL_ON_LARGE', -- Choose the scenario that the npc will perform or disable the scenario (false)
        anim = { animDict = false, animName = '' }, -- Choose animation or disable animation by putting false in animDict or animName
    },
    { -- Guard
        coords = vector4(-266.84, 674.53, 112.31, 260.97), -- Npc coordinates
        model = 'S_M_M_SkpGuard_01', -- Npc model
        weapon = 'WEAPON_RIFLE_BOLTACTION', -- Choose the weapon that will be equipped or without a weapon
        outfit = 8, -- Outfit number or random (false)
        scenario = 'WORLD_HUMAN_GUARD_LANTERN_NERVOUS', -- Choose the scenario that the npc will perform or disable the scenario (false)
        anim = { animDict = false, animName = '' }, -- Choose animation or disable animation by putting false in animDict or animName
    },
    { -- Drunk woman
        coords = vector4(-263.32, 676.25, 112.26, 130.61), -- Npc coordinates
        model = 'MP_ASN_BENEDICTPOINT_FEMALES_01', -- Npc model
        weapon = false, -- Choose the weapon that will be equipped or without a weapon
        outfit = 1, -- Outfit number or random (false)
        scenario = false, -- Choose the scenario that the npc will perform or disable the scenario (false)
        anim = { animDict = 'amb_misc@world_human_drunk_dancing@male@male_a@idle_b', animName = 'idle_e' }, -- Choose animation or disable animation by putting false in animDict or animName
    },
    
}