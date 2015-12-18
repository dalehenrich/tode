computing
restoreElement: el
	| color |
	(el attributes includesKey: #scolor) ifTrue: [ 
		color := el attributes at: #scolor.
		el trachelShape color: color. ]
	