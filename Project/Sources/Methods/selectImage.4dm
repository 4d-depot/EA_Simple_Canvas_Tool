//%attributes = {"invisible":true}
  // ----------------------------------------------------
  // Method: selectImage
  // Description
  //      Open selectImage form to display all saved images in Images table
  //
  // ----------------------------------------------------

C_LONGINT:C283($winRef_l)
C_OBJECT:C1216($data_o)

$data_o:=New object:C1471

$winRef_l:=Open form window:C675("selectImage";Sheet form window:K39:12)
DIALOG:C40("selectImage";$data_o)
CLOSE WINDOW:C154($winRef_l)

If (OK=1)  // The user select an image
	
	Form:C1466.imagePrimaryKey:=$data_o.imagePrimaryKey
	
	  // Load the selected image in the Canvas
	WA EXECUTE JAVASCRIPT FUNCTION:C1043(*;"WA_Canvas";"loadImage";*;$data_o.image)
	Form:C1466.new:=False:C215
	$image_o:=ds:C1482.Image.get(Form:C1466.imagePrimaryKey)
	SET WINDOW TITLE:C213("Canvas Pane - "+$image_o.name)
	
	setCanvasSize ($width_l;$height_l)
	
End if 