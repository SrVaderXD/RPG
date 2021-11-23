/// @description Insert description here
// You can write your code in this editor

var life = player.life;

var barX = 20;
var barY = 20;
var barWidth = barX + ((life/100) * 150);
var barWidhtRed = barX + 150;
var barHeight = barY + 25;

draw_set_color(c_red);
draw_rectangle(barX, barY, barWidhtRed, barHeight ,0);

draw_set_color(c_green);
draw_rectangle(barX, barY, barWidth, barHeight ,0);

draw_set_color(c_white);
draw_rectangle(barX, barY, barWidhtRed, barHeight ,1);