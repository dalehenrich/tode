interaction
highlight
	" self new highlight "
		
	| v es |
	v := RTView new.
	es := ((RTBox new size: 30)" + RTLabel") elementsOn: (1 to: 16).

	es @ (RTHighlightable highlight: [ :vv | | arr |
		arr := OrderedCollection new.
		arr add: vv - 1.
		arr add: vv.
		arr add: vv + 1.
		arr add: vv - 4.
		arr add: vv + 4.
		arr]).

	RTGridLayout on: es.
	v addAll: es.
	v open