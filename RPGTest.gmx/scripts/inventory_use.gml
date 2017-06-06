///inventory_use();
object = ds_map_find_value(global.inventory_map, select);

switch (object) {
    case "Health Pot": 
        instance_activate_object(obj_player);
        with (obj_player) {
            if (hp < max_hp) hp++;
        }
        instance_deactivate_object(obj_player);
        inventory_remove();
        break;
    case "Basic Sword": 
        if (inventory_check_equip()) inventory_equip(ds_map_find_value(global.inventory_keys, select), true);
        else inventory_equip(ds_map_find_value(global.inventory_keys, select), false);
    default: break;
}
