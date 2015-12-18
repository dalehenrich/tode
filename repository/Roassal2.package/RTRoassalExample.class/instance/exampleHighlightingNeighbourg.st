sources
exampleHighlightingNeighbourg

		
	| v es |
	v := RTView new.
	es := ((RTBox new size: 30)" + RTLabel") elementsOn: (1 to: 16).

	es @ (RTHighlightable highlight: [ :vv | Array with: vv - 1 with: vv with: vv + 1 with: vv - 4 with: vv + 4 ]).

	RTGridLayout on: es.
	v addAll: es.
	^ v