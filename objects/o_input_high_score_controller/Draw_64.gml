/// @description Draw

// draw title
draw_set_font(f_score);
draw_set_color(c_white);
draw_set_halign(fa_center);
draw_text(room_width / 2, 10, "ENTER YOUR INITIALS");

// draw buffer
draw_set_font(f_initials);
draw_set_color(c_yellow);
draw_text(room_width / 2, 30, buffer);

// draw characters
draw_set_color(c_white);
for (var i=0; i<array_length_1d(chars); i++) {
  if chars[i] == "DEL" {
    // special delete character
    draw_sprite_ext(s_highscore_del, 0, next_x, next_y, 1, 1, 0, c_white, 1);
  } else if chars[i] == "END" {
    // special END character
    draw_sprite_ext(s_highscore_end, 0, next_x, next_y, 1, 1, 0, c_white, 1);
  } else if chars[i] == " " {
    // special space character
    draw_sprite_ext(s_highscore_space, 0, next_x, next_y, 1, 1, 0, c_white, 1);
  } else {
    // otherwise regular character
    draw_text(next_x, next_y, chars[i]);
  }
  
  // draw selection box
  if cursor_index == i {
    draw_rectangle(next_x - 13, next_y - 5, next_x + 11, next_y + 19, true);
    draw_rectangle(next_x - 12.5, next_y - 4.5, next_x + 10.5, next_y + 18.5, true);
  }
  
  // incremention positions
  column++;
  next_x = side_padding + (column - 1) * column_spacing;
  if next_x > room_width - side_padding {
    column = 1;
    row++;
    next_x = side_padding;
    next_y = top_padding + (row - 1) * row_spacing;
  }

}

// reset character locations
row = 1;
column = 1;
next_x = side_padding;
next_y = top_padding;