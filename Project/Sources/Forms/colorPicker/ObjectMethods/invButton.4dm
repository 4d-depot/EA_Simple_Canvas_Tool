C_TEXT:C284(lastSelectedObject_t)
Case of 
	: (Form event code:C388=On Mouse Move:K2:35)
		C_LONGINT:C283($x;$y;$mouseButton;$size_l)
		GET MOUSE:C468($x;$y;$mouseButton)
		$size_l:=Size of array:C274(coordLeft_al)
		For ($i;1;$size_l)
			If (coordLeft_al{$i}<=$x) & ($x<=coordRight_al{$i}) & (coordTop_al{$i}<=$y) & ($y<=coordBottom_al{$i}) & (recName_at{$i}="Rect@")
				OBJECT SET COORDINATES:C1248(*;"SelectedRect";coordLeft_al{$i};coordTop_al{$i};coordRight_al{$i};coordBottom_al{$i})
				lastSelectedObject_t:=recName_at{$i}
				$i:=$size_l+1
			End if 
		End for 
		
	: (Form event code:C388=On Clicked:K2:4)
		C_LONGINT:C283($foreground_l)
		OBJECT GET RGB COLORS:C1074(*;lastSelectedObject_t;$foreground_l;selectedColor_l)
		ACCEPT:C269
		
End case 