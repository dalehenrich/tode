resizing
testResizingToMaxWidth

	self assert: shape1 width equals: 50.
	self assert: shape2 width equals: 10.
	
	TRConstraint setAllToMaxWidth: (Array with: shape2 with: shape1).

	self assert: shape1 width equals: 50.
	self assert: shape2 width equals: 50.
