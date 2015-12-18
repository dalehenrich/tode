tests
testColoredShape

	| shape el |
	shape := RTBox new color: Color red.
	el := shape element.
	RTView new add: el; setUpCanvas.
	self assert: el trachelShape color = Color red