  //Adjust the size of all the thumbnails displayed in the Web area

C_TEXT:C284($newPicSize_t)
$newPicSize_t:=String:C10(Form:C1466.zoom)+"px"
WA EXECUTE JAVASCRIPT FUNCTION:C1043(*;"Web Area";"changeCss";*;".thumb";"maxWidth";$newPicSize_t)
WA EXECUTE JAVASCRIPT FUNCTION:C1043(*;"Web Area";"changeCss";*;".thumb";"maxHeight";$newPicSize_t)
WA EXECUTE JAVASCRIPT FUNCTION:C1043(*;"Web Area";"changeCss";*;".selectedThumb";"maxWidth";$newPicSize_t)
WA EXECUTE JAVASCRIPT FUNCTION:C1043(*;"Web Area";"changeCss";*;".selectedThumb";"maxHeight";$newPicSize_t)
