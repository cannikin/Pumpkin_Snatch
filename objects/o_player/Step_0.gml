/// @description Movement

if in_room {
  
  #region // keyboard checks

  // check keyboard
  var key_left = keyboard_check_pressed(vk_left);
  var key_right = keyboard_check_pressed(vk_right);
  var key_up = keyboard_check_pressed(vk_up);
  var key_down = keyboard_check_pressed(vk_down);
  var key_pick = keyboard_check_pressed(vk_space);
  var any_key_pressed = key_left || key_right || key_up || key_down || key_pick;

  // helpful variables that tell us if player is currently in motion
  var is_moving_x = x != next_x;
  var is_moving_y = y != next_y;
  var current_position = o_room_controller.move_grid[y_index,x_index];
  var is_carrying = carrying != noone;

  // only bother messing with all this if a key was actually pressed
  if any_key_pressed {

    var old_x_index = x_index;
    var old_y_index = y_index;
    
    // only allow x movement if player is not currenly moving y
    if !is_moving_y && !picking_up {
      x_index += key_right - key_left;
      x_index = clamp(x_index, 0, x_max_index);
    }

    // only allow y movement if player is in the leftmost x column
    if x == start_index[0] {
      y_index += key_down - key_up;
      y_index = clamp(y_index, 0, y_max_index);
    }

    // get new index points from move_grid
    var move_index = o_room_controller.move_grid[y_index,x_index];
    next_x = move_index[0];
    next_y = move_index[1];
  
    if (old_x_index != x_index || old_y_index != y_index) {
      audio_play_sound(sound_walk, 1, false);
    }
  }
  #endregion


  #region // movement & animation

  if is_moving_x {
    
    var x_increment = is_carrying ? carry_speed : move_speed;
    
    // if player is less than a whole number of pixels away from next_x, move them directly to next_x
    x_increment = min(x_increment, abs(next_x - x));
    
    if x < next_x {
      x += x_increment;
      sprite_index = get_player_sprite("walk_right");
    } else {
      x -= x_increment;
      sprite_index = get_player_sprite("walk_left");
    }
  } 

  if is_moving_y {
    
    var y_increment = is_carrying ? carry_speed : move_speed;
    
    // if player is less than a whole number of pixels away from next_y, move them directly to next_y
    y_increment = min(y_increment, abs(next_y - y));
  
    if y < next_y {
      y += y_increment;
      sprite_index = get_player_sprite("walk_down");
    } else {
      y -= y_increment;
      sprite_index = get_player_sprite("walk_up");
    }
  }

  if !is_moving_x && !is_moving_y {
    sprite_index = get_player_sprite("stand");
  }

  #endregion


  #region // picking up a pumpkin

  if !is_moving_x && key_pick {
    if carrying == noone {
      // are we next to a pumpkin?
      var pumpkin = current_position[2];
      if instance_exists(pumpkin) && object_get_name(pumpkin.object_index) == "o_pumpkin" {
        // pick up pumpkin
        pumpkin.being_carried = true;
        carrying = pumpkin;
        picking_up = true;
        audio_play_sound(sound_pumpkin_pick, 1, false);
      }
    } else {
      // are we next to a basket?
      var basket = current_position[2];
      if instance_exists(basket) && object_get_name(basket.object_index) == "o_basket" {
        basket.dropped_pumpkin = carrying;
        carrying = noone;
        picking_up = false;
      }
    }
  }

  #endregion

} // if in_room