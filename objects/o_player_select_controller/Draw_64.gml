/// @description Draw text

// shared
draw_set_font(f_score);
draw_set_color(c_white);

// title
draw_set_halign(fa_center);
draw_text(room_width / 2, 10, "SELECT YOUR PLAYER");

// players
for (var i=0; i<array_length_1d(players); i++) {
  var player_group = players[i]
  var player = player_group[0];
  var property_group = player_properties[i];
  
  // selection rectangle
  if player_selected_index == i {
    draw_set_colour(c_white);
    draw_set_alpha(0.1);
    draw_rectangle(player.x - 55, player.y-26, player.x + 55, player.y + 64, false);
  }
  
  // outline
  draw_set_colour(c_white);
  draw_set_alpha(1);
  draw_rectangle(player.x - 55, player.y-26, player.x + 55, player.y + 64, true);
  
  // name
  draw_set_halign(fa_center);
  draw_set_color(c_white);
  draw_text(player.x, player.y + 10, player.name);
  
  // properties
  for (var j=0; j<3; j++) {
    var property = property_group[j];
    var new_y = player.y + 26 + (12 * j);
    
    // draw property label
    draw_set_halign(fa_right);
    draw_set_color(c_white);
    draw_text(player.x - 5, new_y, property[0]);
    
    // draw property value
    draw_set_halign(fa_left);
    draw_set_color(c_yellow);
    for (var k=0; k<property[1]; k++) {
      draw_text(player.x + (10 * k), new_y, "*");
    }
  }
  
  // rectangle
  draw_set_colour(c_white);
  draw_rectangle(player.x - 55, player.y-26, player.x + 55, player.y + 64, true);
}