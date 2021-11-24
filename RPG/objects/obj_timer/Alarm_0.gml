/// @description Insert description here
// You can write your code in this editor

if(instance_number(obj_enemy01) <= 40) {
	instance_create_depth(irandom_range(56, room_width - 56), irandom_range(56, room_height- 56), -1, obj_enemy01);
}
alarm[0] = irandom_range(60,90)