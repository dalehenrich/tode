tests
testAddingAndRemoving

	| box |
	box := TRBoxShape new from: 10 @ 10 to: 20 @ 20.
	canvas addShape: box.
	self assert: canvas numberOfShapes = 1.
	box remove.
	self assert: canvas numberOfShapes = 0.