if (HP <= 0)
{
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
            targetX = view_xview[0] + random(1024);
            targetY = view_yview[0] + random(768); 
        }
    }
    if (image_index = 1) || (image_index = 4)
    {
        speed = 8;
    }
    if (image_index = 2) || (image_index = 5)
    {
        speed = 4;
    }
    else
    {
        speed = 0;
    }
}
