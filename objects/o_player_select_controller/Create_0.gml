/// @description Initialize

score = 0;
lives = 3;

players = [
  [o_player_female1, "female1"], 
  [o_player_male1, "male1"], 
  [o_player_female2, "female2"],
  [o_player_female3, "female3"],
  [o_player_male2, "male2"],
  [o_player_monster1, "monster1"]
];
player_properties = [];
player_selected_index = 0;

// save movement properties for each player
for (var i=0; i<array_length_1d(players); i++) {
  var player_group = players[i];
  var player = player_group[0];
  var normalized_move_speed = player.move_speed;
  var normalized_carry_speed = player.carry_speed;
  var normalized_pickup_speed = max(5 - floor(player.pickup_speed / 5), 1);
  player_properties[i] = [["MOVE", normalized_move_speed],["CARRY", normalized_carry_speed], ["PICK", normalized_pickup_speed]];
}

// SECRETS
global.power_up = false;

// will play until stopped
audio_stop_all();
audio_play_sound(music_player_select, 0, true);
