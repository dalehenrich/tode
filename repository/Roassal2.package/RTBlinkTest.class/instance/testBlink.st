tests
testBlink

	| view el canvas |
	view := RTView new.
	el := RTBox element.
	view add: el.
	canvas := view setUpCanvas.

	self assert: el shape color ~= Color red.
	self deny: canvas hasAnimation.
	
	RTBlink on: el in: view.
	self assert: el trachelShape color = Color red.
	self assert: canvas hasAnimation.