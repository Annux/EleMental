player_x = obj_player.x;
player_y = obj_player.y;

if (HP <= 0)
{
    objOverwatch.expGained += enemyXp;
    Lclaw = instance_destroy()
    Rclaw = instance_destroy()
    instance_destroy();
}

//////////////// CHASE CODE ///////////////////////
else if (!collision_circle(x, y, 250, obj_player, false, false)) && (!Fightmode) && (!Attacking)
{
    if(direction > point_direction(x,y,player_x,player_y)+10 || direction < point_direction(x,y,player_x,player_y)-10)
    {
        bSpeed = 0
        gradually_turn(self.id, obj_player, 3, 5)
    }
    else
    {
        bSpeed = 4.5
        path_to_point(self.id, player_x, player_y, bSpeed)
    }
    image_angle = direction - 85
    image_speed = .75
}
//////////////// MELEE DISTANCE CODE ///////////////////////
else if(!Attacking)
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
    if(image_angle <= point_direction(x, y, player_x, player_y)+.05 && image_angle >= point_direction(x, y, player_x, player_y)-.05)
    {
        image_speed = 0
        Facing = true
    }
    else
    {
        image_speed = .75
        Facing = false
    }

    if(!collision_circle(x, y, 500, obj_player, false, false))
    {
        direction = image_angle + 85
        Facing = false
        Fightmode = false
    }
}