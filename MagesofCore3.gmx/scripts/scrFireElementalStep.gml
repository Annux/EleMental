if (HP <= 0) && (obj_player.image_alpha > 0)
{
    obj_player.bossSpawnReady += 1;
    objOverwatch.expGained += enemyXp;
    global.enemySpawner -= 1
    instance_destroy();
}
else if (blownBack = true)
{
    moveSpeed = 0;
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
        fireball = instance_create(x, y, obj_enemy_fire);
        fireball.caster = objFireElemental.id;
        isAttacking = false;
    }
    else
    {
        if (position_empty(targetX, targetY))
        {
            path_to_point(self.id, targetX, targetY, 8);
        }
        else
        {
            targetX = random(room_width);
            targetY = random(room_height); 
        }
    }
}
