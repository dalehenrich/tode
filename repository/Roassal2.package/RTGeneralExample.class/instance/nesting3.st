nesting
nesting3
	"
	self new nesting3
	"
	| view el shape inner |
	view := RTView new.
	el := (RTBox new width: 80; height: 40; color: (Color purple alpha: 0.3)) element.
	
	shape := RTBox new color: (Color purple alpha: 0.3).
	inner := (shape elementOn: #inner).

	view add: el.
	view add: inner.

	RTNest
		new 
		layout: RTGridLayout new;
		on: el nest: (Array with: inner).
		
	el translateTo: 100 @ 50.
	view open.
	
	