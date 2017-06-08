if (instance_exists(obj_player)) {
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

        /*if (y == obj_player.y && x < obj_player.y) {
            if (target_x == obj_player.x + obj_player.sprite_width/2) return false;
        }
        if (y < obj_player.y && x == obj_player.x) {
            if (target_y == obj_player.y + obj_player.sprite_height/2) return false;
        }
        if (y == obj_player.y && x > obj_player.y)   {
            if (target_x == obj_player.x + obj_player.sprite_width) return false;
        }    
        if (y > obj_player.y && x == obj_player.x) {
            if (target_y == obj_player.y + obj_player.sprite_height) return false;
        } 
          
        _enemy = collision_line(x, y, target_x, target_y, class_enemy, false, true);
        if (_enemy != noone) {
           if ((_enemy.target_x == target_x && _enemy.target_y == target_y) || (target_x == _enemy.x) && target_y == _enemy.y) return false;
        }*/

        return true;
    }
} else return false;

