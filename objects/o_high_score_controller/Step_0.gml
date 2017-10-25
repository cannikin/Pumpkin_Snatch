/// @description Goto next screen

next_screen_counter++;

if next_room_go {
  next_room_counter++;
  if next_room_counter >= next_room_wait {
    room_goto(r_player_select);
  }
} else {
  if next_screen_counter >= next_screen_wait {
    room_goto(r_start);
  }
}