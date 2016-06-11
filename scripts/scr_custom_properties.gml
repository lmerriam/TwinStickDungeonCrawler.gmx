///scr_custom_properties(instance,properties,object)
var instance = argument0;
var properties = argument1;
var object = argument2;

switch object {
    case Location:
        instance.name = ds_map_find_value( properties, "name" );
        break;
    case Chest:
        instance.level = ds_map_find_value( properties, "level" );
        break;
    case Enemy_Spawner:
        instance.enemy_object = asset_get_index( ds_map_find_value( properties, "enemy_object"));
        instance.quantity = ds_map_find_value(properties, "quantity");
    default:
        //show_debug_message("No match");
        break;
}
