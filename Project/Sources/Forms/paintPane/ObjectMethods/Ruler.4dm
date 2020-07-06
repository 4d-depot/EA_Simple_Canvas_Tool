If (Form event code:C388=On Load:K2:1)
	Form:C1466.stroke:=1
Else 
	OBJECT SET VISIBLE:C603(*;"strokeBar@";False:C215)
	OBJECT SET VISIBLE:C603(*;"strokeBar"+String:C10(Form:C1466.stroke);True:C214)
	setCanvasStroke (Form:C1466.stroke)
End if 

