/// @description Move selection left

if player_selected_index - 1 >= 0 {
  player_selected_index--;
  audio_play_sound(sound_player_change, 1, false);
}
