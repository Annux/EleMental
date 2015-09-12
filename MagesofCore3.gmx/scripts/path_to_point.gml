player = argument[0]
target_x = argument[1]
target_y = argument[2]
moveSpeed = argument[3]
    
        //draw a grid for zombie to use to use A* pathfinding
        moveGrid = mp_grid_create(0,0,room_width/32, room_height/32, 32, 32);
        //add obstacles to the grid
        mp_grid_add_instances(moveGrid,obj_collision_parent, true);
        //make an empty path
        movePath = path_add();
        //populate the path using the grid
        
//if(!mp_linear_path_object(movePath, target_x, target_y, moveSpeed, obj_collision_parent))
//{
    mp_grid_path(moveGrid, movePath, player.x, player.y, target_x, target_y, true);
    //set path to linear    
    path_set_kind(movePath,1);
    path_start(movePath,moveSpeed,0,true);
//}
/*else
{
    mp_linear_step_object(target_x, target_y, moveSpeed, obj_collision_parent);
}