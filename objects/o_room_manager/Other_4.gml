/// @description Count pumpkins

for (var i=0; i<array_height_2d(move_grid); i++) {
  for (var j=0; j<array_length_2d(move_grid, i); j++) {
    var space = move_grid[i,j];
    var pumpkin = space[2];
    
    if instance_exists(pumpkin) && object_get_name(pumpkin.object_index) == "o_pumpkin" {
      pumpkin_count++; 
    }
  }
}
