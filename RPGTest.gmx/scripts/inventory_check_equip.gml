///inventory_check_equip();
var equip1;
var equip2;

for (var i = 0; i < global.maxItems; i++) {
    switch (ds_map_find_value(global.inventory_map, i)) {
        case "Equip 1": 
            for (var j = 0; j < global.max_equip; j++) {
                if (ds_map_find_value(global.inventory_keys, i) == ds_list_find_value(global.equip_list, j)) equip1 = false;
            }
        case "Equip 2":
            for (var k = 0; k < global.max_equip; k++) {
                if (ds_map_find_value(global.inventory_keys, i) == ds_list_find_value(global.equip_list, k)) equip2 = false;
            }
        default: 
            equip1 = true;
            equip2 = true;
            break;
    }
}

return (equip1 || equip2);
