//%attributes = {"invisible":true}
  // ----------------------------------------------------
  // User name (OS): Add Komoncharoensiri
  // Date and time: 05-24-20, 14:52:18
  // ----------------------------------------------------
  // Method: jsSelectedImage
  // Description
  //     This method is executed when the user clicks on
  //
  // Parameters
  //    $1    -    image in base 64
  // ----------------------------------------------------

C_LONGINT:C283($1)
Form:C1466.image:=base64data_at{$1}
Form:C1466.imagePrimaryKey:=dataPrimaryKey_al{$1}
OBJECT SET ENABLED:C1123(*;"acceptImage";True:C214)
OBJECT SET ENABLED:C1123(*;"deleteImage";True:C214)