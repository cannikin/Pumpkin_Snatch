/// @description Draw

// shared
draw_set_font(f_score);
draw_set_color(c_white);

// title
draw_set_halign(fa_center);
draw_text(room_width / 2, 10, "HOW TO PLAY");

// boxes
draw_set_colour(c_white);
draw_rectangle(25, 40, 135, 220, true);
draw_rectangle(145, 40, 255, 220, true);
draw_rectangle(265, 40, 375, 220, true);
  