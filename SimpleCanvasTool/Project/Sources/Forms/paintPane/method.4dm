Case of 
	: (Form event code:C388=On Load:K2:1)
		Form:C1466.new:=True:C214
		Form:C1466.imagePrimaryKey:=Null:C1517
		Form:C1466.stroke:="1"
		
		  //get path to canvas.html file and convert path to posix
		$path_t:=Convert path system to POSIX:C1106(Get 4D folder:C485(Current resources folder:K5:16)\
			+"Canvas"+Folder separator:K24:12+"canvas.html")
		  //open html file in web area
		WA OPEN URL:C1020(*;"WA_Canvas";"file:///"+$path_t)
		
	: (Form event code:C388=On Resize:K2:27)
		GET MOUSE:C468($x;$y;$m)
		Form:C1466.mouse:=$m
		SET TIMER:C645(10)
	: (Form event code:C388=On Timer:K2:25)
		GET MOUSE:C468($x;$y;$m)
		If (Form:C1466.mouse=1) & ($m=0)
			
			C_LONGINT:C283($left;$top;$right;$bottom)
			C_LONGINT:C283($width;$height)
			OBJECT GET COORDINATES:C663(*;"WA_Canvas";$left;$top;$right;$bottom)
			$width:=$right-$left
			$height:=$bottom-$top
			setCanvasSize ($width;$height)  //call javascript function to handle canvas element on resize
			
			Form:C1466.mouse:=0
			SET TIMER:C645(0)
		End if 
End case 