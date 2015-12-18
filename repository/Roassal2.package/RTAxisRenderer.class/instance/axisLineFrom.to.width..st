rendering
axisLineFrom: aPositionFrom to: aPositionTo width: numberOfPixels
	"Add the lines, with a width of numberOfPixels"
	| edge ex2 ex1 |		
	ex1 := (RTBox new size: 0) element.
	ex2 := (RTBox new size: 0) element.
	ex2 translateTo: (aPositionTo).
	ex1 translateTo: (aPositionFrom).
	edge := (RTLine new color: config color; width: numberOfPixels) edgeFrom: ex1 to: ex2.
	self addToView: ex1; addToView: ex2.
	self addToView: edge