///inventory_check_equip();
equip1 = true;
equip2 = true;

for (var i = 0; i < ds_map_size(global.inventory_map); i++) {
    if (ds_map_find_value(global.inventory_map, i) == "Equip 1") equip1 = false;
    if (ds_map_find_value(global.inventory_map, i) == "Equip 2") equip2 = false;
}

return (equip1 || equip2);
