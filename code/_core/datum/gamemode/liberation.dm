/gamemode/liberation
	name = "Liberation"
	desc = "Team deathmatch: UNSC vs Covenant."
	team_points = list(
		"unsc" = 50,
		"covenant" = 50,
	)

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
