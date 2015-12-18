shapes
manySquares
	"
	self new manySquares
	"
	
	| view shape el |
	view := RTView new.

	shape := RTBox new.
	1 to: 7000 do: [ :i |
		el := shape elementOn: i.
		el translateTo: 20 @ 20.
		el @ RTHighlightable.
		el @ RTDraggable.
		view add: el.
	].
	RTGridLayout new gapSize: 1; on: view elements.
	
	view open