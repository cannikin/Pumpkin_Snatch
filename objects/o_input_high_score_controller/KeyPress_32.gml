/// @description Add to buffer

if chars[cursor_index] == "DEL" {
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
  write_highscores();
  
  // save the score that was just added so we can highlight
  global.highlight_score_name = buffer;
  global.highlight_score_value = score;
  
  // show the scores
  room_goto(r_high_score_display);
} else if string_length(buffer) < max_buffer {
  // add character
  buffer += chars[cursor_index];
  // if the buffer is max length, jump to END token
  if string_length(buffer) == max_buffer {
    cursor_index = array_length_1d(chars) - 1; 
  }
} else {
  // replace last character
  buffer = string_delete(buffer, string_length(buffer), 1);
  buffer += chars[cursor_index];
}

audio_play_sound(sound_pumpkin_pick, 1, false);