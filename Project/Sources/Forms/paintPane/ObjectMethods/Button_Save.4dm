Case of 
	: (Form event code:C388=On Clicked:K2:4)
		  //C_BLOB($image_blob)
		  //C_TEXT($imageName_t)
		  //$imageName_t:=Request("Enter the image name")
		
		  //If (OK=1) & ($imageName_t#"")
		  //  //get the image data of the canvas element
		  //WA EXECUTE JAVASCRIPT FUNCTION(*;"WA_Canvas";"getData";$imageName_t)
		
		  //  //convert the image data string into a blob
		  //TEXT TO BLOB($imageName_t;$image_blob;UTF8 text without length)
		
		  //  //create a new record containing the image name and image data
		  //  //and save the record
		  //CREATE RECORD([Images])
		  //[Images]image_name:=$imageName_t
		  //[Images]image_data:=$image_blob
		  //SAVE RECORD([Images])
		  //End if 
		saveImage (True:C214)
End case 