/// @description Initialize

// next screen counter
next_screen_counter = 0;
next_screen_wait = room_speed * 6;

next_room_go = false;
next_room_wait = room_speed * 0.5;
next_room_counter = 0;

highscore_clear();

ini_open("config.ini");
for (var i=0; i<10; i++) {
  var raw = ini_read_string("highscores", string(i+1), "0");
  var parts = split_string(raw, ",");
  
  highscore_add(parts[0], real(parts[1]));
}
ini_close();