Case of 
	: (Form event code:C388=On Load:K2:1)
		OBJECT SET ENABLED:C1123(*;"acceptImage";False:C215)
		OBJECT SET ENABLED:C1123(*;"deleteImage";False:C215)
		
		WA SET PREFERENCE:C1041(*;"Web Area";WA enable JavaScript:K62:4;True:C214)
		
		  //Construct image grid in as HTML
		Form:C1466.htmlPath:=Get 4D folder:C485(Current resources folder:K5:16)+"Canvas"+Folder separator:K24:12+"temp.html"
		TEXT TO DOCUMENT:C1237(Form:C1466.htmlPath;generatePhotoGrid )
		
		SET TIMER:C645(30)  // allowing Web Area to completely loaded
		
	: (Form event code:C388=On Timer:K2:25)
		
		  // Load image grid in the Web Area
		WA OPEN URL:C1020(*;"Web Area";Form:C1466.htmlPath)
		
		OBJECT SET RESIZING OPTIONS:C1175(*;"Web Area";1;1)
		OBJECT SET SCROLLBAR:C843(*;"Web Area";False:C215;True:C214)
		
		SET TIMER:C645(0)
		
End case 
