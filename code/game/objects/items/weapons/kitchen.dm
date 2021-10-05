k/* Kitchen tools
 * Contains:
 *		Fork
 *		Kitchen knives
 *		Ritual Knife
 *		Butcher's cleaver
 *		Combat Knife
 *		Rolling Pins
 */

/obj/item/weapon/kitchen
	icon = 'icons/obj/kitchen.dmi'

/obj/item/weapon/kitchen/fork
	name = "fork"
	desc = "Pointy."
	icon_state = "fork"
	force = 5
	w_class = 1
	throwforce = 0
	throw_speed = 3
	throw_range = 5
	flags = CONDUCT
	origin_tech = "materials=1"
	attack_verb = list("attacked", "stabbed", "poked")
	hitsound = 'sound/weapons/bladeslice.ogg'
	var/datum/reagent/forkload //used to eat omelette

/obj/item/weapon/kitchen/fork/attack(mob/living/carbon/M, mob/living/carbon/user)
	if(!istype(M))
		return ..()

	if(forkload)
		if(M == user)
			M.visible_message("<span class='notice'>[user] eats a delicious forkful of omelette!</span>")
			M.reagents.add_reagent(forkload.id, 1)
		else
			M.visible_message("<span class='notice'>[user] feeds [M] a delicious forkful of omelette!</span>")
			M.reagents.add_reagent(forkload.id, 1)
		icon_state = "fork"
		forkload = null
		return

	else if(user.zone_sel.selecting == "eyes")
		if(user.disabilities & CLUMSY && prob(50))
			M = user
		return eyestab(M,user)
	else
		return ..()


/obj/item/weapon/kitchen/knife
	name = "kitchen knife"
	icon_state = "knife"
	desc = "A general purpose kitchen knife used by Chefs all over the world. Better than nothing in combat."
	flags = CONDUCT
	force = 15
	w_class = 2
	throwforce = 10
	hitsound = 'sound/weapons/bladeslice.ogg'
	throw_speed = 3
	throw_range = 6
	materials = list(MAT_METAL=12000)
	origin_tech = "materials=1"
	attack_verb = list("slashed", "stabbed", "sliced", "torn", "ripped", "diced", "cut")
	sharpness = IS_SHARP_ACCURATE
	var/butcher_speed = 1.1

/obj/item/weapon/kitchen/knife/suicide_act(mob/user)
	user.visible_message(pick("<span class='suicide'>[user] is slitting \his wrists with the [src.name]! It looks like \he's trying to commit suicide.</span>", \
						"<span class='suicide'>[user] is slitting \his throat with the [src.name]! It looks like \he's trying to commit suicide.</span>", \
						"<span class='suicide'>[user] is slitting \his stomach open with the [src.name]! It looks like \he's trying to commit seppuku.</span>"))
	return (BRUTELOSS)

/obj/item/weapon/kitchen/knife/ritual
	name = "ritual knife"
	desc = "The unearthly energies that once powered this blade are now dormant."
	icon = 'icons/obj/wizard.dmi'
	icon_state = "render"
	w_class = 3

/obj/item/weapon/kitchen/knife/butcher
	name = "butcher's cleaver"
	icon_state = "butch"
	desc = "Best knife at butchering mutants. Also good at cutting stalkers."
	eng_desc = "Best knife at butchering mutants. Also good at cutting stalkers."
	flags = CONDUCT
	force = 32
	throwforce = 8
	sharpness = IS_SHARP_ACCURATE
	slot_flags = SLOT_BELT
	hitsound = "sound/weapons/knifeswing.ogg"
	attack_verb = list("cleaved", "slashed", "stabbed", "sliced", "torn", "ripped", "diced", "cut")
	w_class = 3
	butcher_speed = 0.6

/obj/item/weapon/kitchen/knife/combat
	name = "combat knife"
	icon_state = "buckknife"
	item_state = "knife"
	desc = "A military combat utility survival knife."
	force = 30
	throwforce = 25
	origin_tech = "materials=2;combat=4"
	attack_verb = list("slashed", "stabbed", "sliced", "torn", "ripped", "cut")
	butcher_speed = 0.9

/obj/item/weapon/kitchen/knife/hunting
	name = "hunting knife"
	icon_state = "huntingknife"
	item_state = "knife"
	desc = "A hunting knife that is typically used by stalkers and military personnel alike. It has a serrated edge which is fit for survival usage, and a bayonet lug on its hilt."
	force = 35
	throwforce = 20
	sharpness = IS_SHARP_ACCURATE
	slot_flags = SLOT_BELT
	hitsound = "sound/weapons/knifeswing.ogg"
	origin_tech = "materials=2;combat=4"
	attack_verb = list("slashed", "stabbed", "sliced", "torn", "ripped", "cut")
	butcher_speed = 0.7

/obj/item/weapon/kitchen/knife/m9
	name = "m9 knife"
	icon_state = "m9knife"
	item_state = "knife"
	desc = "An M9 Phrobis III multipurpose knife and bayonet. Sports a 7-inch blade and is purpose-built to stab things, in your hands or on a gun. Really pointy."
	force = 30
	throwforce = 20
	armour_penetration = 35
	sharpness = IS_SHARP_ACCURATE
	slot_flags = SLOT_BELT
	hitsound = "sound/weapons/knifeswing.ogg"
	origin_tech = "materials=2;combat=4"
	attack_verb = list("penetrated", "stabbed", "jabbed", "impaled", "ripped", "pierced")
	butcher_speed = 0.9

/obj/item/weapon/kitchen/rollingpin
	name = "rolling pin"
	desc = "Used to knock out the Bartender."
	icon_state = "rolling_pin"
	force = 8
	throwforce = 5
	throw_speed = 3
	throw_range = 7
	w_class = 3
	attack_verb = list("bashed", "battered", "bludgeoned", "thrashed", "whacked")

/* Trays  moved to /obj/item/weapon/storage/bag */
