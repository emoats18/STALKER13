/**
 * Game area designations.
 *
**/

/** Environment Identifiers **/

// Generic
#define ENVIRONMENT_INDOORS_SAFE 1
#define ENVIRONMENT_INDOORS_EXPOSED 2
#define ENVIRONMENT_OUTDOORS_SAFE 3
#define ENVIRONMENT_OUTDOORS_EXPOSED 4

// Kordon
#define ENVIRONMENT_SIDOROVICH_BASEMENT 5
#define ENVIRONMENT_100_ROENTGEN 6
#define ENVIRONMENT_BANDIT_CAMP 7

// Abstract stalker map area
/area/stalker
	icon = 'icons/stalker/areas.dmi'
	name = "Strange Location"
	icon_state = "away"
	has_gravity = 1

// Abstract blowout-affected area
/area/stalker/blowout
	requires_power = 1

/** Generic Areas **/

// Sidorovich's Basement
/area/stalker/sidor
	name = "Sidorovich Basement"
	icon = 'icons/stalker/areas_buildings.dmi'
	icon_state = "sidor"
	requires_power = 1
	ambient_music = list()
	ambient_background = list('sound/stalker/ambience/sidor_music2.ogg')
	ambient_background_cooldown = list(700, 700, 700, 700)
	environment = ENVIRONMENT_SIDOROVICH_BASEMENT
	safezone = 0

/area/stalker/blowout/outdoor
	name = "Outdoor"
	icon = 'icons/stalker/areas_outdoor_blowout.dmi'
	icon_state = "outdoor"
	requires_power = 1
	luminosity = 1
	open_space = TRUE
	dynamic_lighting = DYNAMIC_LIGHTING_ENABLED
	ambient_environment = list(
		'sound/stalker/ambience/rnd_outdoor/rnd_bird_1.ogg', 'sound/stalker/ambience/rnd_outdoor/rnd_bird_2.ogg',
		'sound/stalker/ambience/rnd_outdoor/rnd_bird_3.ogg', 'sound/stalker/ambience/rnd_outdoor/rnd_bird_4.ogg',
		'sound/stalker/ambience/rnd_outdoor/rnd_bird_5.ogg', 'sound/stalker/ambience/rnd_outdoor/rnd_bird_6.ogg',
		'sound/stalker/ambience/rnd_outdoor/rnd_bird_7.ogg', 'sound/stalker/ambience/rnd_outdoor/rnd_bird_8.ogg',
		'sound/stalker/ambience/rnd_outdoor/rnd_bird_9.ogg', 'sound/stalker/ambience/rnd_outdoor/rnd_bird_10.ogg',
		'sound/stalker/ambience/rnd_outdoor/rnd_bird_11.ogg',
		'sound/stalker/ambience/rnd_outdoor/rnd_dog1.ogg', 'sound/stalker/ambience/rnd_outdoor/rnd_dog2.ogg',
		'sound/stalker/ambience/rnd_outdoor/rnd_dog3.ogg', 'sound/stalker/ambience/rnd_outdoor/rnd_dog4.ogg',
		'sound/stalker/ambience/rnd_outdoor/rnd_dog5.ogg', 'sound/stalker/ambience/rnd_outdoor/rnd_dog6.ogg',
		'sound/stalker/ambience/rnd_outdoor/rnd_dog7.ogg', 'sound/stalker/ambience/rnd_outdoor/rnd_dog8.ogg',
		'sound/stalker/ambience/rnd_outdoor/rnd_dog9.ogg', 'sound/stalker/ambience/rnd_outdoor/rnd_dog10.ogg',
		'sound/stalker/ambience/rnd_outdoor/rnd_crow_1.ogg', 'sound/stalker/ambience/rnd_outdoor/rnd_crow_2.ogg',
		'sound/stalker/ambience/rnd_outdoor/rnd_crow_3.ogg', 'sound/stalker/ambience/rnd_outdoor/rnd_crow_4.ogg',
		'sound/stalker/ambience/rnd_outdoor/rnd_crow_5.ogg', 'sound/stalker/ambience/rnd_outdoor/rnd_crow_6.ogg',
		'sound/stalker/ambience/rnd_outdoor/rnd_crow_7.ogg', 'sound/stalker/ambience/rnd_outdoor/rnd_crow_8.ogg',
		'sound/stalker/ambience/rnd_outdoor/rnd_crow_9.ogg', 'sound/stalker/ambience/rnd_outdoor/rnd_crow_10.ogg',
		'sound/stalker/ambience/rnd_outdoor/rnd_crow_11.ogg','sound/stalker/ambience/rnd_outdoor/rnd_crow_12.ogg',
		'sound/stalker/ambience/rnd_outdoor/ambient_wind_1.ogg', 'sound/stalker/ambience/rnd_outdoor/ambient_wind_2.ogg',
		'sound/stalker/ambience/rnd_outdoor/ambient_wind_3.ogg', 'sound/stalker/ambience/rnd_outdoor/ambient_wind_4.ogg',
		'sound/stalker/ambience/rnd_outdoor/rnd_insect_8.ogg'
	)
	ambient_environment_night = list(
		'sound/stalker/ambience/rnd_outdoor_night/rnd_moan.ogg', 'sound/stalker/ambience/rnd_outdoor_night/rnd_moan2.ogg',
		'sound/stalker/ambience/rnd_outdoor_night/rnd_moan3.ogg', 'sound/stalker/ambience/rnd_outdoor_night/rnd_moan4.ogg',
		'sound/stalker/ambience/rnd_outdoor_night/rnd_moan5.ogg', 'sound/stalker/ambience/rnd_outdoor_night/rnd_moan6.ogg',
		'sound/stalker/ambience/rnd_outdoor_night/ambient_night_1.ogg', 'sound/stalker/ambience/rnd_outdoor_night/ambient_night_2.ogg',
		'sound/stalker/ambience/rnd_outdoor_night/ambient_night_3.ogg', 'sound/stalker/ambience/rnd_outdoor_night/ambient_night_4.ogg',
		'sound/stalker/ambience/rnd_outdoor_night/ambient_night_5.ogg', 'sound/stalker/ambience/rnd_outdoor_night/ambient_night_6.ogg',
		'sound/stalker/ambience/rnd_outdoor_night/ambient_night_7.ogg', 'sound/stalker/ambience/rnd_outdoor_night/ambient_night_8.ogg',
		'sound/stalker/ambience/rnd_outdoor_night/ambient_night_9.ogg', 'sound/stalker/ambience/rnd_outdoor_night/ambient_night_10.ogg',
		'sound/stalker/ambience/rnd_outdoor_night/wolf_howl_01.ogg', 'sound/stalker/ambience/rnd_outdoor_night/wolf_howl_02.ogg',
		'sound/stalker/ambience/rnd_outdoor_night/wolf_howl_03.ogg', 'sound/stalker/ambience/rnd_outdoor_night/wolf_howl_04.ogg',
	)
	ambient_environment_cooldown = 420
	ambient_background = list(null, null,'sound/stalker/ambience/rnd_outdoor_night/zat_bkg_tuman.ogg', 'sound/stalker/ambience/rnd_outdoor_night/ambient_night_11.ogg', null) // 'sound/stalker/ambience/rnd_outdoor/rnd_insect_5.ogg' - evening
	ambient_background_cooldown = list(null, null, 220, 420, null) //280 - evening
	environment = ENVIRONMENT_OUTDOORS_EXPOSED

