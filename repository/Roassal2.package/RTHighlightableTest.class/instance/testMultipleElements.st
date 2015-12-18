tests
testMultipleElements
	| box1 box2 |
	box1 := (RTBox new color: Color green) element.
	box2 := (RTBox new color: Color red) element.
	
	box1 @ (RTHighlightable highlightElements: [ :e | Array with: box2 ]).
	box1 announce: TRMouseEnter.

	"The Roassal shape remains the same"
	self assert: (box1 shape colorFor: box1) = Color green.
	self assert: box1 trachelShape color = Color green.
	self assert: box2 trachelShape color = RTHighlightable highlightedColor.
	
	box1 announce: TRMouseLeave.
	self assert: box1 trachelShape color = Color green.
	self assert: box2 trachelShape color = Color red