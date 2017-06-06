///inventory_equip(Object Index <real>, Sprite Index <real>, Equip Number);
if (argument2 == -1) {
    for (var i = 0; i < global.max_equip; i++) {
        if (ds_list_find_value(global.equip_list, i) == noone) {
            ds_list_replace(global.equip_list, i, argument0);
            ds_list_replace(global.equip_list_sprites, i, argument1);
            if (i == 0) ds_map_replace(global.inventory_map, select, "Equip 1");
            else if (i == 1) ds_map_replace(global.inventory_map, select, "Equip 2");
            i = global.max_equip + 1;
        }
    }
} else {
    object = ds_map_find_value(global.inventory_keys, select);
    instance_create(x, y, object);
    name = object.name;
    ds_map_replace(global.inventory_map, select, name);
    with (object) instance_destroy();
    ds_list_replace(global.equip_list, argument2, noone);
    ds_list_replace(global.equip_list_sprites, argument2, noone);
}
