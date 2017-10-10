/// @description Initialize

POPPED_LAYER = layer_get_id("popped_pumpkins");
MAX_SIZE = sprite_get_number(s_pumpkin) - 1;

being_carried = false;
size = 0;
start_delay = floor(room_speed * random(o_room_manager.max_pumpkin_start_delay));

// how long it takes to grow to the next size
growth_counter = 0;

// don't animate automatically
image_speed = 0;

append_to_move_grid(self);
