player_x = obj_player.x;
player_y = obj_player.y;

if (HP <= 0)
{
    objOverwatch.expGained += enemyXp;
    instance_destroy();
}

//////////////// CHASE CODE ///////////////////////
else if (!collision_circle(x, y, 250, obj_player, false, false)) && (!Fightmode)
{
    path_to_point(self.id, player_x, player_y, bSpeed)
    if(image_angle > direction - 85 && image_angle < direction + 85)
    {
        image_angle += 5
        bSpeed = 4
    }
    else if(image_angle >= direction + 85)
    {
        image_angle = direction + 90
        bSpeed = 4
    }
    else if(image_angle <= direction - 85)
    {
        image_angle = direction - 90
        bSpeed = 4
    }
    image_speed = 1
}
//////////////// MELEE DISTANCE CODE ///////////////////////
else
{
    Fightmode = true
    if(path_exists(movePath))
    {
        direction = image_angle
        path_delete(movePath)
    }
    bSpeed = 0
    gradually_turn(self.id, obj_player, 2, 1)
    image_angle = direction
    if(image_angle <= point_direction(x, y, player_x, player_y)+1 && image_angle >= point_direction(x, y, player_x, player_y)-1)
        {image_speed = 0}
    else{image_speed = .75}

    if(!collision_circle(x, y, 500, obj_player, false, false))
    {
        Fightmode = false
    }
}
