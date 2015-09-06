spell_start = mouse_check_button_pressed(mb_left)
spell_charge = mouse_check_button(mb_left)
spell_shoot = mouse_check_button_released(mb_left)

// where spells are shot from, proportionate to player position && angle
    spell_xPos = x+lengthdir_x(30, image_angle)
    spell_yPos = y+lengthdir_y(30, image_angle)
    
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
            if (ballCount >= maxballCount) && (canShoot[Fire,0])
            {
                canShoot[Fire,0] = false
                alarm[2] = fireballCD
            }
        
            if(canShoot[Fire,0]) && (spell_start) // if there isn't too many balls onscreen and you press shoot, make a fireball
            {
                newFire = instance_create(spell_xPos, spell_yPos, obj_fire)
                newFire.caster = id
                ballCount += 1
                speed = 0
                instance_deactivate_object(obj_target)
            }
        }
        
        
        
        /// WATERBALL ///
        else if(curElem = 2)
        {
            if(spell_start) // if there isn't too many balls onscreen and you press shoot, make a fireball
            {
                newWater = instance_create(spell_xPos, spell_yPos, objWaterBall)
                newWater.caster = id
                speed = 0
                instance_deactivate_object(obj_target)
            }
        }
               

        
        /// EARTHBALL ///
        else if(curElem = 3)
        {
        
            if(spell_start) && (canShoot[Fire,Earth])
            {
                newRock = instance_create(x, y, objRockBall);
                newRock.caster = id
                canShoot[Fire,Earth] = false
                alarm[1] = rockballCD
                speed = 0
                instance_deactivate_object(obj_target)
            }
        }
        
        
        
        /// AIRBALL ///
        else if(curElem = 4)
        {
            if (aBallCount >= maxaBallCount)
            {
                canShoot[Fire,Air] = false
            }
            
            if(spell_start) && (canShoot[Fire,Air]) // if there isn't too many balls onscreen and you press shoot, make a fireball
            {
                newAir = instance_create(spell_xPos, spell_yPos, objAirBall)
                newAir.caster = id
                speed *= 1.5
                aBallCount += 1
            }
            
            if(aBallCount > 0) && (setTimer = true)
            {
                alarm[3] = airballCD
                setTimer = false
            }
        }
                
        
        
    }
    //// Secondary Spell ////
    else if(spellType = 2)
    {
    }

}
