function Scr_jar_movie(){

gamepad_set_axis_deadzone(global.controle, 0.50);

dir = keyboard_check(ord("D")) or gamepad_axis_value(global.controle, gp_axislh) > 0.25 or gamepad_button_check(global.controle, gp_padr);
cim = keyboard_check(ord("W")) or gamepad_axis_value(global.controle, gp_axislv) < -0.25 or gamepad_button_check(global.controle, gp_padu); 
esq = keyboard_check(ord("A")) or gamepad_axis_value(global.controle, gp_axislh) < -0.25 or gamepad_button_check(global.controle, gp_padl);
bai = keyboard_check(ord("S")) or gamepad_axis_value(global.controle, gp_axislv) > 0.25 or gamepad_button_check(global.controle, gp_padd);


vho = (dir - esq);
vve = (bai - cim);

spdposi = point_direction(x, y, x + vho, y + vve);

if (vho != 0 or vve != 0){
	spd = 2;	
}

else {
	spd = 0;	
}

vho = lengthdir_x(spd, spdposi);
vve = lengthdir_y(spd, spdposi);

if place_meeting(x + vho, y, Obj_parede){
while !place_meeting(x + sign(vho), y, Obj_parede){
x += sign(vho);
}

vho = 0;

}

x += vho;



if place_meeting(x, y + vve, Obj_parede){
while !place_meeting(x, y + sign(vve), Obj_parede){
y += sign(vve);
}

vve = 0;

}

y += vve;

if (gamepad_is_connected(global.controle)){
	
	if (gamepad_axis_value(global.controle, gp_axislh) != 0 or gamepad_axis_value(global.controle, gp_axislv)){
		
	posi = floor ((point_direction(x, y, x + gamepad_axis_value(global.controle, gp_axislh), y + gamepad_axis_value(global.controle, gp_axislv)) +45) /90);
	
	}
}else{
	
posi = floor ((point_direction(x, y, mouse_x, mouse_y) +45) /90);

}

if ( vho == 0 and vve == 0){

switch posi{
default: 
sprite_index = spr_parado_esq;
image_xscale = -1;
break;
case 1:
sprite_index = Spr_parado_costa;
break;
case 2:
sprite_index = spr_parado_esq;
image_xscale = 1;
break;
case 3:
sprite_index = spr_parado;
break;
}

}

else{

switch posi{
default: 
sprite_index = Spr_andor_esq;
image_xscale = -1;
break;
case 1:
sprite_index = Spr_andor_costa;
break;
case 2:
sprite_index = Spr_andor_esq;
image_xscale = 1;
break;
case 3:
sprite_index = spr_andor_frente;
break;
}
	
}
if (vigor >= 10) {
	
//roll_ppso

if mouse_check_button_pressed(mb_right) or gamepad_button_check_pressed(global.controle, gp_face2){
vigor -= 10;
alarm[0] = 9;

alarm[1] = 191;









if (gamepad_is_connected(global.controle)){
	
	if (gamepad_axis_value(global.controle, gp_axislh) != 0 or gamepad_axis_value(global.controle, gp_axislv)){
		
	roll_ppso = (point_direction(x, y, x + gamepad_axis_value(global.controle, gp_axislh), y + gamepad_axis_value(global.controle, gp_axislv)) );
	
	}
}else{
	
roll_ppso = (point_direction(x, y, mouse_x, mouse_y) );

}









state = scr_jar_roll;

}
}

#region atk

if (mouse_check_button_pressed(mb_left)  or gamepad_button_check_pressed(global.controle, gp_shoulderrb))
		{
	

	
			if arma == Arma.melle{
	
	image_index = 0;
	switch posi{
default: 
sprite_index = spr_personagem_atacando_esquerda;
image_xscale = -1;
break;
case 1:
sprite_index = spr_personagem_atacando_cima;
break;
case 2:
sprite_index = spr_personagem_atacando_esquerda;
image_xscale = 1;
break;
case 3:
sprite_index = spr_personagem_atacando_baixo;
break;
}

#endregion

			state = scr_jar_atk;
			
			}else if (arma == Arma.ranged){
				
				image_index = 0;
				
				state = scr_jar_renged;
				
			}
			
	
}

}

function scr_jar_roll(){
	
	
	vho = lengthdir_x(roll_spd, roll_ppso);
	vve = lengthdir_y(roll_spd, roll_ppso);
	
	scr_coli ()


	var _inst = instance_create_layer(x, y, "Instances", Obj_ROLL);
	
	_inst.sprite_index = sprite_index;
	
}

function scr_jar_atk(){
	if (image_index)  >= 1{
		
	if (atke == false){
	
	
	switch posi{
default: 
	instance_create_layer(x+10, y, "Instances", Obj_jar_hitbox);

break;
case 1:
instance_create_layer(x, y-10, "Instances", Obj_jar_hitbox);
break;
case 2:
instance_create_layer(x-10, y, "Instances", Obj_jar_hitbox);

break;
case 3:
instance_create_layer(x, y+10, "Instances", Obj_jar_hitbox);
break;
}

	atke = true;
	}
	
	}
	
	if fim_da_animacao(){
		
		state = Scr_jar_movie;
		atke = false;
		
	}
	
}
	
function scr_jar_hit(){
	
	if (alarm[2] > 0){
	
	vho = lengthdir_x(3, knokb_dir);
	vve = lengthdir_y(3, knokb_dir);
	
	scr_coli();
	}else{
	 state = Scr_jar_movie;
	}
	
	}
	
function scr_jar_renged(){
	

		posi = floor ((point_direction(x, y, mouse_x, mouse_y) +45) /90);

	switch posi{
default: 
 sprite_index = spr_personagem_arco_esquerda;
 image_xscale = -1;
break;
case 1:
sprite_index =  spr_personagem_arco_cima;
break;
case 2:
sprite_index =  spr_personagem_arco_esquerda;
image_xscale = 1;
break;
case 3:
sprite_index =  spr_personagem_arco_baixo;
break;
}
	
	if (fim_da_animacao){
		
		image_index = 4;
		
	}
	if (mouse_check_button_released(mb_left)){
	
		if(image_index >= 4){
			
			var _dir = point_direction(x, y, mouse_x, mouse_y);
			var _xx = lengthdir_x(5, _dir);
			var _yy = lengthdir_y(5, _dir);
			
			var _inst = instance_create_layer(x + _xx, y + _yy, "Instances", obj_flecha);
			
			_inst.direction = _dir;
			_inst.image_angle = _dir;
			_inst.speed = 12;
			
			state = Scr_jar_movie;
			
			}else{
		
				state = Scr_jar_movie;
		
		}
	}
}