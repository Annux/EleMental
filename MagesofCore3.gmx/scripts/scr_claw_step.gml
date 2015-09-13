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
    }
    else if(attack_Strike)       // TURN DOWN FOR WHAT
    {
        direction = point_direction(x, y, target_x, target_y)
        speed = attack_Speed
        image_angle = direction + 90
        if(position_meeting(target_x, target_y, self) || place_meeting(x, y, obj_player))
        {
            attack_Finish = true
            sprite_index = spr_claw_close
            image_index = 0
            speed = 0
            attack_Strike = false
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
        alarm[0] = random_range(room_speed*.75, room_speed*5)
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
    image_speed = 1
    if(image_index > 10) // Attack ends
    {
        attack_Finish = false
        Attacking     = false
        attack_Strike = false
        attack_Charge = false
        sprite_index = spr_claw_chick
        image_index = 0
    }
    else if(image_index > 4)
        {attack_Hit = true}
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