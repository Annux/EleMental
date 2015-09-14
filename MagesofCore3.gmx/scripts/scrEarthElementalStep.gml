if (HP <= 0)
{
    obj_player.bossSpawnReady += 1;
    objOverwatch.expGained += enemyXp;
    global.enemySpawner -= 1
    instance_destroy();
}
else if (blownBack = true)
{
    rSpeed = 0;
    if(path_exists(movePath))
        {path_delete(movePath)}
    move_towards_point(obj_player.x, obj_player.y, -4);
    if (!instance_exists(blowBackCaster))
    {
        blownBack = false;
    }
}
else
{
image_angle = direction;
    if (isAttacking = true)
    {
        //instert attack code here
        isAttacking = false;
    }
    else
    {
        if (position_empty(targetX, targetY))
        {
            path_to_point(self.id, targetX, targetY, rSpeed)
        }
        else
        {
            targetX = random(room_width);
            targetY = random(room_height);
        }
    }
    if (image_index = 1) || (image_index = 4)
    {
        rSpeed = 4;
    }
    if (image_index = 2) || (image_index = 5)
    {
        rSpeed = 2;
    }
    else
    {
        rSpeed = 1;
    }
}

//Damage Scripts
if(fireDamage > 0)
    {HP -= fireDamage*fireRatio; fireDamage = 0}
if(waterDamage > 0)
    {HP -= waterDamage*waterRatio; waterDamage = 0}
if(earthDamage > 0)
    {HP -= earthDamage*earthRatio; earthDamage = 0}
if(airDamage > 0)
    {HP -= airDamage*airRatio; airDamage = 0}