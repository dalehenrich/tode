tests
testWidth

	| s |
	s := TREllipseShape new size: 30.
	self assert: s strokeWidth equals: 0.005.