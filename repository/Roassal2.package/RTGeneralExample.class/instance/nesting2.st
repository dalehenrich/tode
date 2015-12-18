nesting
nesting2
	"
	self new nesting2
	"

	| view el shape  innerElements |
	view := RTView new.
	el := (RTBox new width: 80; height: 40; color: (Color purple alpha: 0.3)) element.
	el translateTo: 200 @ 150.
	shape := RTBox new color: (Color red alpha: 0.3); size: #yourself.
	
	innerElements := (1 to: 30) collect: [ :i | shape elementOn: i ].
	view addAll: innerElements.
	
	
	RTNest
		new 
		layout: RTGridLayout new;
		on: el nest: innerElements.
		
	view add: el.
	
	view open.
	
	