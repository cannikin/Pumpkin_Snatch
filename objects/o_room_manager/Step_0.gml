/// @description Goto next room

if pumpkin_count == 0 {
  next_room_counter++;
}

if next_room_counter == NEXT_ROOM_WAIT && room_exists(room_next(room)) {
  room_goto_next();
}
