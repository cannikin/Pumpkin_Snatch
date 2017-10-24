/// @description Start over

next_room_counter++;

if next_room_counter >= next_room_wait {
  room_goto(r_start);
}