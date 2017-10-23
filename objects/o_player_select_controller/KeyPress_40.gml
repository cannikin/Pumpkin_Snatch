/// @description Move selection left

if player_selected_index + 3 <= array_length_1d(players) - 1 {
  player_selected_index += 3;
  audio_play_sound(sound_player_change, 1, false);
}
