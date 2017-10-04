/// @description Increment score

if dropped_pumpkin != noone {
  pumpkin_count++;
  score += power(10, dropped_pumpkin.size + 1);
  with(dropped_pumpkin) {
    instance_destroy();
  }
  dropped_pumpkin = noone;
}