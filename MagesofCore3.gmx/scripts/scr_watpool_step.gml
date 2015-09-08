/////////// Caster Stats ///////////////////
// NOTE: This has to be done in step, not create. Otherwise the fireball wont have a "caster"
if(instance_exists(caster))
{
    dmgMod += caster.POW*.00001        // 1 POW = .00005 dmg
    intMod = .5 + caster.INT*.0015  // 1 INT = .15% chance
    endMod = caster.END*.1*room_speed/60        // 1 END = .1 hp/sec
}

    Damage = dmgMod                         // Damage formula!!!!!

    HealRate = endMod*2
