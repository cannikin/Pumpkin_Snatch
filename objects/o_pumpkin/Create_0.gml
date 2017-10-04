/// @description Initialize

being_carried = false;
size = 0;
max_size = sprite_get_number(s_pumpkin) - 1;

// how long it takes to grow to the next size
growth_interval = room_speed * 5; // 5 seconds
growth_counter = 0;

popped_layer = layer_get_id("popped_pumpkins");

// don't animate
image_speed = 0;

show_debug_message("Create pumpkin: " + string(id));