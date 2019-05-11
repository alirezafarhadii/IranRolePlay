Config                            = {}

Config.DrawDistance               = 100.0
Config.MarkerType                 = 1
Config.MarkerSize                 = { x = 1.5, y = 1.5, z = 1.0 }
Config.MarkerColor                = { r = 50, g = 50, b = 204 }

Config.EnablePlayerManagement     = true
Config.EnableArmoryManagement     = true
Config.EnableESXIdentity          = true -- enable if you're using esx_identity
Config.EnableNonFreemodePeds      = false -- turn this on if you want custom peds
Config.EnableSocietyOwnedVehicles = false
Config.EnableLicenses             = true -- enable if you're using esx_license

Config.EnableHandcuffTimer        = true -- enable handcuff timer? will unrestrain player after the time ends
Config.HandcuffTimer              = 10 * 60000 -- 10 mins

Config.EnableJobBlip              = true -- enable blips for colleagues, requires esx_society

Config.MaxInService               = -1
Config.Locale                     = 'en'

Config.PoliceStations = {

	LSPD = {

		Blip = {
			Pos     = { x = 425.130, y = -979.558, z = 30.711 },
			Sprite  = 60,
			Display = 4,
			Scale   = 1.2,
			Colour  = 29,
		},

		-- https://wiki.rage.mp/index.php?title=Weapons
		AuthorizedWeapons = {
			{ name = 'WEAPON_NIGHTSTICK',       price = 100 },
			{ name = 'WEAPON_STUNGUN',       price = 500 },
			{ name = 'weapon_flashlight',       price = 100 },
			{ name = 'WEAPON_PISTOL',     price = 5000 },
			{ name = 'WEAPON_SNSPISTOL',     price = 6000 },
			{ name = 'weapon_combatpistol',     price = 7000 },
			{ name = 'weapon_pistol50',     price = 9000 },
			{ name = 'weapon_heavypistol',     price = 8000 },
			{ name = 'weapon_smg',     price = 12000 }
		},

		Cloakrooms = {
			{ x = 452.600, y = -993.306, z = 29.750 },
		},

		Armories = {
			{ x = 459.76, y = -981.11, z = 29.689 },
		},

		Vehicles = {
			{
				Spawner    = { x = 454.69, y = -1017.4, z = 27.430 },
				SpawnPoint = { x = 438.42, y = -1018.3, z = 27.757 },
				Heading    = 90.0
			},

			{
				Spawner    = { x = 473.38, y = -1018.43, z = 27.00 },
				SpawnPoint = { x = 475.98, y = -1021.65, z = 28.06 },
				Heading    = 276.11
			}
		},

		Helicopters = {
			{
				Spawner    = { x = 466.477, y = -982.819, z = 42.691 },
				SpawnPoint = { x = 450.04, y = -981.14, z = 42.691 },
				Heading    = 0.0
			}
		},

		VehicleDeleters = {
			{ x = 462.74, y = -1014.4, z = 27.065 },
			{ x = 462.40, y = -1019.7, z = 27.104 },
			{ x = 469.12, y = -1024.52, z = 27.20 }
		},

		BossActions = {
			{ x = 448.417, y = -973.208, z = 29.689 }
		},

	},

}

