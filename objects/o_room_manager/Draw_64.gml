/// @description Score & Lives Draw

// shared
draw_set_font(f_score);
draw_set_color(c_white);

// lives
var lives_x = 10;
var lives_text = "LIVES " + string(lives);
draw_set_halign(fa_left);
draw_text(lives_x, SCOREBOARD_Y, lives_text);

// score
draw_set_halign(fa_right);
draw_text(room_width-10, SCOREBOARD_Y, string(score));
