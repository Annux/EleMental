player = argument[0]
target = arguement[1]
    
            //draw a grid for zombie to use to use A* pathfinding
    moveGrid = mp_grid_create(0,0,room_width/32, room_height/32, 32, 32);
    //add obstacles to the grid
    mp_grid_add_instances(moveGrid,obj_collision_parent, true);
    //make an empty path
    movePath = path_add();
    //populate the path using the grid
    mp_grid_path(moveGrid, movePath, player.x, player.y, target.x, target.y, true);
    //set path to linear    
    path_set_kind(movePath,1);
    //walk on path
    path_start(movePath,speed,0,true);
