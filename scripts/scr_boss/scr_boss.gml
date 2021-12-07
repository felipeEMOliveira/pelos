// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_boss_esco(){

	if alarm [0] <=  0 {
		
		var _atk = choose (scr_boss_atk1, scr_boss_atk2);
		estadob = _atk;
		alarm[0] = 240;
	}

}


function scr_boss_atk1(){
	
	var _posi  = 0;
	
	repeat(8){
		var _inst =	instance_create_layer(x, y, "Instances", obj_boss_p);	
		_inst.speed = 2;
		_inst.direction = _posi;
		
		_posi += 45;
	}
	
		_posi = 0;
	
		repeat(8){
		var _inst =	instance_create_layer(x, y, "Instances", obj_boss_p);	
		_inst.speed = 2;
		_inst.direction = _posi;
		
		_posi = ( _posi + 45 ) / 1.5 ;
	}
	
	estadob = scr_boss_esco;
}


function scr_boss_atk2(){

	var _n = choose(2, 3, 4, 6);

	repeat(_n){
	
		var _xx = irandom_range(x - 100, x + 100);
		var _yy = irandom_range(y - 100, y + 100);
		
		instance_create_layer(_xx, _yy, "Instances", obj_atk_2);
	
	}
	estadob = scr_boss_esco;
}

function scr_boss_ap(){

}