/area/stalker/blowout/outdoor/safezone
	name = "Outdoor Safezone"
	icon = 'icons/stalker/areas_outdoor_blowout.dmi'
	icon_state = "outdoor"
	environment = ENVIRONMENT_OUTDOORS_EXPOSED

/area/stalker/blowout/outdoor/safezone/bar
	name = "Bar Outdoor Safezone"
	icon = 'icons/stalker/areas_buildings_blowout.dmi'
	icon_state = "buildings" // TODO: Change this to unique icon.
	environment = ENVIRONMENT_100_ROENTGEN
	safezone = 0
/area/stalker/blowout/buildings
	name = "Buildings"
	icon = 'icons/stalker/areas_buildings_blowout.dmi'
	icon_state = "buildings"
	requires_power = 1
	environment = ENVIRONMENT_INDOORS_EXPOSED

/area/stalker/blowout/buildings/safezone
	name = "Buildings Safezone"
	icon = 'icons/stalker/areas_buildings_blowout.dmi'
	icon_state = "buildings"
	requires_power = 1
	environment = ENVIRONMENT_INDOORS_EXPOSED
	safezone = 0

/area/stalker/buildings
	name = "Buildings"
	icon = 'icons/stalker/areas_buildings.dmi'
	icon_state = "buildings"
	requires_power = 1
	environment = ENVIRONMENT_INDOORS_SAFE

/area/stalker/buildings/banditbar
	name = "Bandit Bar"
	icon = 'icons/stalker/areas_buildings.dmi'
	icon_state = "buildings" // TODO: Change this to unique icon.
	requires_power = 1
	environment = ENVIRONMENT_BANDIT_CAMP

/area/stalker/buildings/safezone
	name = "Buildings Safezone"
	icon = 'icons/stalker/areas_buildings.dmi'
	icon_state = "buildings_safe"
	safezone = 0
/area/stalker/adminspace
	name = "Admin Space"
	icon = 'icons/stalker/areas_buildings.dmi'
	icon_state = "admin_space"
	requires_power = 1

/** Cordon Map **/

// Cordon
/area/stalker/cordon
	//icon = 'icons/stalker/map/cordon/cordon.dmi'
	requires_power = 1

/area/stalker/cordon/buildings
	name = "Buildings"
	icon = 'icons/stalker/areas_buildings.dmi'
	icon_state = "buildings"

/area/stalker/blowout/cordon/buildings
	name = "Buildings"
	icon = 'icons/stalker/areas_buildings_blowout.dmi'
	icon_state = "buildings"

/area/stalker/cordon/cellar
	name = "Cellar"
	icon = 'icons/stalker/areas_buildings.dmi'
	icon_state = "cellar"

/area/stalker/cordon/tunnel
	name = "Tunnel"
	icon = 'icons/stalker/areas_buildings.dmi'
	icon_state = "tunnel"
	environment = 13
	ambient_environment = list('sound/stalker/ambience/ugrnd/rnd_ugrnd_amb_1.ogg','sound/stalker/ambience/ugrnd/rnd_ugrnd_amb_2.ogg',
				'sound/stalker/ambience/ugrnd/rnd_ugrnd_amb_3.ogg','sound/stalker/ambience/ugrnd/rnd_ugrnd_amb_4.ogg',
				'sound/stalker/ambience/ugrnd/rnd_ugrnd_amb_5.ogg','sound/stalker/ambience/ugrnd/rnd_ugrnd_amb_6.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_ambient_1.ogg','sound/stalker/ambience/ugrnd/ugrnd_ambient_2.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_ambient_3.ogg','sound/stalker/ambience/ugrnd/ugrnd_ambient_4.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_ambient_5.ogg','sound/stalker/ambience/ugrnd/ugrnd_ambient_6.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_ambient_7.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_ambient_banging_1.ogg','sound/stalker/ambience/ugrnd/ugrnd_ambient_banging_2.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_ambient_banging_3.ogg','sound/stalker/ambience/ugrnd/ugrnd_ambient_banging_4.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_ambient_banging_5.ogg','sound/stalker/ambience/ugrnd/ugrnd_ambient_banging_6.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_ambient_banging_7.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_ambient_machine_1.ogg','sound/stalker/ambience/ugrnd/ugrnd_ambient_machine_2.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_ambient_machine_3.ogg','sound/stalker/ambience/ugrnd/ugrnd_ambient_machine_4.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_ambient_machine_5.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_drip_1.ogg','sound/stalker/ambience/ugrnd/ugrnd_drip_2.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_drip_3.ogg','sound/stalker/ambience/ugrnd/ugrnd_drip_4.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_drip_5.ogg','sound/stalker/ambience/ugrnd/ugrnd_drip_6.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_drip_7.ogg','sound/stalker/ambience/ugrnd/ugrnd_drip_8.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_drip_9.ogg','sound/stalker/ambience/ugrnd/ugrnd_drip_10.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_drip_11.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_drone_1.ogg','sound/stalker/ambience/ugrnd/ugrnd_drone_2.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_drone_3.ogg','sound/stalker/ambience/ugrnd/ugrnd_drone_4.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_lab_1.ogg','sound/stalker/ambience/ugrnd/ugrnd_lab_2.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_lab_3.ogg','sound/stalker/ambience/ugrnd/ugrnd_lab_4.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_lab_5.ogg','sound/stalker/ambience/ugrnd/ugrnd_lab_6.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_metal_1.ogg','sound/stalker/ambience/ugrnd/ugrnd_metal_2.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_metal_3.ogg','sound/stalker/ambience/ugrnd/ugrnd_metal_4.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_metal_5.ogg','sound/stalker/ambience/ugrnd/ugrnd_metal_6.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_metal_7.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_noise_1.ogg','sound/stalker/ambience/ugrnd/ugrnd_noise_2.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_noise_3.ogg','sound/stalker/ambience/ugrnd/ugrnd_noise_4.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_noise_5.ogg','sound/stalker/ambience/ugrnd/ugrnd_noise_6.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_noise_7.ogg','sound/stalker/ambience/ugrnd/ugrnd_noise_8.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_noise_9.ogg','sound/stalker/ambience/ugrnd/ugrnd_noise_10.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_noise_11.ogg','sound/stalker/ambience/ugrnd/ugrnd_noise_12.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_whispers_1.ogg','sound/stalker/ambience/ugrnd/ugrnd_whispers_2.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_whispers_3.ogg','sound/stalker/ambience/ugrnd/ugrnd_whispers_4.ogg',
				)
	ambient_environment_cooldown = 800

/area/stalker/blowout/cordon/tunnel
	name = "Tunnel"
	icon = 'icons/stalker/areas_buildings_blowout.dmi'
	icon_state = "tunnel"

// Agroprom
/area/stalker/agroprom
	icon = 'icons/stalker/map/cordon/agroprom.dmi'
	requires_power = 1

/area/stalker/agroprom/buildings
	name = "Buildings"
	icon = 'icons/stalker/areas_buildings.dmi'
	icon_state = "buildings"

/area/stalker/blowout/agroprom/buildings
	name = "Buildings Blowout"
	icon = 'icons/stalker/areas_buildings_blowout.dmi'
	icon_state = "buildings"

/area/stalker/agroprom/cellar
	name = "Cellar"
	icon = 'icons/stalker/areas_buildings.dmi'
	icon_state = "cellar"

/area/stalker/agroprom/tunnel
	name = "Tunnel"
	icon = 'icons/stalker/areas_buildings.dmi'
	icon_state = "tunnel_s"

/area/stalker/blowout/agroprom/tunnel
	name = "Tunnel"
	icon = 'icons/stalker/areas_buildings_blowout.dmi'
	icon_state = "tunnel"

