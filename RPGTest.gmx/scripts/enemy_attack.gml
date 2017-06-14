if (global.move) {
    with (obj_player) {
        hp -= other.damage;
    }
    state_switch_previous();
} else state_switch_previous();

