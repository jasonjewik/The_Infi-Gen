if (instance_exists(obj_player)) {
    if (!mp_grid_path(global.grid, path, x, y, obj_player.x, obj_player.y, false)) {
        path_end();
        return false;
    } else {
        path_set_kind(path, 0);
        path_set_precision(path, 1);
        
        _forwardX = path_get_point_x(path, 1);
        _forwardY = path_get_point_y(path, 1);
        
        if (_forwardX != 0 && _forwardY != 0) {
            //angle = point_direction(_forwardX, _forwardY, path_get_point_x(path, 2), path_get_point_y(path, 2));
            angle = point_direction(x + sprite_width/2, y + sprite_height/2, _forwardX, _forwardY);
            if (angle > 0 && angle < 90) {
                path_insert_point(path, 1, path_get_point_x(path, 1) - 32, path_get_point_y(path, 1) - 32, 1);
            } else if (angle > 90 && angle < 180) {
                if (collision_point(x + sprite_width/2 + 32, y + sprite_height/2 - 32, obj_wall, false, true)) path_insert_point(path, 1, path_get_point_x(path, 1) - 32, path_get_point_y(path, 1), 1);
                else path_insert_point(path, 1, path_get_point_x(path, 1) + 32, path_get_point_y(path, 1) - 32, 1);
            } else if (angle > 180 && angle < 270) {
                path_insert_point(path, 1, path_get_point_x(path, 1) - 32, path_get_point_y(path, 1) + 32, 1);
            } else if (angle > 270 && angle < 360) {
                path_insert_point(path, 1, path_get_point_x(path, 1) + 32, path_get_point_y(path, 1) + 32, 1);
            } 
            //if (keyboard_check(vk_enter)) show_debug_message(angle);
        }
        
        target_x = path_get_point_x(path, 1);
        target_y = path_get_point_y(path, 1);
        
        return true;
    }
} else return false;

