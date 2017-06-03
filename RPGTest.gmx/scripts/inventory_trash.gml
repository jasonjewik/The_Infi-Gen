///inventory_trash();
object = ds_map_find_value(global.inventory_map, select);

global.sprite_array[select + 1] = noone;
ds_map_replace(global.inventory_map, select, "");
ds_map_replace(global.inventory_keys, select, "");
ds_map_replace(global.inventory_desc, select, "");
