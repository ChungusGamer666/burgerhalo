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
    var/count = get_count()
    if(isnull(count))
        maptext = null
    else
        maptext = "<span style='text-align: center;font-family: \"Small Fonts\";font-size:12px;-dm-text-outline: 2px black;color: #FFFFFF'>[uppertext(team)]: [count]</span>"

/obj/hud/button/ticket_counter/proc/get_count()
    var/gamemode/horde/horde_mode = SSgamemode.active_gamemode
    if(!istype(horde_mode))
        return 0
    return horde_mode.team_points["[team]_points"]

/obj/hud/button/ticket_counter/unsc
    name = "unsc tickets"
    team = "unsc"
    screen_loc = "CENTER,TOP"

/obj/hud/button/ticket_counter/urf
    name = "urf tickets"
    team = "urf"
    screen_loc = "CENTER,TOP"

/obj/hud/button/ticket_counter/covenant
    name = "covenant tickets"
    team = "covenant"
    screen_loc = "CENTER,TOP:-16"

