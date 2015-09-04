///////// Caster Stats /////////
if(instance_exists(caster))
{
    dmgMod = caster.POW*.25 + 1    // 1 POW = .25 dmg
    intMod = .1 + caster.INT*.003  // 1 INT = .3% chance
    spdMod = caster.SPD*.08        // 1 SPD = .08 projectile speed
}

Damage = dmgBase + dmgMod

image_xscale = scale;
image_yscale = scale;
if (instance_exists(target))
{
    move_towards_point(target.x, target.y, (moveSpeed + spdMod)); // Speed Formula
    if (place_meeting(x, y, objRockBall))
    {
        instance_destroy();
    }
}
else
{
    speed = 0;
    image_index = 0;
    if (place_meeting(x, y, objRockBall))
    {
        scale += 1;
        if (scale >= maxScale)
        {
            scale = maxScale;
        }
    }
}
if (place_meeting(x, y, target))
{
    baseRock = true;
}
