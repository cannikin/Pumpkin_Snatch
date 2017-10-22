/// @description Initialize

POPPED_LAYER = layer_get_id("popped_pumpkins");
MAX_SIZE = sprite_get_number(s_pumpkin) - 1;

// whether we're actually in a room or not
in_room = instance_exists(o_room_controller);

being_carried = false;

// the size the pumpkin should be drawn at
size = 0;

// keep track of how many frames we need to spend picking up the pumpkin
pickup_counter = 0;

// keep track of the interval between size steps
growth_counter = 0;

// don't animate automatically
image_speed = 0;

if in_room {
  // how long to wait before starting to grow
  start_delay = floor(room_speed * random(o_room_controller.max_pumpkin_start_delay));
  append_to_move_grid(self);
}