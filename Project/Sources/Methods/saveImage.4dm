//%attributes = {"invisible":true}
  // ----------------------------------------------------
  // Method: saveImage
  // Description
  //     Save the image to the [Image] table
  //
  // Parameters
  //    $1   -   True if Save as
  // ----------------------------------------------------

C_BOOLEAN:C305($1;$saveAs_b)
C_TEXT:C284($base64src_t;$imageName_t)
C_OBJECT:C1216($image_o;$status_o)
C_BLOB:C604($imageBlob_x)

If (Count parameters:C259>=1)
	$saveAs_b:=$1
End if 

WA EXECUTE JAVASCRIPT FUNCTION:C1043(*;"WA_Canvas";"getData";$base64src_t)

If (Form:C1466.new) | ($saveAs_b)
	
	$imageName_t:=Request:C163("Enter the image name")
	If (OK=1) & ($imageName_t#"")
		
		$image_o:=ds:C1482.Image.new()
		$image_o.name:=$imageName_t
		$image_o.base64data:=$base64src_t
		$status_o:=$image_o.save()
		If ($status_o.success=False:C215)
			ALERT:C41("Unable to save this record")
		Else 
			Form:C1466.imagePrimaryKey:=$image_o.getKey()
			SET WINDOW TITLE:C213("Canvas Pane - "+$imageName_t)
		End if 
	End if 
Else 
	
	$image_o:=ds:C1482.Image.get(Form:C1466.imagePrimaryKey)
	$image_o.base64data:=$base64src_t
	$status_o:=$image_o.save()
	If ($status_o.success=False:C215)
		ALERT:C41("Unable to save this record")
	End if 
End if 