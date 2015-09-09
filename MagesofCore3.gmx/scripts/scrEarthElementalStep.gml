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
    }
    if (image_index = 1) || (image_index = 4)
    {
        speed = 4;
    }
    if (image_index = 2) || (image_index = 5)
    {
        speed = 2;
    }
    else
    {
        speed = 1;
    }
}