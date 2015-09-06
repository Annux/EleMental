priSpell = keyboard_check_pressed(ord('Q'))
secSpell = keyboard_check_pressed(ord('W'))
duoSpell = keyboard_check_pressed(ord('E'))

DebugA = keyboard_check_pressed(ord('A')) // Change to Fire 
DebugS = keyboard_check_pressed(ord('S')) // Change to Water 
DebugD = keyboard_check_pressed(ord('D')) // Change to Earth
DebugF = keyboard_check_pressed(ord('F')) // Change to Air

moveClick = mouse_check_button(mb_right);
shootClick = mouse_check_button_pressed(mb_left);
    
//------------------------------------ MOVEMENT ------------------------------------//

// Moving by following waypoints set by the mouse //
if(moveClick)
{
    if(instance_exists(obj_target))
        {instance_deactivate_object(obj_target)}
    instance_create(mouse_x, mouse_y, obj_target)
}

// Stopping if preparing to shoot //
//if(shootClick)
//{
//    instance_deactivate_object(obj_target)
//}

// Turning code & acceleration. Don't touch it. It works. Trust me. //
if(instance_exists(obj_target))
{
    if((obj_target.x - x > 10 || obj_target.x - x < -10 || obj_target.y - y > 10 || obj_target.y - y < -10))
    {
        if(speed <= reducedSpeed)
            {direction = point_direction(x, y, obj_target.x, obj_target.y)}
        else
            {gradually_turn(self.id, obj_target, turnSpeed, 10)};
        if(obj_target.x - x < 20 && obj_target.x - x > -20 && obj_target.y - y < 20 && obj_target.y - y > -20)
            {direction = point_direction(x, y, obj_target.x, obj_target.y)}
        if(obj_target.x - x < 40 && obj_target.x - x > -40 && obj_target.y - y < 40 && obj_target.y - y > -40)
            {speed = reducedSpeed}
        else if (speed > maxSpeed*3)
        {
            speed = maxSpeed*3
        }
        else if (speed > maxSpeed)
        {
            speed -= accel
        }
        else if (speed < maxSpeed)
        {
            speed += accel
        }
        else
        {
            speed = maxSpeed
        }
        image_angle = direction
    }
    else if (speed != 0)
    {
        speed = 0
        instance_deactivate_object(obj_target)
    }
}
else
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



//------------------------------------ SPELL SELECTION ------------------------------------//

// Press Q to switch spells
if(priSpell && spellType = 1)
    {spellType = 2}
else if(priSpell && spellType != 1)
    {spellType = 1}

// Press W to switch elements
/*
if(secSpell && curElem = 1)
{
    curElem = secElem
}
else if(secSpell && curElem = 2)
{
    curElem = priElem
}
*/

// Press E to combine elements (somehow?)
/*
if(duoSpell)
{
    spellType = duoElem
}
*/

// DEBUG SHIT
if(DebugA)
{
    curElem = Fire // Press a, shoot fire
}
else if(DebugS)
{
    curElem = Water  // Press s, shoot water
}
else if(DebugD)
{
    curElem = Earth  // Press d, shoot earth
}
else if(DebugF)
{
    curElem = Air  // Press f, shoot air
}
