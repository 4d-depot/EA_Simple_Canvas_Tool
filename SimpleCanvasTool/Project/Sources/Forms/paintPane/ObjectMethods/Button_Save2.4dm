Case of 
	: (Form event code:C388=On Clicked:K2:4)
		C_PICTURE:C286($pic_img)
		C_TEXT:C284($fileName_t)
		
		$fileName_t:=Select document:C905(System folder:C487(Desktop:K41:16);".png";"Export Canvas Image";File name entry:K24:17)
		If (OK=1)
			$pic_img:=getCanvasImage 
			WRITE PICTURE FILE:C680(document;$pic_img)
		End if 
End case 