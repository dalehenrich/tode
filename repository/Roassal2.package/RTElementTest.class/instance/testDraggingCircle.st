interaction
testDraggingCircle

	| view shape el |
	view := RTView new.
	shape := RTEllipse new size: 40.
	el := shape element.
	view add: el.
	view setUpCanvas.
	
	self assert: el position = (0 @ 0).
	el translateBy: 100 @ 50.
	self assert: el position = (100 @ 50).
	
	self assert: el trachelShape encompassingRectangle = ((80@30) corner: (120@70))