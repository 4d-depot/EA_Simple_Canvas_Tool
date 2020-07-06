C_LONGINT:C283($rgbColor_l)
Case of 
	: (Form event code:C388=On Load:K2:1)
		$rgbColor_l:=0
		OBJECT SET RGB COLORS:C628(*;"colorRect";$rgbColor_l;$rgbColor_l)
		
	: (Form event code:C388=On Clicked:K2:4)
		$rgbColor_l:=openColorPicker 
		OBJECT SET RGB COLORS:C628(*;"colorRect";$rgbColor_l;$rgbColor_l)
		WA EXECUTE JAVASCRIPT FUNCTION:C1043(*;"WA_Canvas";"changeColor";*;convertIntToHex ($rgbColor_l))
		
End case 