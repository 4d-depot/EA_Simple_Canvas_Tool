//%attributes = {"invisible":true}
  // ----------------------------------------------------
  // Method: setCanvasDrawingTool
  // Description
  //     Calls the canvas to change the draw tool
  //
  // Parameters
  //     $1   -   "erase", "line", "rect", "circle", "rectFill", "circleFill", or "pencil"
  // ----------------------------------------------------

C_TEXT:C284($1)
WA EXECUTE JAVASCRIPT FUNCTION:C1043(*;"WA_Canvas";"changeDrawTool";*;$1)
