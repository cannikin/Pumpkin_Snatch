/// @description Initialize

next_room_counter = 0;
next_room_wait = room_speed * 4;

// stop any music that might be playing
audio_stop_all();
audio_play_sound(sound_game_over, 1, false);