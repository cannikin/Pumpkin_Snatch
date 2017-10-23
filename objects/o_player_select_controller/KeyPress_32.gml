/// @description Start game

// save which player was picked globally so it's available everywhere
var player_group = players[player_selected_index];
global.player_prefix = player_group[1];

audio_play_sound(sound_select, 1, false);

room_goto_next();