/obj/decal/poster/
	name = "poster"
	desc = "Do not ERP, ERP is bad."
	desc_extended = "A randomized poster as decor to liven up the area."
	icon = 'icons/obj/decal/poster.dmi'
	mouse_opacity = 1
	icon_state = null
	plane = PLANE_WALL
	layer = LAYER_WALL_DECAL

/obj/decal/poster/Initialize()
	setup_dir_offsets(src)
	dir = SOUTH
	return ..()

/obj/decal/poster/nanotrasen/PostInitialize() //Random positive poster.
	. = ..()
	icon_state = "poster[rand(1,35)]_legit"
	return .

/obj/decal/poster/syndicate/PostInitialize() //Random negative poster.
	. = ..()
	icon_state = "poster[rand(1,44)]"
	return .

/obj/decal/poster/urfreno
	name = "poster"
	desc = "A wise and great leader."
	desc_extended = "Johnny Reno, legendary URF Leader..."
	icon_state = "poster_reno"

/obj/decal/poster/urfcat
	name = "poster"
	desc = "That's the URF cat!"
	desc_extended = "WOW!"
	icon_state = "poster_urfcat"

/obj/decal/poster/urfpat
	name = "poster"
	desc = "Who the hell is Pat Cleary?"
	desc_extended = "Seriously who is that guy..."
	icon_state = "poster_pat"

/obj/decal/poster/urf_frick
	name = "poster"
	desc = "FRICK UNSC!!!"
	desc_extended = "FRIG OFF UNSC!!!"
	icon_state = "poster_frick"

/obj/decal/poster/urfmajor
	name = "poster"
	desc = "URF Major guys!"
	desc_extended = "URF MAJOR YEAAAH!!!"
	icon_state = "poster_major"