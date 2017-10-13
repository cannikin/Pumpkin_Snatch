/// @description Initialize

// where the player currently is
x_index = 0;
y_index = 0;

// the max extends of x and y
x_max_index = array_length_2d(o_room_manager.move_grid, 0) - 1;
y_max_index = array_height_2d(o_room_manager.move_grid) - 1;

// where the player should start
start_index = o_room_manager.move_grid[0,0];

// where the player is moving next (for animation)
next_x = start_index[0];
next_y = start_index[1];

// how many pixels to move per frame
move_speed = 4;

// the instance id of a pumpkin being carried
carrying = noone;
