/// @description Insert description here

var side_padding = 100;

// keeps track of whether we already highlighted someone so that
// if there are two highscores with the same name and value, only
// the first one is highlighted
var highlighted = false;

// shared
draw_set_font(f_score);
draw_set_color(c_orange);

// title
draw_set_halign(fa_center);
draw_text(room_width / 2, 10, "HIGH SCORES");

// high scores
draw_set_halign(fa_left);

for (var i=1; i<11; i++) {
  var name = highscore_name(i);
  var highscore = highscore_value(i);
  var buffer = " ........... ";
  
  if string_length(name) == 1 {
    name = "  " + name;
  } else if string_length(name) == 2 {
    name = " " + name;
  }
  
  var score_show = string_format(highscore, 7, 0);
  score_show = string_replace_all(score_show, " ", "0");
  
  var text = string(i) + ". " + name + buffer + score_show;
  
  if i == 10 {
    side_padding -= 8;
  }
  
  if name == global.highlight_score_name && highscore == global.highlight_score_value && !highlighted {
    highlighted = true;
    draw_set_color(c_orange);
  } else {
    highlighted = false;
    draw_set_color(c_white);
  }
  
  draw_text(side_padding, (i*19 + 20), text);
}