if HP > MaxHP
{
    HP = MaxHP
}
else if HP <= 0
{
    // GAME. OVER.
}




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
