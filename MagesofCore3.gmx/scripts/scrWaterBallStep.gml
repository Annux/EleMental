/////////// Caster Stats ///////////////////
// NOTE: This has to be done in step, not create. Otherwise the fireball wont have a "caster"
if(instance_exists(caster))
{
    dmgMod = caster.POW*.01       // 1 POW = .01 dmg
    intMod = effectChance + caster.INT*.0025  // 1 INT = .25% chance
    spdMod = caster.SPD/10        // 1 SPD = .1 projectile speed
}

    Damage = dmgBase + (dmgMod)*(Size) + (Size-.75)*Size   // Damage formula!!!!!


if(mouse_check_button_released(mb_left))
{
    shot = true
}

////////////// ENEMY - Shooting /////////////
if(caster != obj_player.id) && (!shot)
{
    direction = point_direction(x, y, targetX, targetY);
    shot = true
}
//////////////// PLAYER - Charging & Shooting ////////////
if(!shot)
{
    if(Size < maxSize)
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
    if(Size < 2) && (caster = obj_player.id)
    {
        Size = .75
        image_xscale = Size
        image_yscale = Size
    }
    speed = moveSpeed + spdMod - (spdPerGrow*(Size))       //  Speed formula!!!!!
}

if(x > room_width || x < 0 || y > room_height || y < 0)
{
    instance_destroy()
}
