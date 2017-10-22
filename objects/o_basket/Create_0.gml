/// @description Initialize

pumpkin_count = 0;
dropped_pumpkin = noone;

in_room = instance_exists(o_room_controller);

if in_room {
  append_to_move_grid(self);
}
