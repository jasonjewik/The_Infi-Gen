for (i = 1; i < path_get_number(path); i++) {
    if (path_get_point_x(path, i) div 32 > 0) path_change_point(path, i, path_get_point_x(path, i) - (path_get_point_x(path, i) div 32), y, 1); 
    if (path_get_point_y(path, i) div 32 > 0) path_change_point(path, i, x, path_get_point_y(path, i) - (path_get_point_y(path, i) div 32), 1); 
}