/area/stalker/agroprom/caves
	name = "Caves"
	icon = 'icons/stalker/areas_buildings.dmi'
	icon_state = "caves"
	requires_power = 1
	ambient_music = null
	ambient_background = list('sound/stalker/ambience/ugrnd/howled_4.ogg', 'sound/stalker/ambience/ugrnd/howled_4.ogg', 'sound/stalker/ambience/ugrnd/howled_4.ogg', 'sound/stalker/ambience/ugrnd/howled_4.ogg')
	ambient_background_cooldown = list(270, 270, 270, 270)
	ambient_environment = list(
		'sound/stalker/ambience/ugrnd/rnd_ugrnd_amb_1.ogg','sound/stalker/ambience/ugrnd/rnd_ugrnd_amb_2.ogg',
		'sound/stalker/ambience/ugrnd/rnd_ugrnd_amb_3.ogg','sound/stalker/ambience/ugrnd/rnd_ugrnd_amb_4.ogg',
		'sound/stalker/ambience/ugrnd/rnd_ugrnd_amb_5.ogg','sound/stalker/ambience/ugrnd/rnd_ugrnd_amb_6.ogg',
		'sound/stalker/ambience/ugrnd/ugrnd_ambient_1.ogg','sound/stalker/ambience/ugrnd/ugrnd_ambient_2.ogg',
		'sound/stalker/ambience/ugrnd/ugrnd_ambient_3.ogg','sound/stalker/ambience/ugrnd/ugrnd_ambient_4.ogg',
		'sound/stalker/ambience/ugrnd/ugrnd_ambient_5.ogg','sound/stalker/ambience/ugrnd/ugrnd_ambient_6.ogg',
		'sound/stalker/ambience/ugrnd/ugrnd_ambient_7.ogg',
		'sound/stalker/ambience/ugrnd/ugrnd_ambient_banging_1.ogg','sound/stalker/ambience/ugrnd/ugrnd_ambient_banging_2.ogg',
		'sound/stalker/ambience/ugrnd/ugrnd_ambient_banging_3.ogg','sound/stalker/ambience/ugrnd/ugrnd_ambient_banging_4.ogg',
		'sound/stalker/ambience/ugrnd/ugrnd_ambient_banging_5.ogg','sound/stalker/ambience/ugrnd/ugrnd_ambient_banging_6.ogg',
		'sound/stalker/ambience/ugrnd/ugrnd_ambient_banging_7.ogg',
		'sound/stalker/ambience/ugrnd/ugrnd_ambient_machine_1.ogg','sound/stalker/ambience/ugrnd/ugrnd_ambient_machine_2.ogg',
		'sound/stalker/ambience/ugrnd/ugrnd_ambient_machine_3.ogg','sound/stalker/ambience/ugrnd/ugrnd_ambient_machine_4.ogg',
		'sound/stalker/ambience/ugrnd/ugrnd_ambient_machine_5.ogg',
		'sound/stalker/ambience/ugrnd/ugrnd_drip_1.ogg','sound/stalker/ambience/ugrnd/ugrnd_drip_2.ogg',
		'sound/stalker/ambience/ugrnd/ugrnd_drip_3.ogg','sound/stalker/ambience/ugrnd/ugrnd_drip_4.ogg',
		'sound/stalker/ambience/ugrnd/ugrnd_drip_5.ogg','sound/stalker/ambience/ugrnd/ugrnd_drip_6.ogg',
		'sound/stalker/ambience/ugrnd/ugrnd_drip_7.ogg','sound/stalker/ambience/ugrnd/ugrnd_drip_8.ogg',
		'sound/stalker/ambience/ugrnd/ugrnd_drip_9.ogg','sound/stalker/ambience/ugrnd/ugrnd_drip_10.ogg',
		'sound/stalker/ambience/ugrnd/ugrnd_drip_11.ogg',
		'sound/stalker/ambience/ugrnd/ugrnd_drone_1.ogg','sound/stalker/ambience/ugrnd/ugrnd_drone_2.ogg',
		'sound/stalker/ambience/ugrnd/ugrnd_drone_3.ogg','sound/stalker/ambience/ugrnd/ugrnd_drone_4.ogg',
		'sound/stalker/ambience/ugrnd/ugrnd_lab_1.ogg','sound/stalker/ambience/ugrnd/ugrnd_lab_2.ogg',
		'sound/stalker/ambience/ugrnd/ugrnd_lab_3.ogg','sound/stalker/ambience/ugrnd/ugrnd_lab_4.ogg',
		'sound/stalker/ambience/ugrnd/ugrnd_lab_5.ogg','sound/stalker/ambience/ugrnd/ugrnd_lab_6.ogg',
		'sound/stalker/ambience/ugrnd/ugrnd_metal_1.ogg','sound/stalker/ambience/ugrnd/ugrnd_metal_2.ogg',
		'sound/stalker/ambience/ugrnd/ugrnd_metal_3.ogg','sound/stalker/ambience/ugrnd/ugrnd_metal_4.ogg',
		'sound/stalker/ambience/ugrnd/ugrnd_metal_5.ogg','sound/stalker/ambience/ugrnd/ugrnd_metal_6.ogg',
		'sound/stalker/ambience/ugrnd/ugrnd_metal_7.ogg',
		'sound/stalker/ambience/ugrnd/ugrnd_noise_1.ogg','sound/stalker/ambience/ugrnd/ugrnd_noise_2.ogg',
		'sound/stalker/ambience/ugrnd/ugrnd_noise_3.ogg','sound/stalker/ambience/ugrnd/ugrnd_noise_4.ogg',
		'sound/stalker/ambience/ugrnd/ugrnd_noise_5.ogg','sound/stalker/ambience/ugrnd/ugrnd_noise_6.ogg',
		'sound/stalker/ambience/ugrnd/ugrnd_noise_7.ogg','sound/stalker/ambience/ugrnd/ugrnd_noise_8.ogg',
		'sound/stalker/ambience/ugrnd/ugrnd_noise_9.ogg','sound/stalker/ambience/ugrnd/ugrnd_noise_10.ogg',
		'sound/stalker/ambience/ugrnd/ugrnd_noise_11.ogg','sound/stalker/ambience/ugrnd/ugrnd_noise_12.ogg',
		'sound/stalker/ambience/ugrnd/ugrnd_whispers_1.ogg','sound/stalker/ambience/ugrnd/ugrnd_whispers_2.ogg',
		'sound/stalker/ambience/ugrnd/ugrnd_whispers_3.ogg','sound/stalker/ambience/ugrnd/ugrnd_whispers_4.ogg',
	)
	ambient_environment_cooldown = 800
	environment = 8

/area/stalker/agroprom/abandoned_base
	name = "Agroprom Abandoned Military Base"
	icon_state = "abandoned_military_base"

/area/stalker/agroprom/warehouses
	name = "Agroprom Warehouses"
	icon_state = "warehouses"

// Rostok
/area/stalker/rostok
	icon = 'icons/stalker/map/cordon/rostok.dmi'
	requires_power = 1

/area/stalker/rostok/bar
	name = "Bar"
	icon_state = "bar"
	safezone = 0

/area/stalker/rostok/buildings
	name = "Buildings"
	icon = 'icons/stalker/areas_buildings.dmi'
	icon_state = "buildings"

/area/stalker/blowout/rostok/buildings
	name = "Buildings Blowout"
	icon = 'icons/stalker/areas_buildings_blowout.dmi'
	icon_state = "buildings"

