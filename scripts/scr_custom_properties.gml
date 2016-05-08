///scr_custom_properties(object,properties)
switch argument0 {
    case Location:
        Location.name = ds_map_find_value( argument1, "name" );
        break;
    case Chest:
        Chest.level = ds_map_find_value( argument1, "level" );
        break;
    default:
        //show_debug_message("No match");
        break;
}
