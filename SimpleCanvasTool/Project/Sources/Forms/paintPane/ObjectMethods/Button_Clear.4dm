Case of 
	: (Form event code:C388=On Clicked:K2:4)
		  //call a the defined JavaScript method clearCanvas to clear the canvas
		WA EXECUTE JAVASCRIPT FUNCTION:C1043(*;"WA_Canvas";"clearCanvas";*)
		Form:C1466.new:=True:C214
		Form:C1466.imagePrimaryKey:=Null:C1517
		
		SET WINDOW TITLE:C213("Canvas Pane - New")
End case 