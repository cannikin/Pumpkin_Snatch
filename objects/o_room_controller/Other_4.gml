/// @description Count pumpkins & Player

// count pumpkins so we know how may are on the page
for (var i=0; i<array_height_2d(move_grid); i++) {
  for (var j=0; j<array_length_2d(move_grid, i); j++) {
    var space = move_grid[i,j];
    var pumpkin = space[2];
    if instance_exists(pumpkin) && object_get_name(pumpkin.object_index) == "o_pumpkin" {
      pumpkin_count++; 
    }
  }
}

// place the player in the room
var first_position = move_grid[0,0]
var player = instance_create_layer(first_position[0], -40, player_layer, asset_get_index("o_player_" + global.player_prefix));

// SECRETS
if global.power_up {
  player.move_speed = 10;
  player.carry_speed = 10;
  player.pickup_speed = 1;
}