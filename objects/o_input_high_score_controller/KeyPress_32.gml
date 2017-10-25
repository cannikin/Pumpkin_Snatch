/// @description Add to buffer

if chars[cursor_index] == "DEL" {
  show_debug_message("DELETE");
  // delete token
  buffer = string_delete(buffer, string_length(buffer), 1);
} else if chars[cursor_index] == "END" {
  // end token
  if string_length(buffer) < max_buffer {
    for (var i=0; i<max_buffer-string_length(buffer); i++) {
      buffer += " ";
    }
  }
  highscore_add(buffer, score);
  room_goto(r_high_score_display);
} else if string_length(buffer) < max_buffer {
  show_debug_message("ADD");
  // add character
  buffer += chars[cursor_index];
} else {
  // replace last character
  show_debug_message("REPLACE");
  buffer = string_delete(buffer, string_length(buffer), 1);
  buffer += chars[cursor_index];
}