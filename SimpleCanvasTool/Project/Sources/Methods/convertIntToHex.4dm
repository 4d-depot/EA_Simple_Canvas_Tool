//%attributes = {"invisible":true}
  // ----------------------------------------------------
  // Method: convertIntToHex
  // Description
  //    Convert a decimal color code to hex color code
  //
  // Parameters
  //     $1 (Longint) - RGB value represented in integer form
  //     $0 (Text)    - Returns a hex represented string
  // ----------------------------------------------------

If (Count parameters:C259=1)
	C_LONGINT:C283($1)
	C_TEXT:C284($0;$hexVal)
	
	$hexVal:=Replace string:C233(String:C10($1;"&$");"$";"")
	
	While (Length:C16($hexVal)<6)
		$hexVal:="0"+$hexVal
	End while 
	
	$0:="#"+$hexVal
	
End if 