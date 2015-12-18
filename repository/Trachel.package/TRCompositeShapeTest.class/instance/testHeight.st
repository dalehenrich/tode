tests
testHeight
	self assert: multiShape height equals: 30.
	multiShape horizontal.
	TRCanvas new addShape: multiShape.
	self assert: multiShape height equals: 30.
	multiShape vertical.
	TRCanvas new addShape: multiShape.
	self assert: multiShape height equals: 50.

"	emptyShape := TRMultiCompositeShape new.
	multiShape := TRMultiCompositeShape new.
	box1 := TRBoxShape new size: 20. 
	box2 := TRBoxShape new size: 30.
	multiShape addShape: box1; addShape: box2.
	canvas := TRCanvas new."