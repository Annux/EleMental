if HP <= 0
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
    //Shoot fireball
    else if(spell_shoot)
    {
        newFire.shot = true
    }
}
