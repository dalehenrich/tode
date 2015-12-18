resizing
testResizingWidth

	self assert: shape1 width equals: 50.
	self assert: shape2 width equals: 10.
	
	TRConstraint useWidthOf: shape1 for: (Array with: shape2).

	self assert: shape1 width equals: 50.
	self assert: shape2 width equals: 50.
