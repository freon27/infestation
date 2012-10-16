
mp_grid_destroy(global.AI_grid)
global.AI_grid=mp_grid_create(0,0,room_width/16,room_height/16,32,32); //Creates the mp_grid
mp_grid_add_instances(global.AI_grid,obstruction,false); //Adds all instances of wall object to AI grid...