/area/stalker/rostok/buildings/mercenary
	name = "Mercenary"
	icon = 'icons/stalker/areas_buildings.dmi'
	icon_state = "mercenary"

/area/stalker/rostok/headquarters
	name = "Rostok Headquarters"
	icon_state = "headquarters"


/** Zaton (Backwater) **/

/area/stalker/buildings/backwater
	name = "Backwater - Buildings \[NB\]"
	icon_state = "buildings"
	environment = 2

/area/stalker/blowout/buildings/backwater
	name = "Backwater - Buildings"
	icon_state = "buildings"
	environment = 2

/area/stalker/blowout/outdoor/backwater
	name = "Backwater - Outdoor \[O\]"
	icon_state = "outdoor"
	environment = 19

/** Zaton - Podstantsiya (Zaton Substation) **/
/area/stalker/buildings/backwater/substation
	name = "Backwater - Substation Workshops \[NB\]"
	icon_state = "substation"
	environment = 5

/area/stalker/blowout/buildings/backwater/substation
	name = "Backwater - Substation Workshops"
	icon_state = "substation"

/area/stalker/blowout/outdoor/backwater/substation
	name = "Backwater - Substation Workshops \[O\]"
	icon_state = "substation"


////////////////////////////////////////////////
/area/stalker/buildings/backwater/skadovsk
	name = "Backwater - Skadovsk \[NB\]"
	icon_state = "skadovsk"
	environment = 0
	ambient_music = list()

/area/stalker/buildings/backwater/skadovsk_respawn
	name = "Backwater - Skadovsk (2nd floor) \[NB\]"
	icon_state = "skadovsk"
	environment = 0
	ambient_music = list()

/area/stalker/blowout/buildings/backwater/skadovsk
	name = "Backwater - Skadovsk"
	icon_state = "skadovsk"
	environment = 0
	ambient_music = list()

/area/stalker/blowout/outdoor/backwater/skadovsk
	name = "Backwater - Skadovsk \[O\]"
	icon_state = "skadovsk"
	environment = 19

////////////////////////////////////////////////////////////////

////////////////////////////////////////////////
/area/stalker/buildings/backwater/shevchenko
	name = "Backwater - Shevchenko \[NB\]"
	icon_state = "shevchenko"
	environment = 2

/area/stalker/blowout/buildings/backwater/shevchenko
	name = "Backwater - Shevchenko"
	icon_state = "shevchenko"
	environment = 2

/area/stalker/blowout/outdoor/backwater/shevchenko
	name = "Backwater - Shevchenko \[O\]"
	icon_state = "shevchenko"
////////////////////////////////////////////////////////////////

/////////////////////////////////////////
/area/stalker/buildings/backwater/burntfarm
	name = "Backwater - Burnt Farmstead \[NB\]"
	icon_state = "burntfarm"

/area/stalker/blowout/buildings/backwater/burntfarm
	name = "Backwater - Burnt Farmstead"
	icon_state = "burntfarm"

/area/stalker/blowout/outdoor/backwater/burntfarm
	name = "Backwater - Burnt Farmstead \[O\]"
	icon_state = "burntfarm"
////////////////////////////////////////////////////////////////

/////////////////////////////////////////
/area/stalker/buildings/backwater/ironforest
	name = "Backwater - Iron Forest \[NB\]"
	icon_state = "ironforest"
	ambient_background = list('sound/stalker/ambience/ugrnd/howled_4.ogg', 'sound/stalker/ambience/ugrnd/howled_4.ogg', 'sound/stalker/ambience/ugrnd/howled_4.ogg', 'sound/stalker/ambience/ugrnd/howled_4.ogg')
	ambient_background_cooldown = list(270, 270, 270, 270)
	ambient_environment = list('sound/stalker/ambience/ugrnd/rnd_ugrnd_amb_1.ogg','sound/stalker/ambience/ugrnd/rnd_ugrnd_amb_2.ogg',
				'sound/stalker/ambience/ugrnd/rnd_ugrnd_amb_3.ogg','sound/stalker/ambience/ugrnd/rnd_ugrnd_amb_4.ogg',
				'sound/stalker/ambience/ugrnd/rnd_ugrnd_amb_5.ogg','sound/stalker/ambience/ugrnd/rnd_ugrnd_amb_6.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_ambient_1.ogg','sound/stalker/ambience/ugrnd/ugrnd_ambient_2.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_ambient_3.ogg','sound/stalker/ambience/ugrnd/ugrnd_ambient_4.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_ambient_5.ogg','sound/stalker/ambience/ugrnd/ugrnd_ambient_6.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_ambient_7.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_ambient_banging_1.ogg','sound/stalker/ambience/ugrnd/ugrnd_ambient_banging_2.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_ambient_banging_3.ogg','sound/stalker/ambience/ugrnd/ugrnd_ambient_banging_4.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_ambient_banging_5.ogg','sound/stalker/ambience/ugrnd/ugrnd_ambient_banging_6.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_ambient_banging_7.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_ambient_machine_1.ogg','sound/stalker/ambience/ugrnd/ugrnd_ambient_machine_2.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_ambient_machine_3.ogg','sound/stalker/ambience/ugrnd/ugrnd_ambient_machine_4.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_ambient_machine_5.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_drip_1.ogg','sound/stalker/ambience/ugrnd/ugrnd_drip_2.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_drip_3.ogg','sound/stalker/ambience/ugrnd/ugrnd_drip_4.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_drip_5.ogg','sound/stalker/ambience/ugrnd/ugrnd_drip_6.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_drip_7.ogg','sound/stalker/ambience/ugrnd/ugrnd_drip_8.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_drip_9.ogg','sound/stalker/ambience/ugrnd/ugrnd_drip_10.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_drip_11.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_drone_1.ogg','sound/stalker/ambience/ugrnd/ugrnd_drone_2.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_drone_3.ogg','sound/stalker/ambience/ugrnd/ugrnd_drone_4.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_lab_1.ogg','sound/stalker/ambience/ugrnd/ugrnd_lab_2.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_lab_3.ogg','sound/stalker/ambience/ugrnd/ugrnd_lab_4.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_lab_5.ogg','sound/stalker/ambience/ugrnd/ugrnd_lab_6.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_metal_1.ogg','sound/stalker/ambience/ugrnd/ugrnd_metal_2.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_metal_3.ogg','sound/stalker/ambience/ugrnd/ugrnd_metal_4.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_metal_5.ogg','sound/stalker/ambience/ugrnd/ugrnd_metal_6.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_metal_7.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_noise_1.ogg','sound/stalker/ambience/ugrnd/ugrnd_noise_2.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_noise_3.ogg','sound/stalker/ambience/ugrnd/ugrnd_noise_4.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_noise_5.ogg','sound/stalker/ambience/ugrnd/ugrnd_noise_6.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_noise_7.ogg','sound/stalker/ambience/ugrnd/ugrnd_noise_8.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_noise_9.ogg','sound/stalker/ambience/ugrnd/ugrnd_noise_10.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_noise_11.ogg','sound/stalker/ambience/ugrnd/ugrnd_noise_12.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_whispers_1.ogg','sound/stalker/ambience/ugrnd/ugrnd_whispers_2.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_whispers_3.ogg','sound/stalker/ambience/ugrnd/ugrnd_whispers_4.ogg',
				)
	ambient_environment_cooldown = 800
	environment = 8

/area/stalker/blowout/buildings/backwater/ironforest
	name = "Backwater - Iron Forest"
	icon_state = "ironforest"

/area/stalker/blowout/outdoor/backwater/ironforest
	name = "Backwater - Iron Forest \[O\]"
	icon_state = "ironforest"
