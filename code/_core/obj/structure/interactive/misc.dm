obj/structure/interactive/misc/ //TODO: RENAME THIS ENTIRE CATEGORY
	icon = 'icons/obj/structure/misc.dmi'

obj/structure/interactive/misc/tv
	name = "tv"
	desc = "Don't sit too close to the television!"
	desc_extended = "A vintage television as decor to liven up the area."
	icon_state = "tv"
	collision_flags = FLAG_COLLISION_WALL
	collision_bullet_flags = FLAG_COLLISION_BULLET_INORGANIC

	bullet_block_chance = 25


obj/structure/interactive/misc/dresser
	name = "dresser"
	desc = "Undie dispenser."
	desc_extended = "A clothing dresser as decor to liven up the area. Doesn't actually dispense underwear, sadly."
	icon_state = "dresser"
	collision_flags = FLAG_COLLISION_WALL
	collision_bullet_flags = FLAG_COLLISION_BULLET_INORGANIC

	bullet_block_chance = 50

	density = TRUE

obj/structure/interactive/misc/dresser/chargen/clicked_on_by_object(var/mob/caller,var/atom/object,location,control,params)

	if(!is_advanced(caller))
		return ..()

	INTERACT_CHECK
	INTERACT_CHECK_OBJECT
	INTERACT_DELAY(5)

	var/mob/living/advanced/A = caller

	if(!length(A.worn_objects))
		A.equip_loadout(/loadout/new_player,TRUE)

	return TRUE

obj/structure/interactive/misc/toilet
	name = "toilet"
	desc = "*obligatory poop joke*"
	desc_extended = "A toilet as decor to liven up the area. Warranty void if used for swirlies."
	icon_state = "toilet"

obj/structure/interactive/misc/urinal
	name = "urinal"
	desc = "*obligatory piss joke*"
	desc_extended = "A urinal on the wall as decor to liven up the area."
	icon_state = "urinal"
	plane = PLANE_OBJ



obj/structure/interactive/misc/shower
	name = "shower"
	desc = "For when you don't feel like taking a b‰‰‰th."
	desc_extended = "A shower fixture as decor to liven up the area."
	icon_state = "shower"

obj/structure/interactive/misc/mirror
	name = "mirror"
	desc = "Magic mirror on the wall, who is the most robust of them all?"
	desc_extended = "Stand in front of this to change your appearance."
	icon_state = "mirror"
	plane = PLANE_OBJ

	density = TRUE


obj/structure/interactive/misc/mirror/chargen/Crossed(atom/movable/O)
	if(is_player(O))
		var/mob/living/advanced/player/P = O
		P.add_chargen_buttons()
		P.handle_hairstyle_chargen(-1,update_blends=FALSE)
		P.handle_beardstyle_chargen(-1,update_blends=FALSE)
		P.update_all_blends()
		P.show_hud(TRUE,FLAGS_HUD_CHARGEN,FLAGS_HUD_SPECIAL,speed=3)

	return ..()

obj/structure/interactive/misc/mirror/chargen/Uncrossed(atom/movable/O)
	if(is_advanced(O))
		var/mob/living/advanced/player/P = O
		P.remove_chargen_buttons()
	return ..()



/obj/structure/interactive/misc/mirror/cracked
	name = "cracked mirror"
	desc = "It's broken."
	desc_extended = "Who could even use this?"
	icon_state = "mirror_broke"

/obj/structure/interactive/misc/mirror/cracked/chargen/Crossed(atom/movable/O)
	if(istype(O,/mob/living/advanced/player/antagonist/) && SSgamemode.active_gamemode.state < GAMEMODE_BOARDING)
		var/mob/living/advanced/player/P = O
		P.add_chargen_buttons()
		P.handle_hairstyle_chargen(-1,update_blends=FALSE)
		P.handle_beardstyle_chargen(-1,update_blends=FALSE)
		P.update_all_blends()
		P.show_hud(TRUE,FLAGS_HUD_CHARGEN,FLAGS_HUD_SPECIAL,speed=3)

