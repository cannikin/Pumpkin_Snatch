/// @description Growth & Movement

growth_counter++;

// if we haven't reached max size, and we've reached the next growth rate, grow
if size < max_size && growth_counter == growth_interval {
  size++;
  growth_counter = 0;
}

image_index = size;