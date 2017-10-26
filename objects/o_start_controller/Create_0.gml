/// @description Initialize

BLINK_RATE = room_speed * 1;

// tracking how often to blink the start text
blink_counter = 0;
write_start_text = true;

// next screen counter
next_screen_counter = 0;
next_screen_wait = room_speed * 6;

next_room_go = false;
next_room_wait = room_speed * 0.5;
next_room_counter = 0;

if !audio_is_playing(music_start) {
  audio_stop_all();
  audio_play_sound(music_start, 0, true);
}
