shapes
linkedSquares
	"
	self new linkedSquares
	"
	| view shape  fromEl toEl edge |
	view := RTView new.

	shape := RTBox new size: 90; color: (Color blue alpha: 0.1).
	fromEl := shape element.
	fromEl translateTo: 20 @ 30.
	fromEl @ RTDraggable.

	toEl := shape element.
	toEl translateTo: 200 @ 80.
	toEl @ RTDraggable.
	
	edge := RTLine edgeFrom: fromEl to: toEl.  	
	view add: fromEl; add: toEl; add: edge.

	view open.