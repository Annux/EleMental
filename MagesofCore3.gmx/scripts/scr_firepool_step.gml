/////////// Caster Stats ///////////////////
// NOTE: This has to be done in step, not create. Otherwise the fireball wont have a "caster"
if(instance_exists(caster))
{
    dmgMod = caster.POW*.025
    intMod = .5 + caster.INT*.0015  // 1 INT = .15% chance
    spdMod = caster.SPD*.1        // 1 SPD = .1 projectile speed
}

    Damage = (baseDmg + dmgMod) * dmgCompound  // Damage formula!!!!!

////////////// Explosion

if(death)
{
    canHit = false
    Size *= .9
    if(Size < .01)
        {instance_destroy()}
}
else
{
    if(growing) && (curSize < maxSize)
    {
        curSize += .4
        growing = false
    }
    
    if(Size != curSize)
    {
        Size += .1
        sprite_index = burnAnim
        image_speed = 1
        Spin = 60
    }
    else if(Size > curSize)
    {
        Size = curSize
    }
    else
    {
        if(sprite_index = burnAnim) && (image_speed > .05)
        {
            image_speed *= .9
            Spin *= .9
        }
        else
        {
        sprite_index = inertAnim
        image_speed = 1
        Spin = 0
        if(image_index > 6)
            {image_speed = 0}
        }
    }
}
image_xscale = Size
image_yscale = Size
image_angle -= Spin
