/gamemode/firefight/charlie
	name = "Checkpoint Charlie"
	desc = "Fight off a group of insurrectionists in this wave based gamemode!"
	enemy_types_to_spawn = list(
		/mob/living/advanced/npc/halo/urf/riflemen = 50,
		/mob/living/advanced/npc/halo/urf/pointmen = 40,
		/mob/living/advanced/npc/halo/urf/marksmen = 30,
		/*/mob/living/advanced/npc/halo/urf/demolitions = 6,*/
		/mob/living/advanced/npc/halo/urf/commando = 15
		/*/mob/living/advanced/npc/halo/urf/hmg = 1*/)
	hidden = TRUE
	team_points = list(
		"unsc" = 15,
	)

	enemies_to_spawn_base = 5
	enemies_to_spawn_per_player = 2
	enemies_to_spawn_per_minute = 0.25

/gamemode/firefight/home
	name = "Homeland Defence"
	desc = "Defend your home from the UNSC in this wave based gamemode!"
	enemy_types_to_spawn = list()
	hidden = TRUE
	team_points = list(
		"urf" = 15,
	)

	enemies_to_spawn_base = 5
	enemies_to_spawn_per_player = 2
	enemies_to_spawn_per_minute = 0.25

/gamemode/firefight/ship
	name = "Anti-Boarding Operations"
	desc = "Fight off UNSC Boarding Crew in this wave based gamemode!"
	enemy_types_to_spawn = list()
	hidden = TRUE
	team_points = list(
		"covenant" = 15,
	)

	enemies_to_spawn_base = 5
	enemies_to_spawn_per_player = 2
	enemies_to_spawn_per_minute = 0.25
