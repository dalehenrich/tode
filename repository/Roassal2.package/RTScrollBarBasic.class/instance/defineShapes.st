as yet unclassified
defineShapes
"define shapes if scrollBar is horizontal vertical..."
	| start stop bar surroundingRectangle margeRectangle |
	
	
	"set bar shape"	
	(self barShape = #aBox) ifTrue: [ bar := TRBoxShape new ] ifFalse: [ bar := TREllipseShape new ].
	
	"bar is the shape to drag and drop, start ad stop are made to show the border of scroll Bar"
	(self orientation = #horizontal) ifTrue: [ 
		
		bar height: self width; width: self barWidth; color: (Color lightGray);  position: self fixedPosition; strokePaint: nil.
		start := TRBoxShape new color: Color lightGray; height:self width; width:2; position: (self fixedPosition x - (self size / 2) + 1)@(self fixedPosition y); strokePaint: nil.
		stop := TRBoxShape new color: Color lightGray; height:self width; width:2; position: (self fixedPosition x + (self size / 2) - 1)@(self fixedPosition y); strokePaint: nil. 
		
		"This shape is the the fill of the scroll bar"
		surroundingRectangle := TRBoxShape new fromRectangle: (Rectangle origin: (start encompassingRectangle origin) corner:(stop encompassingRectangle corner)); color: (Color gray alpha: 0.1); strokePaint: nil.
		"the margeRectangle handle the width/2 of the bar"
		margeRectangle := TRBoxShape new fromRectangle: (Rectangle origin: (surroundingRectangle encompassingRectangle origin + ((bar width /2)@0))corner: (surroundingRectangle encompassingRectangle corner - ((bar width /2)@0))); color: (Color gray alpha:0); strokePaint: nil .

	].

(self orientation = #vertical) ifTrue: [ 
		
		bar height: self barHeight; width: self width; color: (Color lightGray);  position: self fixedPosition; strokePaint: nil.
		start := TRBoxShape new color: Color lightGray; width:self width; height:2; position: (self fixedPosition x )@(self fixedPosition y - (self size / 2) + 1); strokePaint: nil.
		stop := TRBoxShape new color: Color lightGray; width:self width; height:2; position: (self fixedPosition x )@(self fixedPosition y + (self size / 2) - 1); strokePaint: nil.
		
		"This shape is the the fill of the scroll bar"
		surroundingRectangle := TRBoxShape new fromRectangle: (Rectangle origin: (start encompassingRectangle origin) corner:(stop encompassingRectangle corner)); color: (Color gray alpha: 0.1); strokePaint: nil.

		"the margeRectangle handle the width/2 of the bar"
		margeRectangle := TRBoxShape new fromRectangle: (Rectangle origin: (surroundingRectangle encompassingRectangle origin + (0@(bar height /2)))corner: (surroundingRectangle encompassingRectangle corner - (0@(bar height /2)))); color: (Color gray alpha:0); strokePaint: nil.
	].

	self shapes start: start; stop: stop; surroundingRectangle: surroundingRectangle; margeRectangle: margeRectangle; bar: bar.
	
	