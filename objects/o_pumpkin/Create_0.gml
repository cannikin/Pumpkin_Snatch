/// @description Initialize

being_carried = false;
size = 0;
max_size = sprite_get_number(s_pumpkin) - 1;

// how long it takes to grow to the next size
growth_interval = room_speed * 5; // 5 seconds
growth_counter = 0;

// don't animate
image_speed = 0;
