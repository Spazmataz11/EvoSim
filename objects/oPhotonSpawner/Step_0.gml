/// @description Insert description here
// You can write your code in this editor
steps += 20;
if steps >= room_speed
{
steps = 0;
seconds += 1;
instance_create_depth(x,y,0,oPhoton);
}