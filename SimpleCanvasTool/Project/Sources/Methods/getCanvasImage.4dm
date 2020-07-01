//%attributes = {"invisible":true}
C_TEXT:C284($base64src_t)
C_BLOB:C604($picture_x)
C_PICTURE:C286($0;$picture_img)

WA EXECUTE JAVASCRIPT FUNCTION:C1043(*;"WA_Canvas";"getData";$base64src_t)
$base64src_t:=Delete string:C232($base64src_t;1;Length:C16("data:image/png;base64,"))

BASE64 DECODE:C896($base64src_t;$picture_x)
BLOB TO PICTURE:C682($picture_x;$picture_img)

$0:=$picture_img