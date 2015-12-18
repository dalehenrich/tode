tests
testMultipleElementsDoHighlight
	| box1 box2 h |
	box1 := (RTBox new color: Color green) elementOn: 1.
	box2 := (RTBox new color: Color red) elementOn: 2.
	
	h := RTHighlightable new highlightElements: [ :e | Array with: box2 ].
	h doHighlight: box1.
	
	"The Roassal shape remains the same"
	self assert: (box1 shape colorFor: box1) = Color green.
	self assert: box1 trachelShape color = Color green.
	self assert: box2 trachelShape color = RTHighlightable highlightedColor.
	
	h doUnhighlight: box1.
	self assert: box1 trachelShape color = Color green.
	self assert: box2 trachelShape color = Color red