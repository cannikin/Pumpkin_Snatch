/// @description Initialize

move_grid[0,0] = [64,160,0];
move_grid[0,1] = [256,160,100003];
move_grid[0,2] = [480,160,100004];
move_grid[0,3] = [704,160,100005];
move_grid[0,4] = [928,160,100001];

move_grid[1,0] = [64,512,0];
move_grid[1,1] = [256,512,100006];
move_grid[1,2] = [480,512,100007];
move_grid[1,3] = [704,512,100008];
move_grid[1,4] = [928,512,100002];

x_index = 0;
y_index = 0;

x_max_index = array_length_2d(move_grid, 0) - 1;
y_max_index = array_height_2d(move_grid) - 1;

start_index = move_grid[0,0];

next_x = start_index[0];
next_y = start_index[1];

move_speed = 32;

// the pumpkin being carried
carrying = noone;

show_debug_message("Create player; "+ string(id));