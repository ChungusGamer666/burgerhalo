/gamemode/liberation
	name = "Liberation"
	desc = "Team deathmatch: UNSC vs Covenant!"
	team_points = list(
		"unsc" = 50,
		"covenant" = 50,
	)

/gamemode/liberation/New()
	. = ..()
	state = GAMEMODE_WAITING
	round_time = 0
	round_time_next = HORDE_DELAY_WAIT //Skip to gearing. Nothing to wait for.
	announce(name, "Starting new round...", desc)

/gamemode/liberation/update_points()
	for(var/team in team_points)
		var/points = team_points[team]
		if(points > 0)
			continue
		switch(team)
			if("unsc")
				world.end(WORLD_END_COVENANT_VICTORY)
			if("covenant")
				world.end(WORLD_END_NANOTRASEN_VICTORY)
