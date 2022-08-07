/obj/effect/halo_shield
    icon = 'icons/halo/effects/shields/spartan_shields.dmi'
    icon_state = "shield_overlay_good"
    layer = LAYER_EFFECT
    var/health/shield/parent
    var/current_state = "good"

/obj/effect/halo_shield/New(new_parent)
    . = ..()
    if(new_parent)
        parent = new_parent
    world << "friend New(new_parent = [new_parent])"
    
/obj/effect/halo_shield/proc/update_state(new_state = "good")
    world << "friend update_state(new_state = [new_state])"
    if(new_state == current_state)
        return
    current_state = new_state
    icon_state = "shield_overlay_[new_state]"

/obj/effect/halo_shield/elite
    icon = 'icons/halo/effects/shields/elite_shields.dmi'
