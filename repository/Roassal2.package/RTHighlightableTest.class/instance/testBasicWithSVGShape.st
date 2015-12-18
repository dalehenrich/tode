tests
testBasicWithSVGShape
	box := (RTSVGPath new path: 'M 100 100 L 300 100 L 200 300 z'; color: Color green) element.
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
