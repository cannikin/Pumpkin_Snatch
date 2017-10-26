/// write_highscores()

ini_open("config.ini");
for (var i=1; i<11; i++) {
  var score_name = highscore_name(i);
  var score_num = highscore_value(i);
  ini_write_string("highscores", string(i), score_name + "," + string(score_num));
}
ini_close();
