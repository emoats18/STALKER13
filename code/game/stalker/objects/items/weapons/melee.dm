/obj/item/weapon/kitchen/knife/tourist
	name = "tourist knife"
	eng_desc = "Cheap shitty knife commonly seen in the hands of Tourists. It's good enough for them, but what about you?"
	icon = 'icons/stalker/weapons.dmi'
	icon_state = "knife"
	flags = CONDUCT
	slot_flags = SLOT_BELT
	force = 20
	throwforce = 15
	w_class = 3
	hitsound = 'sound/weapons/bladeslice.ogg'
	attack_verb = list("attacked", "slashed", "stabbed", "sliced", "torn", "ripped", "diced", "cut")
	sharpness = IS_SHARP_ACCURATE
	butcher_speed = 1.05

/obj/item/weapon/kitchen/knife/bayonet
	name = "bayonet"
	eng_desc = "Dangerous in a combat scenario, but less suited for butchering a Mutant."
	icon = 'icons/stalker/weapons.dmi'
	icon_state = "bayonet"
	flags = CONDUCT
	slot_flags = SLOT_BELT
	force = 25
	throwforce = 20
	w_class = 3
	hitsound = 'sound/weapons/bladeslice.ogg'
	attack_verb = list("attacked", "stabbed", "torn", "ripped")
	sharpness = IS_SHARP_ACCURATE
	butcher_speed = 1

/obj/item/weapon/kitchen/knife/hatchet
	name = "hatchet"
	desc = "A very sharp axe blade upon a short wooden handle. It has a long history of chopping wood, but now it is used for chopping mutants, among other things."
	icon = 'icons/obj/weapons.dmi'
	icon_state = "hatchet"
	flags = CONDUCT
	force = 30
	w_class = 3
	throwforce = 15
	throw_speed = 3
	throw_range = 4
	attack_verb = list("chopped", "torn", "cut")
	hitsound = 'sound/weapons/bladeslice.ogg'
	sharpness = IS_SHARP_ACCURATE
	butcher_speed = 1.35