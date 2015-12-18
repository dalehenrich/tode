tests
testBasic
	box := (RTBox new color: Color green) element.
	self assert: (box shape colorFor: box) = Color green.
	self assert: box trachelShape color = Color green.

	box @ RTHighlightable.
	self assert: (box shape colorFor: box) = Color green.
	self assert: box trachelShape color = Color green.

	box announce: TRMouseEnter.
	"The Roassal shape remains the same"
	self assert: (box shape colorFor: box) = Color green.
	self assert: box trachelShape color = RTHighlightable highlightedColor.
	
	box announce: TRMouseLeave.
	self assert: (box shape colorFor: box) = Color green.
	self assert: box trachelShape color = Color green.