////////////////////////////////////////////////////////////////

//////////////////////////////////////////
/area/stalker/buildings/backwater/krug
	name = "Backwater - Krug Antenna Complex \[NB\]"
	icon_state = "krug"
	environment = 5
	ambient_background = list('sound/stalker/ambience/ugrnd/howled_4.ogg', 'sound/stalker/ambience/ugrnd/howled_4.ogg', 'sound/stalker/ambience/ugrnd/howled_4.ogg', 'sound/stalker/ambience/ugrnd/howled_4.ogg')
	ambient_background_cooldown = list(270, 270, 270, 270)
	ambient_environment = list('sound/stalker/ambience/ugrnd/rnd_ugrnd_amb_1.ogg','sound/stalker/ambience/ugrnd/rnd_ugrnd_amb_2.ogg',
				'sound/stalker/ambience/ugrnd/rnd_ugrnd_amb_3.ogg','sound/stalker/ambience/ugrnd/rnd_ugrnd_amb_4.ogg',
				'sound/stalker/ambience/ugrnd/rnd_ugrnd_amb_5.ogg','sound/stalker/ambience/ugrnd/rnd_ugrnd_amb_6.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_ambient_1.ogg','sound/stalker/ambience/ugrnd/ugrnd_ambient_2.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_ambient_3.ogg','sound/stalker/ambience/ugrnd/ugrnd_ambient_4.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_ambient_5.ogg','sound/stalker/ambience/ugrnd/ugrnd_ambient_6.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_ambient_7.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_ambient_banging_1.ogg','sound/stalker/ambience/ugrnd/ugrnd_ambient_banging_2.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_ambient_banging_3.ogg','sound/stalker/ambience/ugrnd/ugrnd_ambient_banging_4.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_ambient_banging_5.ogg','sound/stalker/ambience/ugrnd/ugrnd_ambient_banging_6.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_ambient_banging_7.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_ambient_machine_1.ogg','sound/stalker/ambience/ugrnd/ugrnd_ambient_machine_2.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_ambient_machine_3.ogg','sound/stalker/ambience/ugrnd/ugrnd_ambient_machine_4.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_ambient_machine_5.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_drip_1.ogg','sound/stalker/ambience/ugrnd/ugrnd_drip_2.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_drip_3.ogg','sound/stalker/ambience/ugrnd/ugrnd_drip_4.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_drip_5.ogg','sound/stalker/ambience/ugrnd/ugrnd_drip_6.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_drip_7.ogg','sound/stalker/ambience/ugrnd/ugrnd_drip_8.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_drip_9.ogg','sound/stalker/ambience/ugrnd/ugrnd_drip_10.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_drip_11.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_drone_1.ogg','sound/stalker/ambience/ugrnd/ugrnd_drone_2.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_drone_3.ogg','sound/stalker/ambience/ugrnd/ugrnd_drone_4.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_lab_1.ogg','sound/stalker/ambience/ugrnd/ugrnd_lab_2.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_lab_3.ogg','sound/stalker/ambience/ugrnd/ugrnd_lab_4.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_lab_5.ogg','sound/stalker/ambience/ugrnd/ugrnd_lab_6.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_metal_1.ogg','sound/stalker/ambience/ugrnd/ugrnd_metal_2.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_metal_3.ogg','sound/stalker/ambience/ugrnd/ugrnd_metal_4.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_metal_5.ogg','sound/stalker/ambience/ugrnd/ugrnd_metal_6.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_metal_7.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_noise_1.ogg','sound/stalker/ambience/ugrnd/ugrnd_noise_2.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_noise_3.ogg','sound/stalker/ambience/ugrnd/ugrnd_noise_4.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_noise_5.ogg','sound/stalker/ambience/ugrnd/ugrnd_noise_6.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_noise_7.ogg','sound/stalker/ambience/ugrnd/ugrnd_noise_8.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_noise_9.ogg','sound/stalker/ambience/ugrnd/ugrnd_noise_10.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_noise_11.ogg','sound/stalker/ambience/ugrnd/ugrnd_noise_12.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_whispers_1.ogg','sound/stalker/ambience/ugrnd/ugrnd_whispers_2.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_whispers_3.ogg','sound/stalker/ambience/ugrnd/ugrnd_whispers_4.ogg',
				)
	ambient_environment_cooldown = 800
	environment = 8

/area/stalker/blowout/buildings/backwater/krug
	name = "Backwater - Krug Antenna Complex"
	icon_state = "krug"
	environment = 2

/area/stalker/blowout/outdoor/backwater/krug
	name = "Backwater - Krug Antenna Complex \[O\]"
	icon_state = "krug"
////////////////////////////////////////////////////////////////

//////////////////////////////////////////
/area/stalker/buildings/backwater/sawmill
	name = "Backwater - Sawmill \[NB\]"
	icon_state = "sawmill"

/area/stalker/blowout/buildings/backwater/sawmill
	name = "Backwater - Sawmill"
	icon_state = "sawmill"

/area/stalker/blowout/outdoor/backwater/sawmill
	name = "Backwater - Sawmill \[O\]"
	icon_state = "sawmill"
////////////////////////////////////////////////////////////////

//////////////////////////////////////////
/area/stalker/buildings/backwater/ranger
	name = "Backwater - Ranger Station \[NB\]"
	icon_state = "ranger"

/area/stalker/blowout/buildings/backwater/ranger
	name = "Backwater - Ranger Station"
	icon_state = "ranger"

/area/stalker/blowout/outdoor/backwater/ranger
	name = "Backwater - Ranger Station \[O\]"
	icon_state = "ranger"
////////////////////////////////////////////////////////////////

//////////////////////////////////////////
/area/stalker/buildings/backwater/waste
	name = "Backwater - Waster Processing Station \[NB\]"
	icon_state = "waste"

/area/stalker/blowout/buildings/backwater/waste
	name = "Backwater - Waster Processing Station"
	icon_state = "waste"

/area/stalker/blowout/outdoor/backwater/waste
	name = "Backwater - Waster Processing Station \[O\]"
	icon_state = "waste"
	environment

////////////////////////////////////////////////////////////////

//////////////////////////////////////////
/area/stalker/buildings/backwater/waste
	name = "Backwater - Waster Processing Station \[NB\]"
	icon_state = "waste"

/area/stalker/blowout/buildings/backwater/waste
	name = "Backwater - Waster Processing Station"
	icon_state = "waste"

/area/stalker/blowout/outdoor/backwater/waste
	name = "Backwater - Waster Processing Station \[O\]"
	icon_state = "waste"
////////////////////////////////////////////////////////////////

//////////////////////////////////////////
/area/stalker/buildings/backwater/claw
	name = "Backwater - Claw \[NB\]"
	icon_state = "claw"

/area/stalker/blowout/buildings/backwater/claw
	name = "Backwater - Claw"
	icon_state = "claw"

/area/stalker/blowout/outdoor/backwater/claw
	name = "Backwater - Claw \[O\]"
	icon_state = "claw"
////////////////////////////////////////////////////////////////

