/// @description Insert description here
// You can write your code in this editor
if inic == false{

	scr_texto();
	inic = true;

}

if keyboard_check_pressed(ord("F")) or gamepad_button_check_pressed(global.controle, gp_face1){

		if pag < ds_grid_height(texto_grid) - 1{
			pag++;	
	}else{
				global.diag = false;
				instance_destroy();
			}
	
}