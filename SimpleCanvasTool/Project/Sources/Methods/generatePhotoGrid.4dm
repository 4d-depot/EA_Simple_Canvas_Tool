//%attributes = {"invisible":true}
  // ----------------------------------------------------
  // Method: generatePhotoGrid
  // Description
  //     Returns the processed HTML photo grid page
  //
  // ----------------------------------------------------

C_TEXT:C284($0;$htmlResult_t;$path_t;$htmlTemplate_t)
C_OBJECT:C1216($images_o;$image_o)
C_LONGINT:C283($i)

$images_o:=ds:C1482.Image.all()

$path_t:=Get 4D folder:C485(Current resources folder:K5:16)+"Canvas"+Folder separator:K24:12+"photos.html"

If (Test path name:C476($path_t)=Is a document:K24:1)
	$htmlTemplate_t:=Document to text:C1236($path_t)
	
	  //Create an array the size of the number of selected records
	$total_rec_l:=$images_o.length
	ARRAY TEXT:C222(base64data_at;$total_rec_l)
	ARRAY LONGINT:C221(dataPrimaryKey_al;$total_rec_l)
	
	For each ($image_o;$images_o)
		$i:=$i+1
		base64data_at{$i}:=$image_o.base64data
		dataPrimaryKey_al{$i}:=$image_o.getKey()
	End for each 
	
	  //Process the 4D HTML tags in photos.html
	PROCESS 4D TAGS:C816($htmlTemplate_t;$htmlResult_t)
	
End if 


  //Return the processed HTML page
$0:=$htmlResult_t