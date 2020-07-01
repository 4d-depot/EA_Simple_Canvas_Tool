//%attributes = {"invisible":true}
  // ----------------------------------------------------
  // Method: setCanvasStroke
  // Description
  //     Set the Line/Stroke Width
  //
  // Parameters
  //    $1   -   from 1-10
  // ----------------------------------------------------

C_LONGINT:C283($1)
WA EXECUTE JAVASCRIPT FUNCTION:C1043(*;"WA_Canvas";"changeStrokeWidth";*;String:C10($1))
