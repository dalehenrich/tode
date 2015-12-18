tests
testWidth
	self assert: multiShape width equals: 30.
	multiShape resetInnerShapes; vertical.
	TRCanvas new addShape: multiShape.
	self assert: multiShape width equals: 30.

	multiShape resetInnerShapes; horizontal.
	TRCanvas new addShape: multiShape.
	self assert: multiShape width equals: 50.

"	emptyShape := TRMultiCompositeShape new.
	multiShape := TRMultiCompositeShape new.
	box1 := TRBoxShape new size: 20. 
	box2 := TRBoxShape new size: 30.
	multiShape addShape: box1; addShape: box2.
	canvas := TRCanvas new."