//////////////////////////////////////////
/area/stalker/buildings/backwater/plateau
	name = "Backwater - Southern Plateau \[NB\]"
	icon_state = "plateau"
	ambient_background = list('sound/stalker/ambience/ugrnd/howled_4.ogg', 'sound/stalker/ambience/ugrnd/howled_4.ogg', 'sound/stalker/ambience/ugrnd/howled_4.ogg', 'sound/stalker/ambience/ugrnd/howled_4.ogg')
	ambient_background_cooldown = list(270, 270, 270, 270)
	ambient_environment = list('sound/stalker/ambience/ugrnd/rnd_ugrnd_amb_1.ogg','sound/stalker/ambience/ugrnd/rnd_ugrnd_amb_2.ogg',
				'sound/stalker/ambience/ugrnd/rnd_ugrnd_amb_3.ogg','sound/stalker/ambience/ugrnd/rnd_ugrnd_amb_4.ogg',
				'sound/stalker/ambience/ugrnd/rnd_ugrnd_amb_5.ogg','sound/stalker/ambience/ugrnd/rnd_ugrnd_amb_6.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_ambient_1.ogg','sound/stalker/ambience/ugrnd/ugrnd_ambient_2.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_ambient_3.ogg','sound/stalker/ambience/ugrnd/ugrnd_ambient_4.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_ambient_5.ogg','sound/stalker/ambience/ugrnd/ugrnd_ambient_6.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_ambient_7.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_ambient_banging_1.ogg','sound/stalker/ambience/ugrnd/ugrnd_ambient_banging_2.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_ambient_banging_3.ogg','sound/stalker/ambience/ugrnd/ugrnd_ambient_banging_4.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_ambient_banging_5.ogg','sound/stalker/ambience/ugrnd/ugrnd_ambient_banging_6.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_ambient_banging_7.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_ambient_machine_1.ogg','sound/stalker/ambience/ugrnd/ugrnd_ambient_machine_2.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_ambient_machine_3.ogg','sound/stalker/ambience/ugrnd/ugrnd_ambient_machine_4.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_ambient_machine_5.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_drip_1.ogg','sound/stalker/ambience/ugrnd/ugrnd_drip_2.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_drip_3.ogg','sound/stalker/ambience/ugrnd/ugrnd_drip_4.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_drip_5.ogg','sound/stalker/ambience/ugrnd/ugrnd_drip_6.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_drip_7.ogg','sound/stalker/ambience/ugrnd/ugrnd_drip_8.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_drip_9.ogg','sound/stalker/ambience/ugrnd/ugrnd_drip_10.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_drip_11.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_drone_1.ogg','sound/stalker/ambience/ugrnd/ugrnd_drone_2.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_drone_3.ogg','sound/stalker/ambience/ugrnd/ugrnd_drone_4.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_lab_1.ogg','sound/stalker/ambience/ugrnd/ugrnd_lab_2.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_lab_3.ogg','sound/stalker/ambience/ugrnd/ugrnd_lab_4.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_lab_5.ogg','sound/stalker/ambience/ugrnd/ugrnd_lab_6.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_metal_1.ogg','sound/stalker/ambience/ugrnd/ugrnd_metal_2.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_metal_3.ogg','sound/stalker/ambience/ugrnd/ugrnd_metal_4.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_metal_5.ogg','sound/stalker/ambience/ugrnd/ugrnd_metal_6.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_metal_7.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_noise_1.ogg','sound/stalker/ambience/ugrnd/ugrnd_noise_2.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_noise_3.ogg','sound/stalker/ambience/ugrnd/ugrnd_noise_4.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_noise_5.ogg','sound/stalker/ambience/ugrnd/ugrnd_noise_6.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_noise_7.ogg','sound/stalker/ambience/ugrnd/ugrnd_noise_8.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_noise_9.ogg','sound/stalker/ambience/ugrnd/ugrnd_noise_10.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_noise_11.ogg','sound/stalker/ambience/ugrnd/ugrnd_noise_12.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_whispers_1.ogg','sound/stalker/ambience/ugrnd/ugrnd_whispers_2.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_whispers_3.ogg','sound/stalker/ambience/ugrnd/ugrnd_whispers_4.ogg',
				)
	ambient_environment_cooldown = 800
	environment = 8

/area/stalker/blowout/buildings/backwater/plateau
	name = "Backwater - Southern Plateau"
	icon_state = "plateau"

/area/stalker/blowout/outdoor/backwater/plateau
	name = "Backwater - Southern Plateau \[O\]"
	icon_state = "plateau"

//////////////** Pripyat Map **//////////////


/area/stalker/blowout/outdoor/pripyat
	icon = 'icons/stalker/map/cordon/areas_outdoor_blowout.dmi'
	icon_state = "outdoor"
	requires_power = 1
	luminosity = 1
	open_space = TRUE
	dynamic_lighting = DYNAMIC_LIGHTING_ENABLED
	ambient_environment = list(
		'sound/stalker/ambience/rnd_outdoor/rnd_bird_1.ogg', 'sound/stalker/ambience/rnd_outdoor/rnd_bird_2.ogg',
		'sound/stalker/ambience/rnd_outdoor/rnd_bird_3.ogg', 'sound/stalker/ambience/rnd_outdoor/rnd_bird_4.ogg',
		'sound/stalker/ambience/rnd_outdoor/rnd_bird_5.ogg', 'sound/stalker/ambience/rnd_outdoor/rnd_bird_6.ogg',
		'sound/stalker/ambience/rnd_outdoor/rnd_bird_7.ogg', 'sound/stalker/ambience/rnd_outdoor/rnd_bird_8.ogg',
		'sound/stalker/ambience/rnd_outdoor/rnd_bird_9.ogg', 'sound/stalker/ambience/rnd_outdoor/rnd_bird_10.ogg',
		'sound/stalker/ambience/rnd_outdoor/rnd_bird_11.ogg',
		'sound/stalker/ambience/rnd_outdoor/rnd_dog1.ogg', 'sound/stalker/ambience/rnd_outdoor/rnd_dog2.ogg',
		'sound/stalker/ambience/rnd_outdoor/rnd_dog3.ogg', 'sound/stalker/ambience/rnd_outdoor/rnd_dog4.ogg',
		'sound/stalker/ambience/rnd_outdoor/rnd_dog5.ogg', 'sound/stalker/ambience/rnd_outdoor/rnd_dog6.ogg',
		'sound/stalker/ambience/rnd_outdoor/rnd_dog7.ogg', 'sound/stalker/ambience/rnd_outdoor/rnd_dog8.ogg',
		'sound/stalker/ambience/rnd_outdoor/rnd_dog9.ogg', 'sound/stalker/ambience/rnd_outdoor/rnd_dog10.ogg',
		'sound/stalker/ambience/rnd_outdoor/rnd_crow_1.ogg', 'sound/stalker/ambience/rnd_outdoor/rnd_crow_2.ogg',
		'sound/stalker/ambience/rnd_outdoor/rnd_crow_3.ogg', 'sound/stalker/ambience/rnd_outdoor/rnd_crow_4.ogg',
		'sound/stalker/ambience/rnd_outdoor/rnd_crow_5.ogg', 'sound/stalker/ambience/rnd_outdoor/rnd_crow_6.ogg',
		'sound/stalker/ambience/rnd_outdoor/rnd_crow_7.ogg', 'sound/stalker/ambience/rnd_outdoor/rnd_crow_8.ogg',
		'sound/stalker/ambience/rnd_outdoor/rnd_crow_9.ogg', 'sound/stalker/ambience/rnd_outdoor/rnd_crow_10.ogg',
		'sound/stalker/ambience/rnd_outdoor/rnd_crow_11.ogg','sound/stalker/ambience/rnd_outdoor/rnd_crow_12.ogg',
		'sound/stalker/ambience/rnd_outdoor/ambient_wind_1.ogg', 'sound/stalker/ambience/rnd_outdoor/ambient_wind_2.ogg',
		'sound/stalker/ambience/rnd_outdoor/ambient_wind_3.ogg', 'sound/stalker/ambience/rnd_outdoor/ambient_wind_4.ogg',
		'sound/stalker/ambience/rnd_outdoor/rnd_insect_8.ogg'
	)
	ambient_environment_night = list(
		'sound/stalker/ambience/rnd_outdoor_night/rnd_moan.ogg', 'sound/stalker/ambience/rnd_outdoor_night/rnd_moan2.ogg',
		'sound/stalker/ambience/rnd_outdoor_night/rnd_moan3.ogg', 'sound/stalker/ambience/rnd_outdoor_night/rnd_moan4.ogg',
		'sound/stalker/ambience/rnd_outdoor_night/rnd_moan5.ogg', 'sound/stalker/ambience/rnd_outdoor_night/rnd_moan6.ogg',
		'sound/stalker/ambience/rnd_outdoor_night/ambient_night_1.ogg', 'sound/stalker/ambience/rnd_outdoor_night/ambient_night_2.ogg',
		'sound/stalker/ambience/rnd_outdoor_night/ambient_night_3.ogg', 'sound/stalker/ambience/rnd_outdoor_night/ambient_night_4.ogg',
		'sound/stalker/ambience/rnd_outdoor_night/ambient_night_5.ogg', 'sound/stalker/ambience/rnd_outdoor_night/ambient_night_6.ogg',
		'sound/stalker/ambience/rnd_outdoor_night/ambient_night_7.ogg', 'sound/stalker/ambience/rnd_outdoor_night/ambient_night_8.ogg',
		'sound/stalker/ambience/rnd_outdoor_night/ambient_night_9.ogg', 'sound/stalker/ambience/rnd_outdoor_night/ambient_night_10.ogg',
		'sound/stalker/ambience/rnd_outdoor_night/wolf_howl_01.ogg', 'sound/stalker/ambience/rnd_outdoor_night/wolf_howl_02.ogg',
		'sound/stalker/ambience/rnd_outdoor_night/wolf_howl_03.ogg', 'sound/stalker/ambience/rnd_outdoor_night/wolf_howl_04.ogg',
	)
	ambient_environment_cooldown = 420
	ambient_background = list(null, null,'sound/stalker/ambience/rnd_outdoor_night/zat_bkg_tuman.ogg', 'sound/stalker/ambience/rnd_outdoor_night/ambient_night_11.ogg', null) // 'sound/stalker/ambience/rnd_outdoor/rnd_insect_5.ogg' - evening
	ambient_background_cooldown = list(null, null, 220, 420, null) //280 - evening
	environment = ENVIRONMENT_OUTDOORS_EXPOSED

