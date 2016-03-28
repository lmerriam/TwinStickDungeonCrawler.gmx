///x_to_gx(x)
var xx = argument[0];
if (xx < Inventory.view_xview[0]-100) return -1; // Return -1 if outside bounds of inv
return (xx-Inventory.view_xview[0]-100) div Inventory.box_size;
