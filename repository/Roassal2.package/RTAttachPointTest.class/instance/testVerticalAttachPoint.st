as yet unclassified
testVerticalAttachPoint
	shape withVerticallAttachPoint.
	self 
		assert: (shape startingPointOf: edge) 
		equals: (el1 encompassingRectangle bottomLeft 
					+ ((el1 encompassingRectangle extent x / 2) @ 0)) asIntegerPoint.
	self 
		assert: (shape endingPointOf: edge) 
		equals: (el2 encompassingRectangle topLeft 
					+ ((el2 encompassingRectangle extent x / 2) @ 0)) asIntegerPoint.