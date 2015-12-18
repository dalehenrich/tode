animations
growingSquare
	" 
	self new growingSquare
	"

	| view el |
	view := RTView new.
	el := RTBox new size: 20; color: (Color purple alpha: 0.2); element.
	el @ RTDraggable.
	el translateTo: 100 @ 130.
	
	el when: TRMouseClick do: [ :evt |
		| t |
		t := evt element trachelShape width + 5.
		evt element trachelShape extent: t @ t. evt signalUpdate ].

	view add: el.
	view open