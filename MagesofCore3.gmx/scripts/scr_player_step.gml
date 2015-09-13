///STATS///
MaxHP     = 80+(DEF*2)
hpRegen   = END*.025/room_speed // Rate of health recovery
mpRegen = END*.1/room_speed   // Rate of mana recovery
dmgReduc  = 100/(100+DEF)       // % of damage received
dotReduc  = 100/(100+RES)       // % of dot damage recieved, % of effect duration reduction
effRes    = 100/(100+(RES/2))   // % chance of ignoring successful effect
turnSpeed = 10 + (SPD*.1)
maxSpeed = 5 + (SPD*.15)
reducedSpeed = maxSpeed*.333
accel = .5+((SPD-10)*.05)
////////
if(LevelComplete) && (vicSpawned < 8)
{
    instance_create(view_xview[0]+view_wview[0]/2, view_yview+view_hview[0]/2, objVictory);
    vicSpawned += 1;
}


HP += hpRegen
MP += mpRegen

if HP > MaxHP
    {HP = MaxHP}
else if HP <= 0
{
    image_alpha -= 0.1;
    image_blend = -1;
    if (image_alpha <= 0.5)
    {
        deathAnim += 1;
        image_alpha = 1;
        image_blend = c_red;
    }
    if (deathAnim = 3)
    {
        instance_create(view_xview[0], view_yview[0], objDeathFade);
    }
    if (deathAnim >= 5)
    {
        image_alpha = 0;
    }
    // INSERT GAME. OVER. CODE
}

if MP > MaxMP
    {MP = MaxMP}
else if MP < 0
    {MP = 0}



if(instance_exists(obj_fire))
{
    // Charge fireball
    if(spell_charge) && place_meeting(x,y,newFire)
    {
        newFire.x = spell_xPos; newFire.y = spell_yPos
        newFire.image_angle = image_angle
    }
}

if(instance_exists(objWaterBall))
{
    // Charge waterball
    if(spell_charge) && place_meeting(x,y,newWater)
    {
        newWater.x = spell_xPos; newWater.y = spell_yPos
        newWater.image_angle = image_angle
    }
}


if(instance_exists(obj_target))
{
    // Pathing code. Dont touch this either or we are all doomed//
    if((obj_target.x - x > 10 || obj_target.x - x < -10 || obj_target.y - y > 10 || obj_target.y - y < -10)) // if not at target, set speed
    {
        if (pSpeed > maxSpeed*3)
            {pSpeed = maxSpeed*3}
        else if (pSpeed > maxSpeed + 1)
            {pSpeed -= accel}
        else if (pSpeed < maxSpeed)
            {pSpeed += accel}
        else
            {pSpeed = maxSpeed}
    }
    else if (pSpeed != 0) // if at target, stop moving
    {
        pSpeed = 0
    }
    //walk on path
    path_to_point(self.id, obj_target.x, obj_target.y, pSpeed)
    if(pSpeed = 0)
        {instance_deactivate_object(obj_target)}
    image_angle = direction
}
else if(pSpeed = 0)
{
     // aim where the mouse is pointing if not moving //
    image_angle = point_direction(x,y, mouse_x, mouse_y)
}

// Dont allow the player to move past the screen edge //
if (x < 0)
    {x = 0}
if (x > room_width)
    {x = room_width}
if (y < 0)
    {y = 0}
if (y > room_height)
    {y = room_height}
