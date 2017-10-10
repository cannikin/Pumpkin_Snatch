/// @description Movement


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
var current_position = o_room_manager.move_grid[y_index,x_index];

// only bother messing with all this if a key was actually pressed
if any_key_pressed {

  // only allow x movement if player is not currenly moving y
  if !is_moving_y {
    x_index += key_right - key_left;
    x_index = clamp(x_index, 0, x_max_index);
  }

  // only allow y movement if player is in the leftmost x column
  if x == start_index[0] {
    y_index += key_down - key_up;
    y_index = clamp(y_index, 0, y_max_index);
  }

  // get new index points from move_grid
  var move_index = o_room_manager.move_grid[y_index,x_index];
  next_x = move_index[0];
  next_y = move_index[1];
  
}
#endregion


#region // movement & animation

if is_moving_x {
  if x < next_x {
    x += move_speed;
    sprite_index = s_player_girl_walk_right;
  } else {
    x -= move_speed;
    sprite_index = s_player_girl_walk_left;
  }
} 

if is_moving_y {
  if y < next_y {
    y += move_speed;
    sprite_index = s_player_girl_walk_down;
  } else {
    y -= move_speed;
    sprite_index = s_player_girl_walk_up;
  }
}

if !is_moving_x && !is_moving_y {
  sprite_index = s_player_girl_stand;
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
    }
  } else {
    // are we next to a basket?
    var basket = current_position[2];
    if instance_exists(basket) && object_get_name(basket.object_index) == "o_basket" {
      basket.dropped_pumpkin = carrying;
      carrying = noone;
    }
  }
}

#endregion