/area/stalker/pripyat/buildings
	name = "Buildings"
	icon = 'icons/stalker/areas_buildings.dmi'
	icon_state = "buildings"

/area/stalker/blowout/pripyat/buildings
	name = "Buildings"
	icon = 'icons/stalker/areas_buildings_blowout.dmi'
	icon_state = "buildings"

/area/stalker/pripyat/cellar
	name = "Cellar"
	icon = 'icons/stalker/areas_buildings.dmi'
	icon_state = "cellar"

/area/stalker/pripyat/tunnel
	name = "Tunnel"
	icon = 'icons/stalker/areas_buildings.dmi'
	icon_state = "tunnel"

////**Pripyat Landmarks**////

/area/stalker/buildings/pripyat/movietheater
	name = "Pripyat - Prometheus Movie Theater \[NB\]"
	icon = 'icons/stalker/map/pripyat/areas_buildings.dmi'
	icon_state = "movietheater"

/area/stalker/blowout/buildings/pripyat/movietheater
	name = "Pripyat - Prometheus Movie Theater"
	icon = 'icons/stalker/map/pripyat/areas_buildings_blowout.dmi'
	icon_state = "movietheater"

/area/stalker/blowout/outdoor/pripyat/movietheater
	name = "Pripyat - Prometheus Movie Theater \[O\]"
	icon = 'icons/stalker/map/pripyat/areas_outdoor_blowout.dmi'
	icon_state = "movietheater"

/area/stalker/buildings/pripyat/oldservicecenter
	name = "Pripyat - Old Service Center \[NB\]"
	icon = 'icons/stalker/map/pripyat/areas_buildings.dmi'
	icon_state = "oldservicecenter"
	ambient_background = list('sound/stalker/ambience/ugrnd/howled_4.ogg', 'sound/stalker/ambience/ugrnd/howled_4.ogg', 'sound/stalker/ambience/ugrnd/howled_4.ogg', 'sound/stalker/ambience/ugrnd/howled_4.ogg')
	ambient_background_cooldown = list(270, 270, 270, 270)
	ambient_environment = list('sound/stalker/ambience/ugrnd/rnd_ugrnd_amb_1.ogg','sound/stalker/ambience/ugrnd/rnd_ugrnd_amb_2.ogg',
				'sound/stalker/ambience/ugrnd/rnd_ugrnd_amb_3.ogg','sound/stalker/ambience/ugrnd/rnd_ugrnd_amb_4.ogg',
				'sound/stalker/ambience/ugrnd/rnd_ugrnd_amb_5.ogg','sound/stalker/ambience/ugrnd/rnd_ugrnd_amb_6.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_ambient_1.ogg','sound/stalker/ambience/ugrnd/ugrnd_ambient_2.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_ambient_3.ogg','sound/stalker/ambience/ugrnd/ugrnd_ambient_4.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_ambient_5.ogg','sound/stalker/ambience/ugrnd/ugrnd_ambient_6.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_ambient_7.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_ambient_banging_1.ogg','sound/stalker/ambience/ugrnd/ugrnd_ambient_banging_2.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_ambient_banging_3.ogg','sound/stalker/ambience/ugrnd/ugrnd_ambient_banging_4.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_ambient_banging_5.ogg','sound/stalker/ambience/ugrnd/ugrnd_ambient_banging_6.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_ambient_banging_7.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_ambient_machine_1.ogg','sound/stalker/ambience/ugrnd/ugrnd_ambient_machine_2.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_ambient_machine_3.ogg','sound/stalker/ambience/ugrnd/ugrnd_ambient_machine_4.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_ambient_machine_5.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_drone_1.ogg','sound/stalker/ambience/ugrnd/ugrnd_drone_2.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_drone_3.ogg','sound/stalker/ambience/ugrnd/ugrnd_drone_4.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_lab_1.ogg','sound/stalker/ambience/ugrnd/ugrnd_lab_2.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_lab_3.ogg','sound/stalker/ambience/ugrnd/ugrnd_lab_4.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_lab_5.ogg','sound/stalker/ambience/ugrnd/ugrnd_lab_6.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_metal_1.ogg','sound/stalker/ambience/ugrnd/ugrnd_metal_2.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_metal_3.ogg','sound/stalker/ambience/ugrnd/ugrnd_metal_4.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_metal_5.ogg','sound/stalker/ambience/ugrnd/ugrnd_metal_6.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_metal_7.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_noise_1.ogg','sound/stalker/ambience/ugrnd/ugrnd_noise_2.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_noise_3.ogg','sound/stalker/ambience/ugrnd/ugrnd_noise_4.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_noise_5.ogg','sound/stalker/ambience/ugrnd/ugrnd_noise_6.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_noise_7.ogg','sound/stalker/ambience/ugrnd/ugrnd_noise_8.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_noise_9.ogg','sound/stalker/ambience/ugrnd/ugrnd_noise_10.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_noise_11.ogg','sound/stalker/ambience/ugrnd/ugrnd_noise_12.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_whispers_1.ogg','sound/stalker/ambience/ugrnd/ugrnd_whispers_2.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_whispers_3.ogg','sound/stalker/ambience/ugrnd/ugrnd_whispers_4.ogg',
				)
	ambient_environment_cooldown = 800
	environment = 8

