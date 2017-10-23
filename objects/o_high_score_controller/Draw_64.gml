/// @description Insert description here

// shared
draw_set_font(f_score);
draw_set_color(c_white);

// title
draw_set_halign(fa_center);
draw_text(room_width / 2, 10, "HIGH SCORES");

// high scores
draw_set_halign(fa_left);
for (var i=1; i<11; i++) {
  var name = highscore_name(i);
  var highscore = highscore_value(i);
  var buffer = ".................................";
  
  if string_length(name) == 1 {
    name = "  " + name;
  } else if string_length(name) == 2 {
    name = " " + name;
  }
  
  var score_show = string_format(highscore, 7, 0);
  score_show = string_replace_all(score_show, " ", "0");
  
  var text = name + buffer + score_show;
  
  draw_text(30, (i*18 + 30), text);
}