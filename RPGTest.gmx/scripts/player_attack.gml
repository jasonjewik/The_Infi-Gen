if (!attack) {
    sprite = ds_list_find_value(global.equip_list_sprites, gui_equip.equip);
    show_debug_message("Attack!");
    if (sprite != noone) {
        show_debug_message("Sprite found!");
        for (var i = 1; i <= global.maxItems; i++) {
            if (global.sprite_array[i] == sprite) {
                weapon = ds_map_find_value(global.inventory_keys, i - 1);
                show_debug_message(string(weapon));
                i = global.maxItems;
            }
        }
        
        switch (weapon) {
            case item_sword: 
                dmg = 5;
                show_debug_message("Sword used!");
                break;
            case item_axe:
                dmg = 3;
                show_debug_message("Axe used!");
                break;
            default: break;
        }
        show_debug_message(state_name);
        enemy = instance_position(mouse_x, mouse_y, class_enemy)
        with (enemy) {
            hp -= other.dmg;
            show_debug_message("Enemy hit!");
        }
        number = instance_create(x, y, gui_damage);
        with (number) dmg = other.dmg;
    }
    attack = true;
}
