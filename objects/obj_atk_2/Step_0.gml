/// @description Insert description here
// You can write your code in this editor
if fim_da_animacao(){
		var _posi = 0;
		
		repeat(4){
			
			var _inst = instance_create_layer(x, y, "Instances", obj_boss_p);
			
			_inst.speed = 3;
			_inst.direction = _posi;
			
			_posi += 90;
			
		}
		instance_destroy();
}