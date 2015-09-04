spell_start = mouse_check_button_pressed(mb_left)
spell_charge = mouse_check_button(mb_left)
spell_shoot = mouse_check_button_released(mb_left)

// where spells are shot from, proportionate to player position && angle
    spell_xPos = x
    spell_yPos = y
    
/////////////////////////////////////////////////////////////
///////////////////////////ELEMENTS//////////////////////////

/////////----------Fire----------////////////    
if(priElem = Fire)
{
    //// Primary Spell ////
    if(spellType = 1)
    {
        /// FIREBALL ///
        if(curElem = 1)
        {
            if(ballCount < maxballCount) && (spell_start) // if there isn't too many balls onscreen and you press shoot, make a fireball
            {
                newFire = instance_create(spell_xPos, spell_yPos, obj_fire)
                newFire.caster = obj_player.id
                ballCount += 1
            }
        }
        
        
        
        /// WATERBALL ///
        else if(curElem = 2)
        {
        }
               

        
        /// EARTHBALL ///
        else if(curElem = 3)
        {
            if(spell_start) && (ballCount < maxballCount) && (canShoot[Fire,Earth])
            {
                newRock = instance_create(x, y, objRockBall);
                newRock.caster = obj_player.id
                canShoot[Fire,Earth] = false
                alarm[1] = rockballCD
            }
        }
        
        
        
        /// AIRBALL ///
        else if(curElem = 3)
        {
        }
                
        
        
    }
    //// Secondary Spell ////
    else if(spellType = 2)
    {
    }

}
