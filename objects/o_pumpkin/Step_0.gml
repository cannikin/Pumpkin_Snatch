/// @description Growth & Movement

// if a pumpkin is being carried, nothing else is going on
if being_carried {
  x = o_player.x;
  y = o_player.y - o_player.sprite_height * 2;
} else {
  growth_counter++;

  if growth_counter == growth_interval { 
  	if size < max_size {
      // pumpkin is growing
  	  growth_counter = 0;
      image_index = size++;
  	} else {
      // pumpkin popped
      instance_create_layer(x, y, popped_layer, o_pumpkin_popped);
      instance_destroy();
    }
  }
}