/area/stalker/blowout/buildings/pripyat/oldservicecenter
	name = "Pripyat - Old Service Center"
	icon = 'icons/stalker/map/pripyat/areas_buildings_blowout.dmi'
	icon_state = "oldservicecenter"

/area/stalker/blowout/outdoor/pripyat/oldservicecenter
	name = "Pripyat - Old Service Center \[O\]"
	icon = 'icons/stalker/map/pripyat/areas_outdoor_blowout.dmi'
	icon_state = "oldservicecenter"

/////////// *Radar Map* ///////////////

/area/stalker/blowout/outdoor/radar
	icon = 'icons/stalker/map/cordon/areas_outdoor_blowout.dmi'
	icon_state = "outdoor"
	requires_power = 1
	luminosity = 1
	open_space = TRUE
	dynamic_lighting = DYNAMIC_LIGHTING_ENABLED
	ambient_environment = list(
		'sound/stalker/ambience/rnd_outdoor/rnd_bird_1.ogg', 'sound/stalker/ambience/rnd_outdoor/rnd_bird_2.ogg',
		'sound/stalker/ambience/rnd_outdoor/rnd_bird_3.ogg', 'sound/stalker/ambience/rnd_outdoor/rnd_bird_4.ogg',
		'sound/stalker/ambience/rnd_outdoor/rnd_bird_5.ogg', 'sound/stalker/ambience/rnd_outdoor/rnd_bird_6.ogg',
		'sound/stalker/ambience/rnd_outdoor/rnd_bird_7.ogg', 'sound/stalker/ambience/rnd_outdoor/rnd_bird_8.ogg',
		'sound/stalker/ambience/rnd_outdoor/rnd_bird_9.ogg', 'sound/stalker/ambience/rnd_outdoor/rnd_bird_10.ogg',
		'sound/stalker/ambience/rnd_outdoor/rnd_bird_11.ogg',
		'sound/stalker/ambience/rnd_outdoor/rnd_dog1.ogg', 'sound/stalker/ambience/rnd_outdoor/rnd_dog2.ogg',
		'sound/stalker/ambience/rnd_outdoor/rnd_dog3.ogg', 'sound/stalker/ambience/rnd_outdoor/rnd_dog4.ogg',
		'sound/stalker/ambience/rnd_outdoor/rnd_dog5.ogg', 'sound/stalker/ambience/rnd_outdoor/rnd_dog6.ogg',
		'sound/stalker/ambience/rnd_outdoor/rnd_dog7.ogg', 'sound/stalker/ambience/rnd_outdoor/rnd_dog8.ogg',
		'sound/stalker/ambience/rnd_outdoor/rnd_dog9.ogg', 'sound/stalker/ambience/rnd_outdoor/rnd_dog10.ogg',
		'sound/stalker/ambience/rnd_outdoor/rnd_crow_1.ogg', 'sound/stalker/ambience/rnd_outdoor/rnd_crow_2.ogg',
		'sound/stalker/ambience/rnd_outdoor/rnd_crow_3.ogg', 'sound/stalker/ambience/rnd_outdoor/rnd_crow_4.ogg',
		'sound/stalker/ambience/rnd_outdoor/rnd_crow_5.ogg', 'sound/stalker/ambience/rnd_outdoor/rnd_crow_6.ogg',
		'sound/stalker/ambience/rnd_outdoor/rnd_crow_7.ogg', 'sound/stalker/ambience/rnd_outdoor/rnd_crow_8.ogg',
		'sound/stalker/ambience/rnd_outdoor/rnd_crow_9.ogg', 'sound/stalker/ambience/rnd_outdoor/rnd_crow_10.ogg',
		'sound/stalker/ambience/rnd_outdoor/rnd_crow_11.ogg','sound/stalker/ambience/rnd_outdoor/rnd_crow_12.ogg',
		'sound/stalker/ambience/rnd_outdoor/ambient_wind_1.ogg', 'sound/stalker/ambience/rnd_outdoor/ambient_wind_2.ogg',
		'sound/stalker/ambience/rnd_outdoor/ambient_wind_3.ogg', 'sound/stalker/ambience/rnd_outdoor/ambient_wind_4.ogg',
		'sound/stalker/ambience/rnd_outdoor/rnd_insect_8.ogg'
	)
	ambient_environment_night = list(
		'sound/stalker/ambience/rnd_outdoor_night/rnd_moan.ogg', 'sound/stalker/ambience/rnd_outdoor_night/rnd_moan2.ogg',
		'sound/stalker/ambience/rnd_outdoor_night/rnd_moan3.ogg', 'sound/stalker/ambience/rnd_outdoor_night/rnd_moan4.ogg',
		'sound/stalker/ambience/rnd_outdoor_night/rnd_moan5.ogg', 'sound/stalker/ambience/rnd_outdoor_night/rnd_moan6.ogg',
		'sound/stalker/ambience/rnd_outdoor_night/ambient_night_1.ogg', 'sound/stalker/ambience/rnd_outdoor_night/ambient_night_2.ogg',
		'sound/stalker/ambience/rnd_outdoor_night/ambient_night_3.ogg', 'sound/stalker/ambience/rnd_outdoor_night/ambient_night_4.ogg',
		'sound/stalker/ambience/rnd_outdoor_night/ambient_night_5.ogg', 'sound/stalker/ambience/rnd_outdoor_night/ambient_night_6.ogg',
		'sound/stalker/ambience/rnd_outdoor_night/ambient_night_7.ogg', 'sound/stalker/ambience/rnd_outdoor_night/ambient_night_8.ogg',
		'sound/stalker/ambience/rnd_outdoor_night/ambient_night_9.ogg', 'sound/stalker/ambience/rnd_outdoor_night/ambient_night_10.ogg',
		'sound/stalker/ambience/rnd_outdoor_night/wolf_howl_01.ogg', 'sound/stalker/ambience/rnd_outdoor_night/wolf_howl_02.ogg',
		'sound/stalker/ambience/rnd_outdoor_night/wolf_howl_03.ogg', 'sound/stalker/ambience/rnd_outdoor_night/wolf_howl_04.ogg',
	)
	ambient_environment_cooldown = 420
	ambient_background = list(null, null,'sound/stalker/ambience/rnd_outdoor_night/zat_bkg_tuman.ogg', 'sound/stalker/ambience/rnd_outdoor_night/ambient_night_11.ogg', null) // 'sound/stalker/ambience/rnd_outdoor/rnd_insect_5.ogg' - evening
	ambient_background_cooldown = list(null, null, 220, 420, null) //280 - evening
	environment = ENVIRONMENT_OUTDOORS_EXPOSED


////////////////////////////////////////////////////////////////

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

	///SVALKA\\\


/area/stalker/svalka
	requires_power = 1

/area/stalker/svalka/buildings
	name = "Buildings"
	icon_state = "buildings"

/area/stalker/blowout/svalka/buildings
	name = "Buildings"
	icon_state = "buildings"

/area/stalker/blowout/svalka/buildings/bar
	name = "Bar"
	icon_state = "buildings"

/area/stalker/svalka/cellar
	name = "Cellar"
	icon_state = "cellar"

/area/stalker/svalka/tunnel
	name = "Tunnel"
	icon_state = "tunnel_s"

/area/stalker/blowout/svalka/tunnel
	name = "Tunnel"
	icon_state = "tunnel"