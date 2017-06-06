///inventory_remove();
global.sprite_array[select + 1] = noone;
ds_map_replace(global.inventory_map, select, "");
ds_map_replace(global.inventory_keys, select, "");
ds_map_replace(global.inventory_desc, select, "");
