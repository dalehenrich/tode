resizing
testResizingToMaxHeight

	self assert: shape1 height equals: 50.
	self assert: shape2 height equals: 10.
	
	TRConstraint setAllToMaxHeight: (Array with: shape2 with: shape1).

	self assert: shape1 height equals: 50.
	self assert: shape2 height equals: 50.
