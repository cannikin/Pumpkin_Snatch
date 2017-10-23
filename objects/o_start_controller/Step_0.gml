/// @description Goto next screen

next_screen_counter++;

if next_screen_counter >= next_screen_wait {
  room_goto(r_high_score_display);
}