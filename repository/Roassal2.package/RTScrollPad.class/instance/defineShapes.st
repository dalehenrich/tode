as yet unclassified
defineShapes
	|  bar surroundingRectangle margeRectangle |
	
	
	"set bar shape"	
	(self barShape = #aBox) ifTrue: [ bar := TRBoxShape new ] ifFalse: [ bar := TREllipseShape new ].
	
	"bar is the shape to drag and drop"
	bar height: self barHeight; width: self barWidth; color: (Color lightGray);  position: self fixedPosition; strokePaint: nil.
		
	"This shape is the the fill of the scroll pad"
	surroundingRectangle := TRBoxShape new fromRectangle: (Rectangle origin: (self fixedPosition x - (self size / 2)) @ (self fixedPosition y - (self size / 2)) corner:(self fixedPosition x + (self size / 2)) @ (self fixedPosition y + (self size / 2))); color: (Color gray alpha: 0.1); strokePaint: nil.
	
	"the margeRectangle handle the width/2 of the bar"
	margeRectangle := TRBoxShape new fromRectangle: (Rectangle origin: (surroundingRectangle encompassingRectangle origin + ((bar width /2)@(bar height /2)))corner: (surroundingRectangle encompassingRectangle corner - ((bar width /2)@(bar height /2)))); color: (Color gray alpha:0); strokePaint: nil .

	self shapes surroundingRectangle: surroundingRectangle; margeRectangle: margeRectangle; bar: bar.
	
	