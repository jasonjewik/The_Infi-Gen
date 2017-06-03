///inventory_use();
object = ds_map_find_value(global.inventory_map, select);

switch (object) {
    case "Health Pot": 
        instance_activate_object(obj_player);
        with (obj_player) {
            if (hp < max_hp) hp++;
        }
        instance_deactivate_object(obj_player);
        break;
    default: break;
}

global.sprite_array[select + 1] = noone;
ds_map_replace(global.inventory_map, select, "");
ds_map_replace(global.inventory_keys, select, "");
ds_map_replace(global.inventory_desc, select, "");
