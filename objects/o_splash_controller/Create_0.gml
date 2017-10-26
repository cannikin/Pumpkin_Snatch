/// @description Initialize

display_set_gui_size(400, 240);
window_set_size(800, 480);

global.highlight_score_name = "";
global.highlight_score_value = 0;

highscore_clear();

// make sure config file exists with high scores
ini_open("config.ini");

// do we need to create the file?
if !ini_section_exists("highscores") {
  
  // close the file before we re-open it for writing in `write_highscores()`
  ini_close();
  
  // create highscore board
  var score_names = ["ROB","JAC","KAT","AIM","CAM","TOM","DON","JOE","SQK","NEO"];
  for (var i=0; i<10; i++) {
    var score_name = score_names[i];
    var the_score = (10-i)*10;
    highscore_add(score_name, the_score);
    
    var just_added_name = highscore_name(i+1);
    var just_added_value = highscore_value(i+1);
  }
  
  // save highscores
  write_highscores();
} else {
  // make sure file is closed
  ini_close();
}

// go to the start screen
room_goto_next();
