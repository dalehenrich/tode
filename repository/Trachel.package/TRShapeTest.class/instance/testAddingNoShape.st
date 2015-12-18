NoShape
testAddingNoShape

	| c |
	c := TRCanvas new.
	c addShape: (TRNoShape new).
	self assert: c numberOfShapes = 0