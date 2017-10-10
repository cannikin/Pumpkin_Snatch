/// @description Growth & Movement

// if a pumpkin is being carried, nothing else is going on
if being_carried {
  x = o_player.x;
  y = o_player.y - o_player.sprite_height;
} else {

  // wait a random interval before starting to grow
  if start_delay <= 0 {
    growth_counter++;
  } else {
    start_delay--;
  }

  if growth_counter == o_room_manager.pumpkin_growth_interval { 
  	if size < MAX_SIZE {
      // pumpkin is growing
      size++;
  	  growth_counter = 0;
  	} else {
      // pumpkin popped
      instance_create_layer(x, y, POPPED_LAYER, o_pumpkin_popped);
      instance_destroy();
    }
  }
}

image_index = size;
