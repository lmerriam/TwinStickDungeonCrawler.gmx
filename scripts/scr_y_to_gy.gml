///y_to_gy(y)
var yy = argument[0];
if (yy < Inventory.view_yview[0]) return -1; // Return -1 if outside bounds of inv
return (yy-Inventory.view_yview[0]) div Inventory.box_size;