-- https://wiki.rage.mp/index.php?title=Vehicles
Config.AuthorizedVehicles = {
	Shared = {
		{
			model = 'pbus',
			label = 'Bus'
		},	
	},

	recruit = {
		{
			model = 'police',
			label = 'police1'
		},	
		{
			model = 'police2',
			label = 'police2'
		},
		{
			model = 'police3',
			label = 'police3'
		},	
		{
			model = 'Towtruck',
			label = 'Tow truck'
		},
	},

	officer = {
		{
			model = 'police',
			label = 'police1'
		},	
		{
			model = 'police2',
			label = 'police2'
		},
		{
			model = 'police3',
			label = 'police3'
		},	
		{
			model = 'Towtruck',
			label = 'Tow truck'
		},
    	{
			model = 'policeb',
			label = 'Motor'
		},	
		{
			model = 'Sheriff',
			label = 'Sheriff'
		},
	},

	sergeant = {
		{
			model = 'police',
			label = 'police1'
		},	
		{
			model = 'police2',
			label = 'police2'
		},
		{
			model = 'police3',
			label = 'police3'
		},	
		{
			model = 'Towtruck',
			label = 'Tow truck'
		},
		{
			model = 'policeb',
			label = 'Motor'
		},	
		{
			model = 'sheriff',
			label = 'Sheriff'
		},
		{
			model = 'police4',
			label = 'Unmarked car'
		},
		{
			model = 'riot2',
			label = 'Riot'
		},
		{
			model = 'sheriff2',
			label = 'Patrol Sheriff'
		},
	},

	lieutenant = {
		{
			model = 'police',
			label = 'police1'
		},	
		{
			model = 'police2',
			label = 'Dodge Charger'
		},
		{
			model = 'police3',
			label = 'police3'
		},	
		{
			model = 'Towtruck',
			label = 'Tow truck'
		},
		{
			model = 'policeb',
			label = 'Motor'
		},	
		{
			model = 'sheriff',
			label = 'Sheriff'
		},
    	{
			model = 'police2',
			label = 'Police2'
		},
		{
			model = 'police4',
			label = 'Unmarked car'
		},
		{
			model = 'fbi',
			label = 'FBI'
		},
		{
			model = 'sheriff2',
			label = 'Patrol Sheriff'
		},
		{
			model = 'police5',
			label = 'Lamburghini'
		},
		{
			model = 'polgs350',
			label = 'Lexus'
		},
		{
			model = 'policeold1',
			label = 'Mashin barf'
		},
		{
			model = 'policeold2',
			label = 'Patrol barf'
		},
		{
			model = 'riot2',
			label = 'Riot'
		}
	},
	chef =  = {
		{
			model = 'police',
			label = 'police1'
		},	
		{
			model = 'police2',
			label = 'Police2'
		},
		{
			model = 'police3',
			label = 'police3'
		},	
		{
			model = 'police4',
			label = 'Unmarked car'
		},
		{
			model = 'Towtruck',
			label = 'Tow truck'
		},
		{
			model = 'policeb',
			label = 'Motor'
		},	
		{
			model = 'sheriff',
			label = 'Sheriff'
		},
		{
			model = 'riot2',
			label = 'Riot'
		},
		{
			model = 'fbi',
			label = 'FBI'
		},
		{
			model = 'sheriff2',
			label = 'Patrol sheriff'
		},
		{
			model = 'police5',
			label = 'Lamburghini'
		},
		{
			model = 'polgs350',
			label = 'Lexus'
		},
		{
			model = 'insurgent2',
			label = 'S.W.A.T'
		},
		{
			model = 'Fbi2',
			label = 'Patrol FBI'
		},
		{
			model = 'policeold1',
			label = 'Mashin barf'
		},
		{
			model = 'policeold2',
			label = 'Patrol barf'
		}
	},
	boss = {
		{
			model = 'police',
			label = 'police1'
		},	
		{
			model = 'police2',
			label = 'Police2'
		},
		{
			model = 'police3',
			label = 'police3'
		},	
		{
			model = 'police4',
			label = 'Unmarked car'
		},
		{
			model = 'Towtruck',
			label = 'Tow truck'
		},
		{
			model = 'policeb',
			label = 'Motor'
		},	
		{
			model = 'sheriff',
			label = 'Sheriff'
		},
		{
			model = 'riot2',
			label = 'Riot'
		},
		{
			model = 'fbi',
			label = 'FBI'
		},
		{
			model = 'sheriff2',
			label = 'Patrol sheriff'
		},
		{
			model = 'police5',
			label = 'Lamburghini'
		},
		{
			model = 'polgs350',
			label = 'Lexus'
		},
		{
			model = 'insurgent2',
			label = 'S.W.A.T'
		},
		{
			model = 'Fbi2',
			label = 'Patrol FBI'
		},
		{
			model = 'policeold1',
			label = 'Mashin barf'
		},
		{
			model = 'policeold2',
			label = 'Patrol barf'
		}
	},
}


-- CHECK SKINCHANGER CLIENT MAIN.LUA for matching elements

