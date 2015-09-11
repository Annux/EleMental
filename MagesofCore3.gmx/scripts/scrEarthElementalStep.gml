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