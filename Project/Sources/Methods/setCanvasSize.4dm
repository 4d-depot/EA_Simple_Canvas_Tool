//%attributes = {"invisible":true}
C_LONGINT:C283($1;$width_l;$2;$height_l)
$width_l:=$1
$height_l:=$2
WA EXECUTE JAVASCRIPT FUNCTION:C1043(*;"WA_Canvas";"resizeCanvas";*;String:C10($width_l);String:C10($height_l))
