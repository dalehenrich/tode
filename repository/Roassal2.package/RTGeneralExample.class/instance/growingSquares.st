shapes
growingSquares
	"
	self new growingSquares
	"
	
	| view shape |
	view := RTView new.

	shape := RTBox new size: #yourself.
	1 to: 100 do: [ :i |
		view add: ((shape elementOn: i) translateTo: 20 @ 20; yourself).
	].
	RTGridLayout on: view elements.
	
	view open