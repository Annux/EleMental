/////////// Caster Stats ///////////////////
// NOTE: This has to be done in step, not create. Otherwise the fireball wont have a "caster"
if(instance_exists(caster))
{
    dmgMod = caster.POW*.2        // 1 POW = .2 dmg
    intMod = .5 + caster.INT*.0015  // 1 INT = .15% chance
    spdMod = caster.SPD*.1        // 1 SPD = .1 projectile speed
}

    Damage = dmgBase + dmgMod*Size                         // Damage formula!!!!!


if(mouse_check_button_released(mb_left))
{
    shot = true
}

////////////// ENEMY - Shooting /////////////
if(caster != obj_player.id) && (!shot)
{
    shot = true
    direction = point_direction(x, y, targetX, targetY);
}
//////////////// PLAYER - Charging & Shooting ////////////
if(!shot)
{
    if(sprite_index = startAni) && (image_index > 8)
    {
        sprite_index = chargeAni
        image_index = 0
    }
    else if(sprite_index = chargeAni) && (Size < maxSize)
    {
        Size += growRate
        image_xscale = Size
        image_yscale = Size
    }
    direction = point_direction(x, y, mouse_x, mouse_y);
}
//////////// PLAYER & ENEMY - Movement Speed, Size, Damage, Terminate on Screen Exit //////////////
else
{
    if(Size = 1) && (caster = obj_player.id)
    {
        Size = .5
        image_xscale = Size
        image_yscale = Size
    }
    sprite_index = chargeAni
    speed = moveSpeed + spdMod - (spdPerGrow*(Size))       //  Speed formula!!!!!
}

if(x > room_width || x < 0 || y > room_height || y < 0)
{
    instance_destroy()
}