/obj/structure/interactive/misc/mirror/cracked/chargen/Uncrossed(atom/movable/O)
	if(istype(O,/mob/living/advanced/player/antagonist/))
		var/mob/living/advanced/player/P = O
		P.remove_chargen_buttons()
	return ..()


obj/structure/interactive/misc/curtain_open
	name = "curtain"
	desc = "For warding off peeping toms."
	desc_extended = "A curtain attached to the wall/ceiling as decor to liven up the area."
	icon_state = "curtain_open"
	alpha = 175

obj/structure/interactive/misc/sink
	name = "sink"
	desc = "Wa'tr. Wa'tr free o' charge."
	desc_extended = "A standing sink as decor to liven up the area. What? You actually expected this to dispense water free of charge?"
	icon_state = "sink"
	plane = PLANE_OBJ

obj/structure/interactive/misc/coatrack
	name = "coat rack"
	desc = "For your clothing."
	desc_extended = "Wooden stand for clothing."
	icon_state = "coatrack0"

obj/structure/interactive/misc/coatrack/PostInitialize() //Random shelf.
	. = ..()
	icon_state = "coatrack[rand(0,4)]"
	return .

/obj/structure/interactive/misc/halo

/obj/structure/interactive/misc/halo/statue
	name = "statue"
	icon = 'icons/halo/icons/memorial_statue.dmi'
	desc = "A statue"
	pixel_x = -9
	collision_flags = FLAG_COLLISION_WALL
	collision_bullet_flags = FLAG_COLLISION_BULLET_INORGANIC

/obj/structure/interactive/misc/halo/statue/limbobaggins
	icon_state = "bilba_stone"
	desc_extended = "Memorial of Jhonny Smith, ODST troops sergeant."

/obj/structure/interactive/misc/halo/statue/ghostgamer
	icon_state = "ghostgamer_stone"
	desc_extended = "Memorial of Andrey Kasperov, Commander of the UNSC Light Brigade."

/obj/structure/interactive/misc/halo/statue/darksovet
	icon_state = "sovet_stone"
	desc_extended = "Memorial of Fedor Yablochkin, UNSC marine."

/obj/structure/interactive/misc/halo/statue/doctoralex
	icon_state = "alex_stone"
	desc_extended = "Memorial of Michael Brown, Pilot of the UNSC Light Brigade."

/obj/structure/interactive/misc/halo/signs
	name = "floor marker"
	icon = 'icons/halo/Hallwaymarkers.dmi'
	desc = "Marker"

/obj/structure/interactive/misc/halo/signs/armory
	icon_state = "armory"

/obj/structure/interactive/misc/halo/signs/hangar
	icon_state = "hangar"

/obj/structure/interactive/misc/halo/decor

/obj/structure/interactive/misc/halo/decor/machinery/table
	name = "Holo-table"
	icon = 'icons/halo/icons/machinery/computer.dmi'
	icon_state = "holotable"
	collision_flags = FLAG_COLLISION_WALL
	collision_bullet_flags = FLAG_COLLISION_BULLET_INORGANIC

	density = TRUE
	bullet_block_chance = 25

/obj/structure/interactive/misc/halo/decor/machinery/tower
	name = "Communication Tower"
	icon = 'icons/halo/icons/machinery/comm_tower.dmi'
	icon_state = "comm_tower"
	layer = LAYER_LARGE_OBJ
	plane = PLANE_SCENERY
	collision_flags = FLAG_COLLISION_WALL
	collision_bullet_flags = FLAG_COLLISION_BULLET_INORGANIC

	density = TRUE
	bullet_block_chance = 50

/obj/structure/interactive/misc/halo/decor/machinery/radio_tower_gm
	name = "Main Radio-Tower"
	icon = 'icons/halo/icons/machinery/radio_tower.dmi'
	icon_state = "tower_on"
	layer = LAYER_LARGE_OBJ
	plane = PLANE_SCENERY
	collision_flags = FLAG_COLLISION_WALL
	collision_bullet_flags = FLAG_COLLISION_BULLET_INORGANIC
	bound_width = TILE_SIZE*3
	bound_height = TILE_SIZE*3
	health = /health/construction
	health_base = 2000
	density = TRUE
	bullet_block_chance = 50

