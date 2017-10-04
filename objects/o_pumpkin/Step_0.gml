/// @description Growth & Movement

// if a pumpkin is being carried, nothing else is going on
if being_carried {
  x = o_player.x;
  y = o_player.y - o_player.sprite_height * 2;
} else {

  // wait a random interval before starting to grow
  if start_wait <= 0 {
    growth_counter++;
  } else {
    start_wait--;
  }

  if growth_counter == growth_interval { 
  	if size < max_size {
      // pumpkin is growing
      size++;
  	  growth_counter = 0;
  	} else {
      // pumpkin popped
      instance_create_layer(x, y, popped_layer, o_pumpkin_popped);
      instance_destroy();
    }
  }
}

image_index = size;