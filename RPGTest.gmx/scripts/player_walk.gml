if (h_speed != 0) {
    up = 0;
    down = 0;   
}
if (v_speed != 0) {
    right = 0;
    left = 0;
}

if (right && h_speed == 0) {
    if (!collision_point(x + sprite_width + 1, y + sprite_height/2, wall, false, true)) {
        target_x = x + 32;
        global.turn++;
        show_debug_message(global.turn);
    }
} else if (left && h_speed == 0) {
    if (!collision_point(x - 1, y + sprite_height/2, wall, false, true)) {
        target_x = x - 32;
        global.turn++;
        show_debug_message(global.turn);
    }
} else if (up && v_speed == 0) {
    if (!collision_point(x + sprite_width/2, y - 1, wall, false, true)) {
        target_y = y - 32;
        global.turn++;
        show_debug_message(global.turn);
    }
} else if (down && v_speed == 0) {
    if (!collision_point(x + sprite_width/2, y + sprite_height + 1, wall, false, true)) {
        target_y = y + 32;
        global.turn++;
        show_debug_message(global.turn);
    }
}
    
if (target_x mod 32 > 0) {
    diff = target_x mod 32;
    _target_x = target_x - diff;
    if (point_distance(x, y, _target_x, y) < 32) target_x += 32 - diff;
}
if (target_y mod 32 > 0) {
    diff = target_y mod 32;
    _target_y = target_y - diff;
    if (point_distance(x, y, x, _target_y) < 32) target_y += 32 - diff;
}

if (x != target_x) {
    h_speed = 4 * sign(target_x - x);
} else h_speed = 0;
if (y != target_y) {
    v_speed = 4 * sign(target_y - y);
} else v_speed = 0;

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

if (h_speed + v_speed != 0) {
    global.move = true;
}
else {
    global.move = false;
}
