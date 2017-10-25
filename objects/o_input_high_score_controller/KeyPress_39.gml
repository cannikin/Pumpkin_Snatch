/// @description Insert description here

if cursor_index + 1 <= array_length_1d(chars) - 1 {
  cursor_index++;
  audio_play_sound(sound_player_change, 1, false);
}
