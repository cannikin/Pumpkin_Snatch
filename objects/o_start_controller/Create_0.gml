/// @description Initialize

BLINK_RATE = room_speed * 1;

// tracking how often to blink the start text
blink_counter = 0;
write_start_text = true;

// next screen counter
next_screen_counter = 0;
next_screen_wait = room_speed * 10;
