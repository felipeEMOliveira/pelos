// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_texto(){
		
			switch npc_nome{
			
			case "placa":
				ds_grid_add_text("primeiro sinal", marrolas, 0, "personagem 1");
				ds_grid_add_text("segundo sinal", marrolas_brothers, 0, "personagem 1");
			break;
				
			}
			
}

function ds_grid_add_row(){

	var _grid = argument[0];
	ds_grid_resize(_grid,ds_grid_width(_grid),ds_grid_height(_grid)+1);
	return(ds_grid_height(_grid)-1);
	
}

function ds_grid_add_text(){

	var _grid = texto_grid;
	var _y = ds_grid_add_row(_grid);
 
	_grid[# 0, _y] = argument[0];
	_grid[# 1, _y] = argument[1];
	_grid[# 2, _y] = argument[2];
	_grid[# 3, _y] = argument[3];
}