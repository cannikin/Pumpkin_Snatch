/// @description Initialize

// each sprite has a different place where there pumpkin looks good when being carried
// offset here is from the top pixel of the sprite
// positive numbers move the pumpkin down, negative move it up
pumpkin_carry_offset = 0;

// how many pixels to move per frame
move_speed = 4;

// how many pixels to move per frame when carrying
carry_speed = 4;

// how many frames it takes to pick up a pumpkin
pickup_speed = 15;

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

// the instance id of a pumpkin being carried
carrying = noone;

// whether we're currently in the animation of actually picking up the pumpkin
picking_up = false;

// start off our sprite
sprite_index = get_player_sprite("stand");
image_speed = 0.75;
