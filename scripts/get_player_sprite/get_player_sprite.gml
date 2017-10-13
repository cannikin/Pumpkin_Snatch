/// get_player sprite(action)
/// @arg action the name of the action to get the sprite for ie. "stand"

var action = argument[0];

// TODO: verify that the action is one we actually have a sprite for

return asset_get_index("s_" + global.player_sprite_prefix + "_" + action);