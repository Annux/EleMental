if (HP <= 0)
{
    objOverwatch.expGained += 10;
    instance_destroy();
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
            move_towards_point(targetX, targetY, speed);
        }
        else
        {
            targetX = random(room_width);
            targetY = random(room_height);
        }
        if (image_index = 1)
        {
            speed = 8;
            image_speed = 0;
            image_index = 2;
        }
        if (image_index = 2)
        {
            speed -= 0.25;
            if (speed <= 0)
            {
                image_speed = 1;
                image_index = 3;
            }
        }
        else
        {
            speed = 0;
        }
    }
}
