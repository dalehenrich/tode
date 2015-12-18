nesting
nesting
	"
	self new nesting
	"
	| view el shape inner |
	view := RTView new.
	el := (RTBox new width: 80; height: 40; color: (Color purple alpha: 0.3)) element.
	
	shape := RTBox new color: (Color purple alpha: 0.3).
	inner := shape elementsOn: (1 to: 20).

	view add: el.
	view addAll: inner.

	el @ RTDraggable.
	
	RTNest
		new 
		layout: RTGridLayout new;
		on: el nest: inner.
		
	el translateTo: 100 @ 50.
	view open.
	
	