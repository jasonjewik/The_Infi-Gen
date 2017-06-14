if (state_name == "Chase") {
    if (!path_exists(path)) {
        path = path_add();
        path_set_kind(path, 0);
        path_set_precision(path, 1);
    }
    if (!mp_grid_path(global.grid, path, x, y, obj_player.x, obj_player.y, false)) {
        path_end();
        return false;
    } else {        
        if (!get_point) {
            target_x = path_get_point_x(path, 1);
            target_y = path_get_point_y(path, 1);
            get_point = true;
        }
        return true;
    }
} else if (state_name == "Idle") {
    if (!path_exists(path)) {
        path = path_add();
        path_set_kind(path, 0);
        path_set_precision(path, 1);
    }
    
    do {
        randX = x + irandom_range(-64, 64);
        randY = y + irandom_range(-64, 64);
        
        _randX = randX - (randX mod 32);
        _randY = randY - (randY mod 32);
    } until (!collision_point(_randX, _randY, wall, false, true));
    
    if (!mp_grid_path(global.grid, path, x, y, _randX, _randY, false)) {
        path_end();
        return false;
    } else {        
        if (!get_point) {
            target_x = path_get_point_x(path, 1);
            target_y = path_get_point_y(path, 1);
            get_point = true;
        }
        return true;
    }
} else return false;

