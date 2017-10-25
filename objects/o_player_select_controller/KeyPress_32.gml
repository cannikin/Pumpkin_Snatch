/// @description Start game

// EASTER EGG
if keyboard_check(vk_enter) {
  global.power_up = true;
}

// save which player was picked globally so it's available everywhere
var player_group = players[player_selected_index];
var player = player_group[0];
var player_prefix = player_group[1];
global.player_prefix = player_prefix;

if global.power_up {
  audio_play_sound(sound_power_up, 1, false);
} else {
  audio_play_sound(sound_select, 1, false);
}

next_room_go = true;
