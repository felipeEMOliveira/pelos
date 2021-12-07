// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function scr_coli (){
	
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

}

function scr_distancia_jar(){

if ( distance_to_object(Obj_jar) ) <= dist_ag {
	
	estado = scr_ag;
	
}
	
}

function scr_estado_chosse(){
scr_distancia_jar();
p_estado = choose( scr_estado_andando, scr_estado_parado);

if ( p_estado == scr_estado_andando) {

estado = scr_estado_andando;
dest_x = irandom_range (0, room_width);
dest_x = irandom_range (0, room_height);

}

else if (p_estado == scr_estado_parado) {

estado = scr_estado_parado;
	
}




}

function scr_estado_parado(){
	scr_distancia_jar();
	image_speed = 1;
	
	if distance_to_point(dest_x, dest_y) > v{
	var _dir = point_direction(x, y, dest_x, dest_y);
	vho = lengthdir_x(v, _dir);
	vve = lengthdir_y(v, _dir);
	}
	else{
	x = dest_x;
	y = dest_y;
	}
	
	
	scr_coli ()
	
}

function scr_estado_andando(){
	scr_distancia_jar();
	image_speed = 0;
	
}
	
function scr_ag(){

image_speed = 1.5;

dest_x = Obj_jar.x;
dest_y = Obj_jar.y;

var _dir = point_direction(x, y, dest_x, dest_y);
vho = lengthdir_x(v_perse, _dir);
vve = lengthdir_y(v_perse, _dir);

scr_coli ()


if distance_to_object(Obj_jar) >= dist_iag{
	
	estado = scr_estado_chosse;
	alarm[0] = irandom_range(130, 150);
}
}
	
function scr_hit_cenoura(){
			
			alarm[2] = 180;
			
			knok_v = lerp(knok_v, 0, 0.05);
			
			vho = lengthdir_x(knok_v, knok_dir);
			vve = lengthdir_y(knok_v, knok_dir);
			
			scr_coli ();
	}