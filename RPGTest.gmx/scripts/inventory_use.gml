///inventory_use();
object = ds_map_find_value(global.inventory_map, select);

switch (object) {
    case "Health Pot": 
        instance_activate_object(obj_player);
        with (obj_player) {
            if (hp < max_hp) hp+= 2;
        }
        instance_deactivate_object(obj_player);
        inventory_remove();
        break;
    case "Basic Sword": 
        if (inventory_check_equip()) inventory_equip(ds_map_find_value(global.inventory_keys, select), spr_sword, -1);
        break;
    case "Basic Axe":
        if (inventory_check_equip()) inventory_equip(ds_map_find_value(global.inventory_keys, select), spr_axe, -1);
        break;
    case "Equip 1":
        inventory_equip(ds_map_find_value(global.inventory_keys, select), -4, 0);
        break;
    case "Equip 2":
        inventory_equip(ds_map_find_value(global.inventory_keys, select), -4, 1);
        break;
    default: break;
}
