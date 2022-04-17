var/global/list/hud_ticket_counters = list()

/obj/hud/button/ticket_counter
    name = "tickets"
    desc = "Counts the tickets for a certain team."
    icon = 'icons/hud/fucking.dmi'
    icon_state = "blank"
    is_static = TRUE
    screen_loc = "CENTER,TOP"
    var/team = "FUCK"

/obj/hud/button/ticket_counter/Initialize()
    . = ..()
    hud_ticket_counters += src
    update_name()

/obj/hud/button/ticket_counter/Destroy()
    . = ..()
    hud_ticket_counters -= src

//doesn't actually deal with name but this works i guess
/obj/hud/button/ticket_counter/update_name(desired_name)
    . = ..()
    var/points = get_points()
    if(isnull(points))
        maptext = null
        return
    maptext = TICKET_COUNTER_TEXT(team, points)

/obj/hud/button/ticket_counter/proc/get_points()
    var/gamemode/gamemode = SSgamemode.active_gamemode
    return gamemode.team_points["[team]_points"]

/obj/hud/button/ticket_counter/unsc
    name = "unsc tickets"
    team = "unsc"
    screen_loc = "CENTER,TOP"

/obj/hud/button/ticket_counter/covenant
    name = "covenant tickets"
    team = "covenant"
    screen_loc = "CENTER,TOP:-16"

/obj/hud/button/ticket_counter/urf
    name = "urf tickets"
    team = "urf"
    screen_loc = "CENTER,TOP:-32"

/obj/hud/button/ticket_counter/urf/Initialize()
    . = ..()
    var/gamemode/gamemode = SSgamemode.active_gamemode
    if(isnull(gamemode.team_points["covenant"]))
        screen_loc = "CENTER,TOP:-16"
