tests
testRenderingAndEvent

	| view el trachelShape |
	view := RTView new.
	el := RTBox element.
	view add: el.
	view setUpCanvas.
	trachelShape := el trachelShape.
	self assert: el announcer == trachelShape announcer