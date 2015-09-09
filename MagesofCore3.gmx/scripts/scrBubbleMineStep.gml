timer += 1/room_speed;
    if (timer >= 1.5)
    {
        canDetonate = true;
    }
    if (timer >= 5)
    {
        Detonating = true;
    }
    
if (Detonating = true)
{
    image_speed = 0.2;
}
    
if (image_index > 3)
{
    instance_destroy();
}
