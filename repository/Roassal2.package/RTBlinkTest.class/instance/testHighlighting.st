tests
testHighlighting

	| view el canvas originalColor |
	view := RTView new.
	el := RTBox element.
	view add: el.
	canvas := view setUpCanvas.

	originalColor := el trachelShape color.

	RTBlink highlight: el.
	self assert: el trachelShape color = Color red.


	RTBlink unhighlight: el.
	self assert: el trachelShape color = originalColor.