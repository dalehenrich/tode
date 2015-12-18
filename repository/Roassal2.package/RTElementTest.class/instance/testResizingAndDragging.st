tests
testResizingAndDragging

	| view box |
	view := RTView new.
	box := RTBox element.
	view add: box.
	view setUpCanvas.
	
	self assert: box extent = (5 @ 5).
	box trachelShape extent: 10 @ 10.
	self assert: box extent = (10 @ 10).

	box translateTo: 5 @ 5.
	self assert: box extent = (10 @ 10).