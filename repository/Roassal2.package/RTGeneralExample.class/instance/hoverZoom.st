interaction
hoverZoom
	"
	self new hoverZoom
	"
		
	| v es |
	v := RTView new.
	es := RTBox new size: #yourself; elementsOn: (10 to: 60 by: 5).
	v addAll: es.
	es do: [ :eachElement | | nested |
		nested := RTBox new color: (Color green alpha: 0.5); 
						size: #yourself; elementsOn: (10 to: 25 by: 5).
		nested @ RTHighlightable.
		v add: nested.
		RTNest new 
			layout: RTGridLayout new;
			on: eachElement nest: nested ].

	es @ RTMouseHoverZoom.

	RTGridLayout on: es.
	^ v open