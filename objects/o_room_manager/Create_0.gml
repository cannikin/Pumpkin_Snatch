/// @description Initialize

SCOREBOARD_Y = 10;

// window_set_size(1024, 768);
// display_set_gui_size(384, 512);

score = 0;
lives = 3;

// set up indexes for tracking where in the array the next insert should go
// set to -1 so that the first time through index_self they get set to 0
x_index = 0;
y_index = 0;

// initialize with something so it's set as a 2d array
move_grid[0,0] = [0, 0, noone];

// how fast a pumpkin grows
pumpkin_growth_rate = 3;
pumpkin_growth_interval = room_speed * pumpkin_growth_rate;

// seconds to wait before a pumpkin starts growing
max_pumpkin_start_delay = 6
