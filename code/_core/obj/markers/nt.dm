var/global/list/all_nt_markers = list()

/obj/marker/nt
	name = "nt marker"
	var/spawn_type

/obj/marker/nt/New(var/desired_loc)

	if(name)
		if(!all_nt_markers[name])
			all_nt_markers[name] = list()

		all_nt_markers[name] += src
	else
		log_error("Warning! NT marker [src.get_debug_name()] is invalid!")

	return ..()

/obj/marker/nt/crusader
	name = "Crusader"
	spawn_type = /mob/living/advanced/player/nt/crusader

/obj/marker/nt/penetrator
	name = "Penetrator"
	spawn_type = /mob/living/advanced/player/nt/penetrator

/obj/marker/nt/blitz
	name = "Shieldman"
	spawn_type = /mob/living/advanced/player/nt/blitz

/obj/marker/nt/lwizard
	name = "Wizard of Light"
	spawn_type = /mob/living/advanced/player/nt/lwizard

/obj/marker/nt/sledge
	name = "Sledge"
	spawn_type = /mob/living/advanced/player/nt/sledge

/obj/marker/nt/cowboy
	name = "Cowboy"
	spawn_type = /mob/living/advanced/player/nt/cowboy

/obj/marker/nt/odst
	name = "ODST trooper"
	spawn_type = /mob/living/advanced/player/nt/halo/odst

/obj/marker/nt/odst_commander
	name = "ODST commander"
	spawn_type = /mob/living/advanced/player/nt/halo/odst/commander

/obj/marker/nt/spartan_three
	name = "S-II"
	spawn_type = /mob/living/advanced/player/nt/halo/spartan