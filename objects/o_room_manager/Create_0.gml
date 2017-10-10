/// @description Initialize

window_set_size(1024, 768);

// set up indexes for tracking where in the array the next insert should go
// set to -1 so that the first time through index_self they get set to 0
x_index = 0;
y_index = 0;

// initialize with something so it's set as a 2d array
move_grid[0,0] = [0, 0, noone];

show_debug_message("Create room manager: " + string(id));