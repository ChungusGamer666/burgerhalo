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
	round_time_next = LIBERATION_DELAY_WAIT //Skip to gearing. Nothing to wait for.
	announce(name, "Starting new round...", desc)

/gamemode/liberation/on_life()
	. = ..()
	switch(state)
		if(GAMEMODE_WAITING)
			on_waiting()
		if(GAMEMODE_GEARING)
			on_gearing()
		if(GAMEMODE_FIGHTING)
			on_fighting()

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

/gamemode/liberation/proc/on_waiting()
	var/time_to_display = round_time_next - round_time
	set_status_display("mission","PREP\n[get_clock_time(time_to_display)]")
	if(time_to_display >= 0)
		set_message("Round starts in: [get_clock_time(time_to_display)]",TRUE)
		return TRUE
	state = GAMEMODE_GEARING
	round_time = 0
	round_time_next = HORDE_DELAY_GEARING
	SSshuttle.next_pod_launch = world.time + SECONDS_TO_DECISECONDS(30*10 + 10)
	announce(
		"Central Command Update",
		"Prepare for Landfall",
		"All landfall crew are ordered to gear up for planetside combat. Estimated time until shuttle and drop pod functionality: 8 minutes.",
		ANNOUNCEMENT_STATION,
		'sound/voice/announcement/landfall_crew_8_minutes.ogg'
	)
	return TRUE

/gamemode/liberation/proc/on_gearing()
	var/time_to_display = round_time_next - round_time
	set_status_display("mission","GEAR\n[get_clock_time(time_to_display)]")
	if(time_to_display >= 0)
		set_message("Loadout Period: [get_clock_time(time_to_display)]",TRUE)
		return TRUE
	state = GAMEMODE_FIGHTING
	round_time = 0
	round_time_next = LIBERATION_DELAY_GEARING
	allow_launch = TRUE
	announce(
		"Central Command Update",
		"Shuttle Boarding",
		"All landfall crew are ordered to proceed to the hanger bay and prep for shuttle launch. Shuttles will be allowed to launch in 2 minutes.",
		ANNOUNCEMENT_STATION,
		'sound/voice/announcement/landfall_crew_2_minutes.ogg'
	)
	return TRUE

/gamemode/liberation/proc/on_fighting()
    return TRUE
