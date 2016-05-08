///scr_load_map(filename)
///Tiled_GMS v0.alpha, by @angrymobofsteve


var filename;
var tileheight, tilewidth;

filename = argument0;

var data_file = file_text_open_read(working_directory + filename);
var json_data = "";
while (!file_text_eof(data_file))
{

    json_data += file_text_read_string(data_file);
    file_text_readln(data_file);
}
file_text_close(data_file); 

if ( !is_undefined(json_data) )
{
    var json = json_decode( json_data );
    show_debug_message("read from file");
}
else
    exit;

global.tilewidth = ds_map_find_value( json, "tilewidth" );
global.tileheight = ds_map_find_value( json, "tileheight" );
var map_width = ds_map_find_value( json, "width" );
var map_height = ds_map_find_value( json, "height" );
var lst_tileset = ds_map_find_value( json, "tilesets" );
var tileset = ds_list_find_value(lst_tileset, 0);
var tileset_img = ds_map_find_value(tileset, "image");
var tile_cols = ds_map_find_value(tileset, "imagewidth") / global.tilewidth;
var tile_rows = ds_map_find_value(tileset, "imageheight") / global.tileheight;
//var layer_depth = 1000;
tileset_bg = background_add(working_directory + tileset_img, 1, false );

var lst_layers = ds_map_find_value( json, "layers" );
//show_debug_message(string(ds_list_size(lst_layers)));
for ( var layer_i = 0; layer_i < ds_list_size(lst_layers); layer_i++){
    var layer_object = ds_list_find_value( lst_layers, layer_i);
    var layer_type = ds_map_find_value( layer_object, "type");
    switch(layer_type){
        case "tilelayer":
            var layer_height = ds_map_find_value( layer_object, "height" );
            var layer_width = ds_map_find_value( layer_object, "width" );
            var layer_properties = ds_map_find_value( layer_object, "properties");
            var layer_depth = ds_map_find_value( layer_properties, "depth" );
            //show_debug_message(layer_depth);
            //layer_depth -= 1 * layer_i;
            var lst_data = ds_map_find_value( layer_object, "data" );
            //build tile layer
            var i;
            for ( j = 0; j < map_height; j++ ){
                for ( k = 0; k < map_width; k++ ){   
                    i = ( j * map_width) + k;          
                    var tile_id = ds_list_find_value(lst_data, i);
                    //show_debug_message(tile_id);
                    if ( tile_id > 0 ) {
                        tile_add(tileset_bg, ((( tile_id - 1) mod tile_cols ) *global.tilewidth ), ((( tile_id - 1) div tile_rows ) * global.tileheight ),
                               global.tilewidth, global.tileheight, k *global.tilewidth, j * global.tileheight, layer_depth);
                    }                         
                }
            }
            ds_list_destroy(lst_data);
        break;
        case "objectgroup":
            var lst_objects = ds_map_find_value( layer_object, "objects");
            for ( var o = 0; o < ds_list_size( lst_objects ); o++ ) {
                var object_map = ds_list_find_value( lst_objects, o);
                var object_type = asset_get_index( ds_map_find_value( object_map, "type"));
                show_debug_message(object_get_name(object_type));
                var object_x = ds_map_find_value( object_map, "x" );
                var object_y = ds_map_find_value( object_map, "y" );
                var object_width = ds_map_find_value( object_map, "width");
                var object_height = ds_map_find_value( object_map, "height");
                var object_properties = ds_map_find_value( object_map, "properties");
                if object_exists(object_type){
                    var object = instance_create( object_x, object_y, object_type);
                    //var object_scale_x =  (object_width / object.sprite_width);
                    //var object_scale_y = ( object_height / object.sprite_height);
                    //scale object and reposition based on offset
                    //object.image_xscale = object_scale_x;
                    //object.image_yscale = object_scale_y;
                    //object.x = object_x + ( object.sprite_xoffset);
                    //object.y = object_y + ( object.sprite_yoffset);
                    object.x = object_x;
                    object.y = object_y;
                    if (object_properties != undefined) scr_custom_properties(object.object_index,object_properties);
                }
            }
            ds_list_destroy(lst_objects);
        break;
        default:
            show_message("unknown layer type");
        break;
    }
    ds_map_destroy(layer_object);
}

ds_list_destroy(lst_layers);
ds_list_destroy(lst_tileset);
ds_map_destroy(json);
