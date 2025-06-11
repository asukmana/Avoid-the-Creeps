randomize();
player_score = 0;

//mob timer
game_set_speed(60, gamespeed_fps);
alarm[0] = 0.5 * game_get_speed(gamespeed_fps);
alarm[1] = game_get_speed(gamespeed_fps);

