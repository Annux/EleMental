spell_start = mouse_check_button_pressed(mb_left)
spell_charge = mouse_check_button(mb_left)
spell_shoot = mouse_check_button_released(mb_left)

// where spells are shot from, proportionate to player position && angle
    spell_xPos = x
    spell_yPos = y
    
/////////////////////////////////////////////////////////////
///////////////////////////ELEMENTS//////////////////////////

/////////-------Fire----------////////////    
if(priElem = Fire)
{
    // Primary Spell
    if(spellType = 1)
    {
        if(spell_start) || (spell_charge && !instance_exists(obj_fire))
        {
            newFire = instance_create(spell_xPos, spell_yPos, obj_fire)
            newFire.caster = obj_player
        }
        else if(instance_exists(obj_fire))
        {
            if(spell_charge)
            {
                newFire.x = spell_xPos; newFire.y = spell_yPos
                newFire.direction = image_angle
            }
            else if(spell_shoot)
                {newFire.shot = true}
        }
    }
    // Secondary Spell
    else if(spellType = 0)
    {
    }
}
