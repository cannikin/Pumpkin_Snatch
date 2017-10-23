/// @description Increment score

if dropped_pumpkin != noone {
  pumpkin_count++;
  score += 10 * (dropped_pumpkin.size + 1);
  with(dropped_pumpkin) {
    instance_destroy();
  }
  dropped_pumpkin = noone;
  audio_play_sound(sound_drop_pumpkin, 1, false);
}