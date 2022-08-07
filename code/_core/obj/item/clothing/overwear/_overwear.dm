/obj/item/clothing/overwear/
	worn_layer = LAYER_MOB_CLOTHING_COAT
	item_slot = SLOT_TORSO_O

	protected_limbs = list(BODY_TORSO, BODY_ARM_LEFT, BODY_ARM_RIGHT)

	blocks_clothing = SLOT_TORSO | SLOT_TORSO_A | SLOT_TORSO_U

/obj/item/clothing/overwear/on_pickup(atom/old_location, obj/hud/inventory/new_location)
	. = ..()
	if(. && shield_health && new_location.owner)
		equip_shield(new_location.owner)

/obj/item/clothing/overwear/on_drop(obj/hud/inventory/old_inventory, atom/new_loc, silent)
	. = ..()
	if(. && shield_health && old_inventory.owner)
		drop_shield(old_inventory.owner)

/obj/item/clothing/overwear/proc/equip_shield(mob/living/advanced/spartan)
	if(!istype(spartan) || spartan.shield_health)
		return FALSE
	world << "amigo [src] EQUIPPED SHIELD SUCESSFULLY"
	spartan.shield_health = shield_health
	spartan.add_vis_content(shield_health.shield_effect)
	return TRUE

/obj/item/clothing/overwear/proc/drop_shield(mob/living/advanced/spartan)
	if(!istype(spartan) || (spartan.shield_health != shield_health))
		return FALSE
	world << "amigo [src] UNEQUIPPED SHIELD SUCESSFULLY"
	spartan.shield_health = null
	spartan.remove_vis_content(shield_health.shield_effect)
	return TRUE
