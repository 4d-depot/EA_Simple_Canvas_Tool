OBJECT SET ENABLED:C1123(*;"acceptImage";False:C215)
OBJECT SET ENABLED:C1123(*;"deleteImage";False:C215)
$image_o:=ds:C1482.Image.get(Form:C1466.imagePrimaryKey)
$status:=$image_o.drop()
If ($status.success=False:C215)
	ALERT:C41("Unable to delete this image")
Else 
	Form:C1466.html:=generatePhotoGrid 
	SET TIMER:C645(10)  // allowing Web Area to completely loaded
End if 