if (distance_to_object(obj_player) < 256 && !collision_line(x, y, obj_player.x, obj_player.y, wall, false, true)) {
    state_switch("Chase", true);
}
if (enemy_define_path() && global.move) {
    if (target_x mod 32 > 0) {
        diff = target_x mod 32;
        _target_x = target_x - diff;
        //if (point_distance(x, y, _target_x, y) < 32) target_x += 32 - diff;
    }
    if (target_y mod 32 > 0) {
        diff = target_y mod 32;
        _target_y = target_y - diff;
        //if (point_distance(x, y, x, _target_y) < 32) target_y += 32 - diff;
    }
     
    if (x != _target_x) {
        h_speed = 4 * sign(_target_x - x);
    } else h_speed = 0;
    if (y != _target_y) {
        v_speed = 4 * sign(_target_y - y);
    } else v_speed = 0;
  
    if (h_speed != 0) v_speed = 0;
    if (v_speed != 0) h_speed = 0;  
} else {
    h_speed = 0;
    v_speed = 0;
    move_snap(32, 32);
    get_point = false;
}

if (place_meeting(x + h_speed * 2, y, class_enemy)) h_speed = 0;
if (place_meeting(x, y + v_speed * 2, class_enemy)) v_speed = 0;

if (place_meeting(x + h_speed, y, wall)) {
    while(!place_meeting(x + sign(h_speed), y, wall)) {
        x += sign(h_speed);
    }
    h_speed = 0;
}
x += h_speed;
if (place_meeting(x, y + v_speed, wall)) {
    while(!place_meeting(x, y + sign(v_speed), wall)) {
        y += sign(v_speed);
    }
    v_speed = 0;
}
y += v_speed;
