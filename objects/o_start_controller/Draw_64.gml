/// @description Draw UI

draw_set_font(f_score);
draw_set_color(c_white);
draw_set_halign(fa_center);
  
draw_text(room_width/2, room_height-30, "@ 2017 CAMERONTECH");

if write_start_text {
  draw_text(room_width/2, room_height/2 + 50, "PRESS SPACEBAR TO START");
}

if blink_counter == BLINK_RATE {
  blink_counter = 0;
  write_start_text = !write_start_text;
} else {
  blink_counter++;
}