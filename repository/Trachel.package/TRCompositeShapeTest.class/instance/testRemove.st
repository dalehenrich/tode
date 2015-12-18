tests
testRemove
	| c |
	c := TRCanvas new.
	c addShape: multiShape.
	self assert: c numberOfShapes equals: 2.
	multiShape remove.
	self assert: c numberOfShapes equals: 0.

"	emptyShape := TRMultiCompositeShape new.
	multiShape := TRMultiCompositeShape new.
	box1 := TRBoxShape new size: 20. 
	box2 := TRBoxShape new size: 30.
	multiShape addShape: box1; addShape: box2.
	canvas := TRCanvas new."