shapes
highlightSquare
	"
	self new highlightSquare
	"
	
	| view shape el |
	view := RTView new.

	shape := RTBox new size: #yourself.
	1 to: 100 do: [ :i |
		el := shape elementOn: i.
		el translateTo: 20 @ 20.
		el when: TRMouseEnter do: [ :e | e shape color: Color red. e signalUpdate ].
		el when: TRMouseLeave do: [ :e | e shape color: Color gray. e signalUpdate ].
		el when: TRMouseDragging do: [ :e | e shape translateBy: e step. e signalUpdate ].
		view add: el.
	].
	RTGridLayout on: view elements.
	
	view open