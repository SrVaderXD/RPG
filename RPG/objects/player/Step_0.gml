/// @description Insert description here
// You can write your code in this editor

if(keyboard_check(ord("W")) && place_free(x,y-walkSpeed))  {
    y -= walkSpeed;
	image_speed = walkSpeed / 3;
	sprite_index = spr_player_up;
} else if(keyboard_check(ord("S")) && place_free(x,y+walkSpeed)) {
    y += walkSpeed;
	image_speed = walkSpeed / 3;
	sprite_index = spr_player_down;
}

if(keyboard_check(ord("A")) && place_free(x-walkSpeed,y)) {
    x -= walkSpeed;
	image_speed = walkSpeed / 3;
	sprite_index = spr_player_left;
} else if(keyboard_check(ord("D")) && place_free(x+walkSpeed,y)) {
    x+=walkSpeed;
	image_speed = walkSpeed / 3;
	sprite_index = spr_player_right;
} 

if(keyboard_check(vk_nokey)) {
	image_speed = 0;
	image_index = 0;
	walkSpeed = 3.5;
}

if(keyboard_check(vk_shift)) {
	walkSpeed = 6;
}


camera_set_view_pos(view_camera[0], x - view_wport[0]/2, y - view_hport[0]/2);
depth = -y;