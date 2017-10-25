/// @description Goto next room

if next_room_go {
  next_room_counter++;
  if next_room_counter >= next_room_wait {
    room_goto_next();
  }
}