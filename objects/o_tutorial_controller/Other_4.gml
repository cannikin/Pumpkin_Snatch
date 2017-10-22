/// @description Swap player

with (o_player) {
  instance_change(asset_get_index("o_player_" + global.player_prefix), false);
}
