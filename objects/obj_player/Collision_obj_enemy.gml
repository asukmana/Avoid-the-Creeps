instance_destroy();
audio_stop_sound(snd_music);
audio_play_sound(snd_game_over, 0 ,false);
obj_game.alarm[3] = 2 * game_get_speed(gamespeed_fps);