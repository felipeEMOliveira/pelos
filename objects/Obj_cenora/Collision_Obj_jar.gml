/// @description Insert description here
// You can write your code in this editor
if (other.tdano == true){
var _dir = point_direction(x, y, other.x, other.y);

with (other){
	
knokb_dir = _dir;
state = scr_jar_hit;
alarm[2] = 10;
alarm[3] = 100;
tdano = false;
life -= 1;

	}
	
	var _inst = instance_create_layer(x, y, "Instances", obj_dano);
	_inst.alvo = other;
	_inst.danoc = 1;
	
}
