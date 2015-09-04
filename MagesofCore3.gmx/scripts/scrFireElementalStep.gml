if (HP <= 0)
{
    instance_destroy();
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
            move_towards_point(targetX, targetY, 8);
        }
        else
        {
            targetX = random(room_width);
            targetY = random(room_height); 
        }
    }
}