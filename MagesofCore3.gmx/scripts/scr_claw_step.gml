// Attack script - decided by crab (scr_boss_claw)
if(Attacking)
{
    if(Idle)                    // Fire Up The Loud
    {
        Idle         = false
        attack_Start = true
    }
    if(attack_Start)            // Another Round of Shots
    {
        alarm[1] = attack_Delay
        attack_Start = false
        attack_Charge = true
        target_x = obj_player.x
        target_y = obj_player.y
        instance_create(target_x,target_y,obj_clawtarget)
    }
    else if(attack_Strike)       // TURN DOWN FOR WHAT
    {
        direction = point_direction(x, y, target_x, target_y)
        speed = attack_Speed
        image_angle = direction + 90
        if(place_meeting(y, x, obj_clawtarget)) || (place_meeting(x, y, obj_player))
        {
            attack_Strike = false
            attack_Finish = true
            sprite_index = spr_claw_close
            image_index = 0
            speed = 0
        }
    }
}
// Return to normal
else if(!Idle)
{
    attack_Hit = false
    sprite_index = spr_claw_chick
    image_index = 0
    direction = point_direction(x, y, Crab.x, Crab.y)
    speed = return_Speed
    if(place_meeting(x,y,Crab))
    {
        speed = 0
        Idle = true
    }
}

///////////////////// ANIMATION /////////////////////

if(attack_Charge)
{
    if(Chicking)
    {
        Chicking = false
        image_index = 0
    }
    sprite_index = spr_claw_open
    if(image_index <= 4)
        {image_speed = .25}
    else {image_speed = 0}
}
else if(attack_Strike)
{
    sprite_index = spr_claw_strike
    if(image_index <= 4)
        {image_speed = 1}
    else {image_speed = 0}
}
else if(attack_Finish)
{
    sprite_index = spr_claw_close
    if(image_index <= 6)
        {image_speed = 2}
    else
    {
        attack_Finish = false
        Attacking = false
        attack_Strike = false
        attack_Charge = false
        sprite_index = spr_claw_chick
        image_index = 0
        alarm[0] = random_range(room_speed*.75, room_speed*5)
    }
}

if(Chicking) && !(Attacking) && (Idle)
{
    image_speed = .75
    sprite_index = spr_claw_chick
    if(image_index > 8)
    {
        image_speed = 0
        image_index = 0
        sprite_index = spr_claw_chick
        alarm[0] = random_range(room_speed*.75, room_speed*5)
        Chicking = false
    }
}
