/////////// Caster Stats ///////////////////
// NOTE: This has to be done in step, not create. Otherwise the fireball wont have a "caster"
if(instance_exists(caster))
{
    dmgMod = caster.POW*.01                              // 1 POW = .01 dmg
    intMod = effectChance + caster.INT*.002              // 1 INT = .2% chance
    spdMod = caster.SPD*.1 + abs(caster.speed*.1)        // 1 SPD = ???
}

if(!initSpeed)
{
    speed = spdMod + moveSpeed
    initSpeed = true
}

    Damage = dmgBase + (dmgMod+speed)/(moveSpeed*17.5/speed)                  // Damage formula!!!!!

gradually_turn(self.id, objAirTarget, 7.5, 10)

image_angle = direction

////////////// ENEMY - Shooting /////////////
if(caster != obj_player.id) && (!shot)
{
    direction = point_direction(x, y, targetX, targetY);
}
//////////////// PLAYER - Charging & Shooting ////////////

//////////// PLAYER & ENEMY - Movement Speed, Size, Damage, Terminate on Screen Exit //////////////
if(speed > 2.5)
{
    speed *= spdPerTime
}
else{instance_destroy()}

if(x > room_width || x < 0 || y > room_height || y < 0)
{
    instance_destroy()
}