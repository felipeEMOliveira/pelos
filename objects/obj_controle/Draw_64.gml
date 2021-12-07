/// @description Insert description here
// You can write your code in this editor
var _esca = 4;
var _guia = display_get_gui_height();
var _spra = sprite_get_height(spr_hud_vida) * _esca;
var _huda = _guia - _spra;

var _vida = Obj_jar.life;
var _mvida = Obj_jar.m_life[Obj_jar.lvl];

var _vigor = Obj_jar.vigor;
var _mvigor =  Obj_jar.m_vigor[Obj_jar.lvl];

var _xp = Obj_jar.xp
var _mxp = Obj_jar.m_xp[Obj_jar.lvl];

var _xpa = sprite_get_height(spr_hud_xp);

draw_sprite_ext(spr_hud_vida, 0, 0, _huda, _esca, _esca, 0, c_white, 1);
draw_sprite_ext(spr_hud_barra_vida, 0, 0, _huda, (_vida/_mvida)* _esca, _esca, 0, c_white, 1);
draw_sprite_ext(spr_hud_barra_estamina, 0, 0, _huda + 32, (_vigor/_mvigor)* _esca, _esca, 0, c_white, 1);

draw_sprite_ext(spr_hud_xp, 0, 0, _guia - _xpa, _esca, _esca, 0, c_white, 1);
draw_sprite_ext(spr_hud_exp_barra, 0, 4, _guia - _xpa + 12, (_xp/_mxp) * _esca, _esca, 0, c_white, 1);

var _gl = display_get_gui_width();
if instance_exists(obj_boss_1){
	
	var _sprw = sprite_get_width(spr_boss_hud) * _esca;
	
	draw_sprite_ext(spr_boss_hud, 0, _gl/2 - _sprw/2, 100, _esca, _esca, 0, c_white, 1);
	draw_sprite_ext(spr_boss_vida, 0, _gl/2 - _sprw/2, 100, obj_boss_1.vidab/obj_boss_1.m_vidab * _esca, _esca, 0, c_white, 1);

}

