priSpell = keyboard_check_pressed(ord('Q'))
secSpell = keyboard_check_pressed(ord('W'))
duoSpell = keyboard_check_pressed(ord('E'))

DebugA = keyboard_check_pressed(ord('A')) // Change to Fire 
DebugS = keyboard_check_pressed(ord('S')) // Change to Water 
DebugD = keyboard_check_pressed(ord('D')) // Change to Earth
DebugF = keyboard_check_pressed(ord('F')) // Change to Air

moveClick = mouse_check_button(mb_right);
shootClick = mouse_check_button_pressed(mb_left);

spellSwitch = keyboard_check_pressed(vk_space);
    
//keep the player from moving when running the earth attack
if (sprite_index = sprEarthAttack)
{
    if (image_index = 11)
    {
        instance_create(x, y, objAftershock);
        sprite_index =  sprPlayerIdle;
        earthQuake = false;
    }
}
else
{
//------------------------------------ MOVEMENT ------------------------------------//

// Moving by following waypoints set by the mouse //
if(moveClick)
{
    if(instance_exists(obj_target))
        {instance_deactivate_object(obj_target)}

        instance_create(mouse_x, mouse_y, obj_target)
        //path_to_point(self.id, obj_target)
}



//------------------------------------ SPELL SELECTION ------------------------------------//

//implemented to swap between spell options, relates to variables in player create//
if (spellSwitch)
{
    limboElem = curElem;
    curElem = heldElem;
    heldElem = limboElem;
}

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

if (keyboard_check_pressed(vk_numpad7))
{
    priElem = 1;
}
else if (keyboard_check_pressed(vk_numpad8))
{
    priElem = 2;
}
else if (keyboard_check_pressed(vk_numpad4))
{
    priElem = 3;
}
else if (keyboard_check_pressed(vk_numpad5))
{
    priElem = 4;
}
}
