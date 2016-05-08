///scr_custom_properties(object,properties)
switch argument0 {
    case Location:
        show_debug_message("Location being named");
        Location.name = ds_map_find_value( argument1, "name" );
        break;
    case Chest:
        show_debug_message("Chest properties being read");
        break;
    default:
        show_debug_message("No match");
        break;
}
