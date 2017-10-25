/// @description Initialize

if score < highscore_value(10) {
  room_goto(r_game_over);
}

// these go into global variables so that we can call the
// draw_highscore_characters script multiple times and it'll 
// continue right where it left off after the previous call

top_padding = 60;
side_padding = 60;
column_spacing = 40;
row_spacing = 36;
row = 1;
column = 1;

next_x = side_padding;
next_y = top_padding;
chars = ["A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z","0","1","2","3","4","5","6","7","8","9"," ","_","DEL","END"];
cursor_index = 0;
buffer = "";
max_buffer = 3;

// total columns built
total_columns = 8;
total_rows = 5;

// stop any music that might be playing
audio_stop_all();
audio_play_sound(music_highscore_input, 0, true);