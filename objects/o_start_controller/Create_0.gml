/// @description Initialize Game

display_set_gui_size(512, 384);
window_set_size(1024,768);

BLINK_RATE = room_speed * 1;

// setup global variables
score = 0;
lives = 3;

// tracking how often to blink the start text
blink_counter = 0;
write_start_text = true;