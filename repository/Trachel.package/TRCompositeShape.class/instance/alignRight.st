public - layout
alignRight
	"Layout the shapes horizontally"

	TRConstraint alignFromRight: self shapes.
	shapeAndOffsets do: [ :tuple | tuple at: 2 put: tuple first position ].
	self resetInnerShapes