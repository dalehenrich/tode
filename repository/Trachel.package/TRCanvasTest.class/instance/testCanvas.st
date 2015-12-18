tests
testCanvas
	| box |
	box := canvas buildRectangle: ( (5 @ 5) extent: (5 @ 5) ) color: Color red.
	self assert: box canvas == canvas.
	self assert: box athensCanvas == canvas athensCanvas.
	self assert: canvas ~~ canvas athensCanvas.