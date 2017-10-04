/// @description Initialize

move_grid[0,0] = [64,160];
move_grid[0,1] = [256,160];
move_grid[0,2] = [480,160];
move_grid[0,3] = [704,160];
move_grid[0,4] = [928,160];

move_grid[1,0] = [64,512];
move_grid[1,1] = [256,512];
move_grid[1,2] = [480,512];
move_grid[1,3] = [704,512];
move_grid[1,4] = [928,512];

x_index = 0;
y_index = 0;

x_max_index = array_length_2d(move_grid, 0) - 1;
y_max_index = array_height_2d(move_grid) - 1;

start_index = move_grid[0,0];

next_x = start_index[0];
next_y = start_index[1];

move_speed = 32;
