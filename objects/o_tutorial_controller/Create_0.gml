/// @description Initizlize

BLINK_RATE = room_speed * 1;

// tracking how often to blink the start text
blink_counter = 0;
write_start_text = true;

next_room_go = false;
next_room_wait = room_speed * 0.5;
next_room_counter = 0;
