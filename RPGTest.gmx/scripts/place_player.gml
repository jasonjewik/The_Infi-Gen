///place_player()
with (obj_player) {
    for (var k = 256; k < room_width - 256; k += 32) {
        for (var l = 256; l < room_height - 256; l += 32) {
            if (!place_meeting(k, l, wall) && !place_meeting(k + 32, l + 32, wall) && !place_meeting(k - 32, l - 32, wall)) {
                x = k;
                y = l;
                k = room_width;
                l = room_height;
            }
        }
    }
    move_snap(32, 32);
}
