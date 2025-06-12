//randomize();

if obj_game.on_start == true
{
	sprite_index = choose(spr_enemy_flying, spr_enemy_swimming, spr_enemy_walking);

	if x <= 0
	{
		direction = random_range(-45,45);
	}
	else if x >= room_width
	{
		direction = random_range(135,225);
	}

	if y <= 0
	{
		direction = random_range(225,315);
	}
	else if y >= room_height
	{
		direction = random_range(45,135);
	}

	image_angle = direction;
	speed = random_range(1,5);
	image_xscale = 0.75;
	image_yscale = 0.75;
	image_speed = 1;
}