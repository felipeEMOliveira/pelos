/// @description Insert description here
// You can write your code in this editor
var _nslot = gamepad_get_device_count();

for (var _i = 0; _i < _nslot; _i++){
	
	if (gamepad_is_connected(_i)){
		
		global.controle = _i;	
		
	}
	
}

if instance_exists(obj_dialogo){
	global.diag = true;
}