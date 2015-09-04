image_xscale = scale;
image_yscale = scale;
if (instance_exists(target))
{
    move_towards_point(target.x, target.y, 16);
    if (place_meeting(x, y, objRockBall))
    {
        instance_destroy();
    }
}
else
{
    speed = 0;
    image_index = 0;
    if (place_meeting(x, y, objRockBall))
    {
        scale += 1;
        if (scale >= maxScale)
        {
            scale = maxScale;
        }
    }
}
if (place_meeting(x, y, target))
{
    baseRock = true;
}
