resizing
testResizingHeight

	self assert: shape1 height equals: 50.
	self assert: shape2 height equals: 10.
	
	TRConstraint useHeightOf: shape1 for: (Array with: shape2).

	self assert: shape1 height equals: 50.
	self assert: shape2 height equals: 50.
