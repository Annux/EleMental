spell_start = mouse_check_button_pressed(mb_left)
spell_charge = mouse_check_button(mb_left)
spell_shoot = mouse_check_button_released(mb_left)

// where spells are shot from, proportionate to player position && angle
    spell_xPos = x+lengthdir_x(30, image_angle)
    spell_yPos = y+lengthdir_y(30, image_angle)
    

///////////////////////////Elements//////////////////////////

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
/////////------------------------------------------------------------------------FIRE------------------------------------------------------------------------////////////    
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
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
                instance_deactivate_object(obj_target)
                if(path_exists(movePath))
                    {path_delete(movePath)}
            }
        }
        
        /// WATERBALL ///
        else if(curElem = 2)
        {
            if(spell_start) // if there isn't too many balls onscreen and you press shoot, make a fireball
            {
                newWater = instance_create(spell_xPos, spell_yPos, objWaterBall)
                newWater.caster = id
                instance_deactivate_object(obj_target)
                if(path_exists(movePath))
                    {path_delete(movePath)}
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
                instance_deactivate_object(obj_target)
                if(path_exists(movePath))
                    {path_delete(movePath)}
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
                pSpeed *= 1.5
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


/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
/////////-----------------------------------------------------------------------WATER------------------------------------------------------------------------////////////    
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
else if (priElem = Water)
{
    //// Primary Spell ////
    if(spellType = 1)
    {
        /// Fire Pool ///
        if(curElem = 1)
        {
            if(canShoot[Water,Fire]) && (spell_start)
            {
                instance_deactivate_object(objFirepool)
                newFirepool = instance_create(mouse_x, mouse_y, objFirepool)
                newFirepool.caster = id
                pSpeed *= .5
                alarm[4] = firepoolCD
                canShoot[Water,Fire] = false
            }
        }
        
      
        /// Water Pool ///
        else if(curElem = 2)
        {
            if(canShoot[Water,0]) && (spell_start)
            {
                newWatpool = instance_create(mouse_x, mouse_y, objWaterpool)
                newWatpool.caster = id
                pSpeed *= .5
                instance_deactivate_object(obj_target)
                if(path_exists(movePath))
                    {path_delete(movePath)}
                alarm[5] = waterpoolCD
                canShoot[Water,0] = false
            }
        }
               
   
        /// Earth thingy ///
        else if(curElem = 3)
        {

        }
         
        /// air thingy ///
        else if(curElem = 4)
        {

        }   
        
    }
    //// Secondary Spell ////
    else if(spellType = 2)
    {
    }

}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
/////////-----------------------------------------------------------------------EARTH------------------------------------------------------------------------////////////    
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
else if (priElem = Earth)
{
    //// Primary Spell ////
    if(spellType = 1)
    {
        /// Fire thingy ///
        if(curElem = 1)
        {

        }
        
      
        /// Water thingy ///
        else if(curElem = 2)
        {
            
        }
               
   
        /// Earth thingy ///
        else if(curElem = 3)
        {
            if (spell_start)
            {
                sprite_index = sprEarthAttack;
                earthQuake = true;
            }
        }
         
        /// air thingy ///
        else if(curElem = 4)
        {
            if (spell_start)
            {
                forcePush = instance_create (spell_xPos, spell_yPos, objForcePush);
                forcePush.caster = id;
            }
        }   
        
    }
    //// Secondary Spell ////
    else if(spellType = 2)
    {
    }

}


/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
/////////-----------------------------------------------------------------------AIR------------------------------------------------------------------------////////////    
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
else if (priElem = Air)
{
    //// Primary Spell ////
    if(spellType = 1)
    {
        /// Fire thingy ///
        if(curElem = 1)
        {

        }
        
      
        /// Water thingy ///
        else if(curElem = 2)
        {
            if (spell_start)
            {
            instance_create(x, y, objBubbleMine);
            }
        }
               
   
        /// Earth thingy ///
        else if(curElem = 3)
        {

        }
         
        /// air thingy ///
        else if(curElem = 4)
        {
            if (spell_start) && (!instance_exists(objAirCutter))
            {
                airCutter = instance_create(spell_xPos, spell_yPos, objAirCutter);
                airCutter.caster = id;
            }
        }   
        
    }
    //// Secondary Spell ////
    else if(spellType = 2)
    {
    }

}