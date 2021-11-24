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

if(place_meeting(x,y,obj_enemy01)){
	if(random(100) < 50){
		life--;
		audio_play_sound(playerHurt, 1, false);
	}
}

if(life <= 0) {
	room_restart();
}

if(mouse_check_button_pressed(mb_left)) {
	var firedArrow = instance_create_depth(x,y,1,obj_arrow);
	direction = point_direction(x,y,mouse_x,mouse_y);
	firedArrow.image_angle = direction;
	firedArrow.direction = direction;
	firedArrow.speed = 7;
}

if(instance_number(obj_enemy01) == 0) {
	if(room == room_last) {
		room_goto_previous();
	}else {
		room_goto_next();
	}
}
