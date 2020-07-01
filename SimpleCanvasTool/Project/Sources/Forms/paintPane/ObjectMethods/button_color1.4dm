Case of 
	: (Form event code:C388=On Clicked:K2:4)
		C_LONGINT:C283($rgbColor_l)
		$rgbColor_l:=Select RGB color:C956($rgbColor_l)
		OBJECT SET RGB COLORS:C628(*;"colorRect";$rgbColor_l;$rgbColor_l)
		WA EXECUTE JAVASCRIPT FUNCTION:C1043(*;"WA_Canvas";"changeColor";*;convertIntToHex ($rgbColor_l))
End case 