if (HP <= 0)
{
    obj_player.bossSpawnReady += 1;
    objOverwatch.expGained += enemyXp;
    global.enemySpawner -= 1
    instance_destroy();
}
else if (blownBack = true)
{
    wSpeed = 0;
    if(path_exists(movePath))
        {path_delete(movePath)}
    move_towards_point(obj_player.x, obj_player.y, -4);
    if (!instance_exists(blowBackCaster))
        {blownBack = false;}
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
                path_to_point(self.id, targetX, targetY, wSpeed)
        }
        else
        {
            targetX = random(room_width);
            targetY = random(room_height);
        }
        if (image_index = 1)
        {
            wSpeed = 8;
            image_speed = 0;
            image_index = 2;
        }
        if (image_index = 2)
        {
            wSpeed -= 0.25;
            if (wSpeed <= 0)
            {
                image_speed = 1;
                image_index = 3;
            }
        }
        else
        {
            wSpeed = 0;
        }
    }
}
