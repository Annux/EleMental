direction = image_angle;
speed = moveSpeed;
if (distance_to_point(xPos, yPos)>400) || (x < view_xview[0]) || (x > room_width)
    {
        instance_destroy();
    }
