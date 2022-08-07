/health/shield
    health_max = 100
    stamina_max = 0
    mana_max = 0
    health_regeneration = 15
    var/obj/effect/halo_shield/shield_effect = /obj/effect/halo_shield
    var/break_sound = list(
        'sound/effects/halo/shields/spartan/pop/shield_pop_spartan1.ogg',
        'sound/effects/halo/shields/spartan/pop/shield_pop_spartan2.ogg',
        'sound/effects/halo/shields/spartan/pop/shield_pop_spartan3.ogg',
    )

/health/shield/New(desired_owner)
    . = ..()
    shield_effect = new shield_effect(src)
    world << "buddy New()"

/health/shield/Initialize()
    . = ..()
    world << "buddy Initialize() - health_current = [health_current]"
    
/health/shield/Destroy()
    . = ..()
    QDEL_NULL(shield_effect)
    world << "buddy Destroy()"

// NO, we don't need to update the fcking stats.
/health/shield/update_health_stats()
    world << "buddy update_health_stats()"
    return

/health/shield/adjust_loss_smart(brute, burn, tox, oxy, fatigue, pain, rad, sanity, mental, update, organic, robotic)
    var/loss_before = get_total_loss(FALSE, FALSE, FALSE)
    . = ..()
    var/loss_now = get_total_loss(FALSE, FALSE, FALSE)
    if(. > 0)
        if((loss_before < health_max) && (loss_now >= health_max))
            if(break_sound)
                play_sound(pick(break_sound), get_turf(owner), volume = 70)
            shield_effect.update_state("dead")
        else
            shield_effect.update_state("damage")
    else if(. < 0)
        if(loss_now <= 0)
            shield_effect.update_state("good")
        else
            shield_effect.update_state("recharge")
    world << "buddy adjust_loss_smart()"

/health/shield/elite
    shield_effect = /obj/effect/halo_shield/elite
    break_sound = list(
        'sound/effects/halo/shields/elite/pop/shield_pop_elite1.ogg',
        'sound/effects/halo/shields/elite/pop/shield_pop_elite2.ogg',
        'sound/effects/halo/shields/elite/pop/shield_pop_elite3.ogg',
    )
