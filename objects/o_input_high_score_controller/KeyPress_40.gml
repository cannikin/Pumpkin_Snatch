/// @description Insert description here

if cursor_index + total_columns <= array_length_1d(chars) - 1 {
  cursor_index += total_columns;
  audio_play_sound(sound_player_change, 1, false);
}
