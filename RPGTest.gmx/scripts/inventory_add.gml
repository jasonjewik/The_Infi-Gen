///inventory_add(Name <string>, Object Index <real>, Sprite Index <real>, Description <string>)
var pickup;
for (var i = 1; i <= global.maxItems; i++) {
    if (global.sprite_array[i] == noone) {
        global.sprite_array[i] = argument[2];
        i = global.maxItems;
        pickup = true;
    } else pickup = false;
}

for (var j = 0; j < global.maxItems; j++) {
    if (ds_map_find_value(global.inventory_map, j) == "") {
        ds_map_replace(global.inventory_map, j, argument[0]);
        ds_map_replace(global.inventory_keys, j, argument[1]);
        ds_map_replace(global.inventory_desc, j, argument[3]);
        j = global.maxItems;
        pickup = true;
    } else pickup = false;
}

return pickup;
