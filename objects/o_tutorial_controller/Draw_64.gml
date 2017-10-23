/// @description Draw

var y_box_top = 30;
var y_box_bottom = 200;

// shared
draw_set_font(f_score);
draw_set_color(c_white);

// title
draw_set_halign(fa_center);
draw_text(room_width / 2, 10, "HOW TO PLAY");

// movement, center 80
draw_rectangle(25, y_box_top, 135, y_box_bottom, true);
draw_text(80, y_box_top + 12, "MOVEMENT");
draw_text_ext(80, 160, "MOVE WITH THE ARROW KEYS", 12, 100);

// pumpkins
draw_rectangle(145, y_box_top, 255, y_box_bottom, true);
draw_text(200, y_box_top + 12, "PICKING");
draw_text_ext(200, 112, "PICK PUMPKINS WITH SPACEBAR PICK THEM BEFORE THEY POP!", 12, 100);

// basket
draw_rectangle(265, y_box_top, 375, y_box_bottom, true);
draw_text(320, y_box_top + 12, "BASKETS");
draw_text_ext(320, 148, "USE SPACEBAR TO DROP PUMPKINS IN THE BASKETS", 12, 100);

// press spacebar to start
if write_start_text {
  draw_text(room_width/2, room_height - 24, "PRESS SPACEBAR TO START");
}

if blink_counter == BLINK_RATE {
  blink_counter = 0;
  write_start_text = !write_start_text;
} else {
  blink_counter++;
}