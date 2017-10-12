/// @description Initialize

display_set_gui_size(512, 384);

SCOREBOARD_Y = 9;
NEXT_ROOM_WAIT = room_speed * 3;

// set up indexes for tracking where in the array the next insert should go
// set to -1 so that the first time through index_self they get set to 0
x_index = 0;
y_index = 0;

// initialize with something so it's set as a 2d array
move_grid[0,0] = [];

// how fast a pumpkin grows
pumpkin_growth_rate = 3;
pumpkin_growth_interval = room_speed * pumpkin_growth_rate;

// seconds to wait before a pumpkin starts growing
max_pumpkin_start_delay = 6

// total number of pumpkins on the stage
pumpkin_count = 0;

// how long to wait until we go to the next room
next_room_counter = 0;