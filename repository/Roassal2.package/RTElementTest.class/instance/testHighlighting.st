interaction
testHighlighting
	| el view |
	el := RTBox element.
	view := RTView new.
	view add: el.
	view setUpCanvas.
	
	self assert: el trachelShape color = RTBox new defaultColor.
	
	el trachelShape color: Color red.
	self assert: el trachelShape color = Color red.