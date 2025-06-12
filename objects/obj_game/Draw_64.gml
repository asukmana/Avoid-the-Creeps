draw_set_halign(fa_center);
draw_set_valign(fa_middle);

if on_start
{
	draw_text(room_width / 2, 30, player_score);
	//draw_text(room_width / 2, room_height / 2, "Get ready");
}
else
{
	draw_text(room_width / 2, 30, player_score);
	draw_text(room_width / 2, room_height / 2, "Get ready");
}

//reset alignment
draw_set_halign(fa_left);
draw_set_valign(fa_top);
