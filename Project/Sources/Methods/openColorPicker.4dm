//%attributes = {"invisible":true}
  // ----------------------------------------------------
  // User name (OS): Add Komoncharoensiri
  // Date and time: 05-27-20, 10:39:07
  // ----------------------------------------------------
  // Method: openColorPicker
  // Description
  //     Open the color picker
  //
  // Parameters
  //   $1   -   Current selected color
  //
  // Return
  //    $0   -   Selected color
  // ----------------------------------------------------

C_LONGINT:C283($0;$1;selectedColor_l)
If (Count parameters:C259>=1)
	selectedColor_l:=$1
Else 
	selectedColor_l:=0x0000
End if 

C_LONGINT:C283($x;$y;$mouseButton)
GET MOUSE:C468($x;$y;$mouseButton;*)

If (Folder separator:K24:12="\\")
	$win_l:=Open window:C153($x;$y;$x+189;$y+225;Modal dialog box:K34:2)
Else 
	$win_l:=Open window:C153($x;$y;$x+189;$y+225;Pop up form window:K39:11)
End if 
DIALOG:C40("colorPicker")
CLOSE WINDOW:C154($win_l)

$0:=selectedColor_l