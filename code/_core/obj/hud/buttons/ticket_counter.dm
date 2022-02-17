var/global/list/ticket_counters = list()

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
    ticket_counters += src

/obj/hud/button/ticket_counter/Destroy()
    . = ..()
    ticket_counters -= src

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
    //very hacky
    return horde_mode.vars["[team]_points"]

/obj/hud/button/ticket_counter/unsc
    name = "unsc tickets"
    team = "unsc"

/obj/hud/button/ticket_counter/covenant
    name = "covenant tickets"
    team = "covenant"
    screen_loc = "CENTER,TOP:-16"

/obj/hud/button/ticket_counter/urf
    name = "urf tickets"
    team = "urf"