Config.Uniforms = {
	recruit_wear = {
		male = {
			['tshirt_1'] = 58,  ['tshirt_2'] = 1,
			['torso_1'] = 55,   ['torso_2'] = 0,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 41,
			['pants_1'] = 25,   ['pants_2'] = 0,
			['shoes_1'] = 25,   ['shoes_2'] = 0,
			['helmet_1'] = 46,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0
		},
		female = {
			['tshirt_1'] = 35,  ['tshirt_2'] = 1,
			['torso_1'] = 48,   ['torso_2'] = 0,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 44,
			['pants_1'] = 34,   ['pants_2'] = 0,
			['shoes_1'] = 27,   ['shoes_2'] = 0,
			['helmet_1'] = 45,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0
		}
	},
	officer_wear = {
		male = {
			['tshirt_1'] = 58,  ['tshirt_2'] = 0,
			['torso_1'] = 55,   ['torso_2'] = 0,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 41,
			['pants_1'] = 25,   ['pants_2'] = 0,
			['shoes_1'] = 25,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0
		},
		female = {
			['tshirt_1'] = 35,  ['tshirt_2'] = 0,
			['torso_1'] = 48,   ['torso_2'] = 0,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 44,
			['pants_1'] = 34,   ['pants_2'] = 0,
			['shoes_1'] = 27,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0
		}
	},
	sergeant_wear = {
		male = {
			['tshirt_1'] = 58,  ['tshirt_2'] = 0,
			['torso_1'] = 55,   ['torso_2'] = 0,
			['decals_1'] = 8,   ['decals_2'] = 1,
			['arms'] = 41,
			['pants_1'] = 25,   ['pants_2'] = 0,
			['shoes_1'] = 25,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0
		},
		female = {
			['tshirt_1'] = 35,  ['tshirt_2'] = 0,
			['torso_1'] = 48,   ['torso_2'] = 0,
			['decals_1'] = 7,   ['decals_2'] = 1,
			['arms'] = 44,
			['pants_1'] = 34,   ['pants_2'] = 0,
			['shoes_1'] = 27,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0
		}
	},
	intendent_wear = {
		male = {
			['tshirt_1'] = 58,  ['tshirt_2'] = 0,
			['torso_1'] = 55,   ['torso_2'] = 0,
			['decals_1'] = 8,   ['decals_2'] = 2,
			['arms'] = 41,
			['pants_1'] = 25,   ['pants_2'] = 0,
			['shoes_1'] = 25,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0
		},
		female = {
			['tshirt_1'] = 35,  ['tshirt_2'] = 0,
			['torso_1'] = 48,   ['torso_2'] = 0,
			['decals_1'] = 7,   ['decals_2'] = 2,
			['arms'] = 44,
			['pants_1'] = 34,   ['pants_2'] = 0,
			['shoes_1'] = 27,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0
		}
	},
	lieutenant_wear = { -- currently the same as intendent_wear
		male = {
			['tshirt_1'] = 58,  ['tshirt_2'] = 0,
			['torso_1'] = 55,   ['torso_2'] = 0,
			['decals_1'] = 8,   ['decals_2'] = 2,
			['arms'] = 41,
			['pants_1'] = 25,   ['pants_2'] = 0,
			['shoes_1'] = 25,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0
		},
		female = {
			['tshirt_1'] = 35,  ['tshirt_2'] = 0,
			['torso_1'] = 48,   ['torso_2'] = 0,
			['decals_1'] = 7,   ['decals_2'] = 2,
			['arms'] = 44,
			['pants_1'] = 34,   ['pants_2'] = 0,
			['shoes_1'] = 27,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0
		}
	},
	chef_wear = {
		male = {
			['tshirt_1'] = 58,  ['tshirt_2'] = 0,
			['torso_1'] = 55,   ['torso_2'] = 0,
			['decals_1'] = 8,   ['decals_2'] = 3,
			['arms'] = 41,
			['pants_1'] = 25,   ['pants_2'] = 0,
			['shoes_1'] = 25,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0
		},
		female = {
			['tshirt_1'] = 35,  ['tshirt_2'] = 0,
			['torso_1'] = 48,   ['torso_2'] = 0,
			['decals_1'] = 7,   ['decals_2'] = 3,
			['arms'] = 44,
			['pants_1'] = 34,   ['pants_2'] = 0,
			['shoes_1'] = 27,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0
		}
	},
	boss_wear = { -- currently the same as chef_wear
		male = {
			['tshirt_1'] = 58,  ['tshirt_2'] = 0,
			['torso_1'] = 55,   ['torso_2'] = 0,
			['decals_1'] = 8,   ['decals_2'] = 3,
			['arms'] = 41,
			['pants_1'] = 25,   ['pants_2'] = 0,
			['shoes_1'] = 25,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0
		},
		female = {
			['tshirt_1'] = 35,  ['tshirt_2'] = 0,
			['torso_1'] = 48,   ['torso_2'] = 0,
			['decals_1'] = 7,   ['decals_2'] = 3,
			['arms'] = 44,
			['pants_1'] = 34,   ['pants_2'] = 0,
			['shoes_1'] = 27,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0
		}
	},
	bullet_wear = {
		male = {
			['bproof_1'] = 11,  ['bproof_2'] = 1
		},
		female = {
			['bproof_1'] = 13,  ['bproof_2'] = 1
		}
	},
	gilet_wear = {
		male = {
			['tshirt_1'] = 59,  ['tshirt_2'] = 1
		},
		female = {
			['tshirt_1'] = 36,  ['tshirt_2'] = 1
		}
	}

}