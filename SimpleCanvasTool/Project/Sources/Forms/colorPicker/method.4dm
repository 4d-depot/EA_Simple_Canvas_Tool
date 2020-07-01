ARRAY TEXT:C222(recName_at;0)
FORM GET OBJECTS:C898(recName_at)

$size_l:=Size of array:C274(recName_at)
ARRAY LONGINT:C221(coordLeft_al;$size_l)
ARRAY LONGINT:C221(coordTop_al;$size_l)
ARRAY LONGINT:C221(coordRight_al;$size_l)
ARRAY LONGINT:C221(coordBottom_al;$size_l)
For ($i;1;$size_l)
	If (recName_at{$i}="rect@")
		OBJECT GET COORDINATES:C663(*;recName_at{$i};$l;$t;$r;$b)
		coordLeft_al{$i}:=$l
		coordTop_al{$i}:=$t
		coordRight_al{$i}:=$r
		coordBottom_al{$i}:=$b
	End if 
End for 