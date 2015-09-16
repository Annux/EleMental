player = argument[0]
target_x = argument[1]
target_y = argument[2]
moveSpeed = argument[3]
        movePath = path_add();
       moveGrid = mp_grid_create(0,0,room_width/32, room_height/32, 32, 32);

        //populate the path using the grid
        mp_grid_add_instances(moveGrid,obj_collision_parent, true);
    
        if(player = obj_player.id)
        {
            mp_grid_add_instances(moveGrid,crabboss, true)
            mp_grid_add_instances(moveGrid,objElementalParent, true)
        }
        //make an empty path
        
    mp_grid_path(moveGrid, movePath, player.x, player.y, target_x, target_y, true);
    //set path to linear    
    path_set_kind(movePath,1);
    path_start(movePath,moveSpeed,0,true);
