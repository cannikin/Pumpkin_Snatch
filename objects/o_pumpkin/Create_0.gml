/// @description Initialize

being_carried = false;
size = 0;
max_size = sprite_get_number(s_pumpkin) - 1;

// wait a random number of seconds before starting to grow
start_wait = floor(room_speed * random(6));

// how long it takes to grow to the next size
growth_interval = room_speed * 3; // 5 seconds
growth_counter = 0;

// the layer that popped pumpkins need to be displayed on
popped_layer = layer_get_id("popped_pumpkins");

// don't animate
image_speed = 0;

show_debug_message("Create pumpkin: " + string(id));
show_message("start_wait: " + string(start_wait));