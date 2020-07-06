//%attributes = {}
  // ----------------------------------------------------
  // Method: cvOpenPaintPane
  // Description
  //     Starts the demo by opening the form paintForm
  //
  // Parameters
  // ----------------------------------------------------

C_LONGINT:C283($1)
C_LONGINT:C283($winRef_l;$proc_l)

If (Count parameters:C259=0)
	$proc_l:=New process:C317(Current method name:C684;0;"Canvas";1)
Else 
	$winRef_l:=Open form window:C675("paintPane";8;Horizontally centered:K39:1;Vertically centered:K39:4)
	SET WINDOW TITLE:C213("Canvas Pane - New";$winRef_l)
	DIALOG:C40("paintPane")
	CLOSE WINDOW:C154($winRef_l)
End if 