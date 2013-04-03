stream extensions
bs
	self position > 0 ifTrue: [^ self skip: -1].
	self changed: #bs