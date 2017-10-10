/// @description Initialize

x_index = 0;
y_index = 0;

x_max_index = array_length_2d(o_room_manager.move_grid, 0) - 1;
y_max_index = array_height_2d(o_room_manager.move_grid) - 1;

start_index = o_room_manager.move_grid[0,0];

next_x = start_index[0];
next_y = start_index[1];

move_speed = 32;

// the pumpkin being carried
carrying = noone;

// show_debug_message("Create player; "+ string(id));