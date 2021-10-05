#define SKADOVSK_LOCKDOWN_TIMER				2400
#define CLEANABLE_CLEAN_DELAY				5000

///////////////JOB
#define UNIFORMPICK (pick(/obj/item/clothing/under/color/switer, /obj/item/clothing/under/color/switer/dark, /obj/item/clothing/under/color/switer/lolg, /obj/item/clothing/under/color/switer/tracksuit))
#define UNIFORMPICK_TOURIST (pick(/obj/item/clothing/under/color/switer/tourist/sweater, /obj/item/clothing/under/color/switer/tourist/jacket_green, /obj/item/clothing/under/color/switer/tourist/jacket_brown, /obj/item/clothing/under/color/switer/tourist/suspenders, /obj/item/clothing/under/color/switer/tourist/mall_cop, /obj/item/clothing/under/color/switer/tourist/gorka))
#define SUITPICK_TOURIST (pick(/obj/item/clothing/suit/kozhanka/tourist/jacket, /obj/item/clothing/suit/kozhanka/tourist/coat, /obj/item/clothing/suit/kozhanka/tourist/gorka))
///////////////
#define ZONE_LEGEND							10000
#define EXPERT								7000
#define VETERAN								4000
#define EXPERIENCED							2500
#define ROOKIE								0

///////////////
#define AMAZING								3000
#define VERYGOOD							2500
#define GOOD								1750
#define NEUTRAL								1500
#define BAD									1250
#define VERYBAD								500
#define DISGUSTING							0

///////////////ITEM TIERS
#define TRASH_TIER_COST						4000
#define LOW_TIER_COST						9000
#define MEDIUM_TIER_COST					36000
#define HIGH_TIER_COST						72000

///////////////STAKLER_PDA
#define FEED_SOUND							1
#define FEED_IMAGES							2
#define RATING_IMAGES						4

#define LENTA_MESSAGE_COOLDOWN				450
#define LENTA_FACTION_MESSAGE_COOLDOWN		100
#define LEADER_INVITE_COOLDOWN				100

#define RATING_REMOVE_TIMER					18000

///////////////BLOWOUT
#define BLOWOUT_DURATION_STAGE_I			900
#define BLOWOUT_DURATION_STAGE_II			1220
#define BLOWOUT_DURATION_STAGE_III			1540

///////////////SIDORMAT
#define SHOW_FACTION_EQUIPMENT				1
#define BUY_STUFF							2
#define SELL_UNBUYABLE						4

///////////////COLOR MATRIXES
#define NIGHTVISION_MATRIX_I			list(0.1, 0.9, 0,\
											0, 1, 0,\
											0, 0.9, 0.1)

#define NIGHTVISION_MATRIX_II			list(0.33, 0.33, 0.33,\
											0.33, 0.33, 0.33,\
											0.33, 0.33, 0.33)

///////////////SOUND CHANNELS
#define AMBIENT_MUSIC_CHANNEL				707
#define AMBIENT_ENVIRONMENT_CHANNEL			708
#define AMBIENT_BACKGROUND_CHANNEL			709
#define AMBIENT_PSY_CHANNEL					710
#define TURNTABLE_CHANNEL					711
#define AMBIENT_CAMPFIRE_CHANNEL			712

///////////////GAMEMODES
#define MONOLITH_REVENGE_HOLD_TIME			6000

///////////////MIND STATE
#define MENTAL_STABLE						0
#define MENTAL_MONOLITH						1
#define MENTAL_ZOMBIE						2

//////////////ANOMALIES


//HOLODEC
#define BIRTH_STAGE							0
#define MIDAGE_STAGE						1
#define DEATH_STAGE							2