/obj/structure/interactive/misc/halo/decor/machinery/radio_tower_gm/on_destruction(var/mob/caller,var/damage = FALSE)

	icon_state = "tower_broke"

	return ..()

/obj/structure/interactive/misc/halo/decor/machinery/radio_tower_gm/urf
	name = "Main Radio-Tower"
	desc = "Destruction of this tower will end the round with the UNSC's victory."
	icon = 'icons/halo/icons/machinery/radio_tower.dmi'
	icon_state = "tower_on"
	layer = LAYER_LARGE_OBJ
	plane = PLANE_SCENERY
	collision_flags = FLAG_COLLISION_WALL
	collision_bullet_flags = FLAG_COLLISION_BULLET_INORGANIC
	bound_width = TILE_SIZE*3
	bound_height = TILE_SIZE*3
	health = /health/construction
	health_base = 4000
	density = TRUE
	bullet_block_chance = 50

/obj/structure/interactive/misc/halo/decor/machinery/radio_tower_gm/urf/on_destruction(var/mob/caller,var/damage = FALSE)

	icon_state = "tower_broke"
	world.end(WORLD_END_NANOTRASEN_VICTORY)

	return ..()

/obj/structure/interactive/misc/halo/decor/machinery/radio_tower_gm/unsc
	name = "Secondary Radio-Tower"
	desc = "Destruction of this tower will end the round with the URF's victory."
	icon = 'icons/halo/icons/machinery/radio_tower.dmi'
	icon_state = "tower_on"
	layer = LAYER_LARGE_OBJ
	plane = PLANE_SCENERY
	collision_flags = FLAG_COLLISION_WALL
	collision_bullet_flags = FLAG_COLLISION_BULLET_INORGANIC
	bound_width = TILE_SIZE*3
	bound_height = TILE_SIZE*3
	health = /health/construction
	health_base = 4000
	density = TRUE
	bullet_block_chance = 50

/obj/structure/interactive/misc/halo/decor/machinery/radio_tower_gm/unsc/on_destruction(var/mob/caller,var/damage = FALSE)

	icon_state = "tower_broke"
	world.end(WORLD_END_SYNDICATE_VICTORY)

	return ..()

/obj/structure/interactive/misc/halo/decor/vehicles
	density = TRUE

/obj/structure/interactive/misc/halo/decor/vehicles/spirit
	name = "Type-25 Spirit"
	icon = 'icons/halo/vehicles/types/spirit.dmi'
	icon_state = "base"
	collision_flags = FLAG_COLLISION_WALL
	collision_bullet_flags = FLAG_COLLISION_BULLET_INORGANIC
	bound_width = TILE_SIZE*4
	bound_height = TILE_SIZE*8

/obj/structure/interactive/misc/halo/decor/vehicles/scorpion
	name = "M808B Scorpion"
	icon = 'icons/halo/vehicles/types/Scorpion.dmi'
	icon_state = "west"
	collision_flags = FLAG_COLLISION_WALL
	collision_bullet_flags = FLAG_COLLISION_BULLET_INORGANIC
	bound_width = TILE_SIZE*3

/obj/structure/interactive/misc/halo/decor/vehicles/warthog
	name = "M12 Warthog"
	icon = 'icons/halo/vehicles/types/finalwarthog.dmi'
	icon_state = "Warthog"
	collision_flags = FLAG_COLLISION_WALL
	collision_bullet_flags = FLAG_COLLISION_BULLET_INORGANIC
	bound_width = TILE_SIZE*2

/obj/structure/interactive/misc/halo/decor/tanktrap
	name = "tanktrap"
	icon = 'icons/halo/structures/structures1.dmi'
	icon_state = "tanktrap"
	collision_flags = FLAG_COLLISION_WALL
	collision_bullet_flags = FLAG_COLLISION_BULLET_INORGANIC

	density = TRUE
	bullet_block_chance = 50

/obj/structure/interactive/misc/halo/decor/vehicles/placeholder
	collision_flags = FLAG_COLLISION_WALL
	collision_bullet_flags = FLAG_COLLISION_BULLET_INORGANIC
	invisibility = 101

	density = TRUE