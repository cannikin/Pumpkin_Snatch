/// append_to_move_grid(instance)
/// @arg instance : the instance to add to RoomManager's move_grid

var instance = argument[0];

// compare last y indexed value that was inserted to the y of this instance
if o_room_manager.x_index > 0 {
  var last_insert = o_room_manager.move_grid[o_room_manager.y_index, o_room_manager.x_index-1];
  if last_insert[1] != instance.y {
    // this instance is starting a new row
    o_room_manager.y_index++;
    o_room_manager.x_index = 0;
  }
}

o_room_manager.move_grid[o_room_manager.y_index, o_room_manager.x_index] = [instance.x, instance.y, instance.id];
show_debug_message("move_grid[" + string(o_room_manager.y_index) + "][" + string(o_room_manager.x_index) + "] = [" + string(instance.x) + "," + string(instance.y) + "," + string(instance.id) + "]");

o_room_manager.x_index++;

