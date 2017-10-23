/// @description Growth & Movement

if in_room {
  
  // if a pumpkin is being carried, nothing else is going on
  if being_carried {

    // default y position is on top of the player's head
    var new_y_offset = o_player.sprite_height + o_player.pumpkin_carry_offset;
  
    // if we're still animating the pickup, figure out the proper position
    if pickup_counter < o_player.pickup_speed {
      new_y_offset = round(new_y_offset / o_player.pickup_speed * pickup_counter);
      pickup_counter++;
    } else {
      o_player.picking_up = false;
    }
  
    x = o_player.x;
    y = o_player.y - new_y_offset;
    sprite_index = s_pumpkin_carry;
  
  } else {

    // wait a random interval before starting to grow
    if start_delay <= 0 {
      growth_counter++;
    } else {
      start_delay--;
    }

    if growth_counter == o_room_controller.pumpkin_growth_interval { 
    	if size < MAX_SIZE {
        // pumpkin is growing
        size++;
    	  growth_counter = 0;
    	} else {
        // pumpkin popped
        instance_create_layer(x, y, POPPED_LAYER, o_pumpkin_popped);
        audio_play_sound(sound_pumpkin_pop, 1, false);
        instance_destroy();
      }
    }
  }

}

image_index = size;