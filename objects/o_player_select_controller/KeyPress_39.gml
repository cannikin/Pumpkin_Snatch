/// @description Move selection right

if player_selected_index + 1 <= array_length_1d(players) - 1 {
  player_selected_index++;
  audio_play_sound(sound_player_change, 1, false);
}
