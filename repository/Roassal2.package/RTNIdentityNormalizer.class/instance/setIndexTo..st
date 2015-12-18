private
setIndexTo: aColor
	"colorAsSymbol has to be one of Color colorNames. 
	The method set the current index to the color given in parameter"
	
	colorIndex := (self colors indexOf: aColor) - 1