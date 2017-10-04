/// @description Movement

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
  var move_index = move_grid[y_index,x_index];
  next_x = move_index[0];
  next_y = move_index[1];
}

// move player to new x position in increments
if is_moving_x {
  if x < next_x {
    x += move_speed;
  } else {
    x -= move_speed;
  }
}

// move player to new y position in increments
if is_moving_y {
  if y < next_y {
    y += move_speed;
  } else {
    y -= move_speed;
  }
}