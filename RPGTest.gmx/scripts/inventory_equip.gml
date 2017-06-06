///inventory_equip(Object Index <real>, Equip <boolean>);
if (argument1) {
    for (var i = 0; i < global.max_equip; i++) {
        if (ds_list_find_value(global.equip_list, i) == noone) {
            ds_list_replace(global.equip_list, i, argument0);
            if (i == 0) ds_map_replace(global.inventory_map, select, "Equip 1");
            else if (i == 1) ds_map_replace(global.inventory_map, select, "Equip 2");
            i = global.max_equip + 1;
        }
    }
} else if (!argument1) {
    object = ds_map_find_value(global.inventory_keys, select);
    name = object.name;
    switch (ds_map_find_value(global.inventory_map, select)) {
        case "Equip 1":
            ds_list_replace(global.equip_list, 1, noone);
            break;
        case "Equip 2":
            ds_list_replace(global.equip_list, 2, noone);
            break;
        default: break;
    }
    ds_map_replace(global.inventory_map, select, name);
}
