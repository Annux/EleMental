dmgMod = caster.POW*.02      // 1 POW = .02 dmg
intMod = caster.INT*.0025          // 1 INT = .25% chance of crit

Damage = dmgBase + dmgMod
critStat = critBase + intMod

if (image_index = 11)
{
    instance_destroy();
}
