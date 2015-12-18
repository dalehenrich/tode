focusing
testFocusingCenter
	canvas addShape: (TREllipseShape new from: 50 @ 50 to: 100 @ 80).
	canvas camera focusOnCenter.
	self assert: canvas camera position = (75 @ 65)