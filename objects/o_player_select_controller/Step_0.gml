/// @description Insert description here
// You can write your code in this editor
 
if next_room_go {
  next_room_counter++;
  if next_room_counter >= next_room_wait {
    room_goto_next();
  }
}