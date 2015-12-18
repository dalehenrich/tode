tests
testFillingCanvas

	| canvas |
	view := RTView new.
	view add: RTBox element.
	canvas := view setUpCanvas.
	
	self assert: canvas class == TRCanvas.
	self assert: canvas numberOfShapes = 1.