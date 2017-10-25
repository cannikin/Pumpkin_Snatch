/// @description Initialize

display_set_gui_size(400, 240);
window_set_size(800, 480);

highscore_clear();

// setup high scores
highscore_add("ROB", 100);
highscore_add("JAC", 90);
highscore_add("KAT", 80);
highscore_add("AIM", 70);
highscore_add("CAM", 60);
highscore_add("UZI", 50);
highscore_add("FF",  40);
highscore_add("DEV", 30);
highscore_add("RUT", 20);
highscore_add("JIM", 10);

room_goto_next();
