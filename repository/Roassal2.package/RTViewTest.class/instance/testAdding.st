fixed elements
testAdding

	| e1 e2 |
	e1 := RTBox element.
	e2 := RTBox element.
	
	e1 setAsFixed.
	view add: e1.
	view add: e2.
	
	self assert: view canvas numberOfFixedShapes = 1.
	self assert: view canvas numberOfShapes = 1.