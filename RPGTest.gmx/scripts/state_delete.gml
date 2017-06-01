///state_delete(state <script or name>)
///Should only be called in the create event of child objects
if(is_real(argument[0]))
{ //you passed a specific script, delete that state
    _name = ds_map_find_value(state_keys,argument[0]);
    ds_map_delete(state_map, _name);
    ds_map_delete(state_keys,argument[0]);
}
else
{   //you passed the name of a state, let's try and find it.
  if(ds_map_exists(state_map,argument[0]))
  {
    _script = ds_map_find_value(state_map, argument[0]);
    ds_map_delete(state_keys, _script);
    ds_map_delete(state_map,argument[0]);
  }
  else
  {
    show_debug_message("Tried to delete a non-existent state.")
  }
}



