//createBoard(size,type)
size= argument0;
type = argument1;
var newBoard = instance_create_depth(x,y,-5,objBoard);
newBoard.size = size;
newBoard.boardType = type;
show_debug_message("board made");
return newBoard;