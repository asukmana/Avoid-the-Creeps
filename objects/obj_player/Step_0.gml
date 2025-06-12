#region set player movement and animation
if keyboard_check(vk_up)
{
	motion_set(90, player_speed);
	image_speed = 1;
}
else if keyboard_check_released(vk_up)
{
    motion_set(90, 0);
	image_speed = 0;
}

if keyboard_check(vk_left)
{
	motion_set(180, player_speed);
	sprite_index = spr_player_walk;
	image_xscale = -0.5;
	image_speed = 1;
}
else if keyboard_check_released(vk_left)
{
	motion_set(180, 0);
	sprite_index = spr_player_up;
	image_xscale = 0.5;
	image_speed = 0;
}

if keyboard_check(vk_down)
{
	motion_set(270, player_speed);
	image_speed = 1;
}
else if keyboard_check_released(vk_down)
{
	motion_set(270, 0);
	image_speed = 0;
}

if keyboard_check(vk_right)
{
	motion_set(0, player_speed);
	sprite_index = spr_player_walk;
	image_speed = 1;
}
else if keyboard_check_released(vk_right)
{
	motion_set(0, 0);
	sprite_index = spr_player_up;
	image_speed = 0;
}

if (keyboard_check(vk_up) && keyboard_check(vk_left))
{
	motion_set(135, player_speed * 0.707);
	image_speed = 1;
}
else if (keyboard_check_released(vk_up) && keyboard_check_released(vk_left))
{
    motion_set(135, 0);
	image_speed = 0;
}

if (keyboard_check(vk_up) && keyboard_check(vk_right))
{
	motion_set(45, player_speed * 0.707);
	image_speed = 1;
}
else if (keyboard_check_released(vk_up) && keyboard_check_released(vk_right))
{
    motion_set(45, 0);
	image_speed = 0;
}

if (keyboard_check(vk_down) && keyboard_check(vk_left))
{
	motion_set(225, player_speed * 0.707);
	image_speed = 1;
}
else if (keyboard_check_released(vk_up) && keyboard_check_released(vk_left))
{
    motion_set(225, 0);
	image_speed = 0;
}

if (keyboard_check(vk_down) && keyboard_check(vk_right))
{
	motion_set(315, player_speed * 0.707);
	image_speed = 1;
}
else if (keyboard_check_released(vk_down) && keyboard_check_released(vk_right))
{
    motion_set(315, 0);
	image_speed = 0;
}

var player_distance = point_distance(x,y,mouse_x,mouse_y);
if player_distance > 5 and mouse_check_button(mb_left)
{
	direction = point_direction(x,y,mouse_x,mouse_y);
	speed = player_speed;
	image_speed = 1;
}
else
{
	speed = 0;
	image_speed = 0;
}


#endregion

//clamp player movement
x = clamp(x, player_width / 2 , room_width - player_width / 2);
y = clamp(y, player_height / 2, room_height - player_height / 2);

//if mouse_check_button_pressed(mb_left)
//{
//	instance_create_layer(x,y,"Instances",obj_bullet);
//	audio_play_sound(snd_shoot, 0, false, 1, 0, random_range(0.8, 1.2));
//}