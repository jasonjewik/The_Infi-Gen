///inventory_add(Name <string>, Object Index <real>, Sprite Index <real>)
ds_map_add(global.inventory_map, ds_map_size(global.inventory_map), argument[0]);
ds_map_add(global.inventory_keys, ds_map_size(global.inventory_keys), argument[1]);
for (var i = 1; i < global.maxItems; i++) {
    if (global.sprite_array[i] == noone) {
        global.sprite_array[i] = argument[2];
        i = global.maxItems;
    }
}
