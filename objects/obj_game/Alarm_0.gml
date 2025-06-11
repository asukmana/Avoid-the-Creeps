//room_restart();
randomize();

//room_goto(rm_menu);
var spawn_location = choose("top", "bottom", "left","right");
var spawn_x;
var spawn_y;

switch (spawn_location)
{
	case "top":
		spawn_x = random(480);
		spawn_y = 0;
		break;
	case "bottom":
		spawn_x = random(480);
		spawn_y = room_height;
		break;
	case "left":
		spawn_x = 0;
		spawn_y = random(720);
		break;
	case "right":
		spawn_x = room_width;
		spawn_y = random(720);
		break;
}

instance_create_layer(spawn_x, spawn_y, "Instances", obj_enemy);

alarm[0] = 0.5 * game_get_speed(gamespeed_fps);