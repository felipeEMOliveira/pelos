/// @description Insert description here
// You can write your code in this editor
if inic == true {
var _guil = display_get_gui_width();
var _guia = display_get_gui_height();


var _xx = 0;
var _yy = _guia - 200;
var _c = c_black;
var _spr = texto_grid[# Info.retrato, pag ];


draw_set_font(fnt_diag);
if texto_grid[# Info.lado, pag] == 0{
	
draw_rectangle_color(_xx + 200, _yy, _guil, _guia, _c, _c, _c, _c, false);
draw_text_ext(_xx + 232, _yy + 32, texto_grid[# Info.texto, pag], 32, _guil - 264);
draw_sprite_ext(_spr, 0, 150, _guia, 3, 3, 0, c_white, 1);
draw_set_font(Fnt_dano);
}else{
	
	draw_rectangle_color(_xx, _yy, _guil -200, _guia, _c, _c, _c, _c, false);
draw_text_ext(_xx + 32, _yy + 32, texto_grid[# Info.texto, pag], 32, _guil - 264);
draw_sprite_ext(_spr, 0, 100, _guia, -3, 3, 0, c_white, 1);
draw_set_font(Fnt_dano);
}
}