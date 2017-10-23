/// @description Move selection left

// player_selected_index = max(player_selected_index-3, 0);
if player_selected_index - 3 >= 0 {
  player_selected_index -= 3;
  audio_play_sound(sound_player_change, 1, false);
}