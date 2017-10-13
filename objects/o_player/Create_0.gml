/// @description Initialize

// each sprite has a different place where there pumpkin looks good when being carried
// offset here is from the top pixel of the sprite
// positive numbers move the pumpkin down, negative move it up
PUMPKIN_CARRY_OFFSET = 4;

// where the player currently is in the move_grid
x_index = 0;
y_index = 0;

// the max position of x and y on the move_grid
x_max_index = array_length_2d(o_room_manager.move_grid, 0) - 1;
y_max_index = array_height_2d(o_room_manager.move_grid) - 1;

// what grid position the player should start at
start_index = o_room_manager.move_grid[0,0];

// where the player is moving next (for animation)
next_x = start_index[0];
next_y = start_index[1];

// how many pixels to move per frame
move_speed = 4;

// the instance id of a pumpkin being carried
carrying = noone;
