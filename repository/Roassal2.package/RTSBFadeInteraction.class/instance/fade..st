computing
fade: element
	| color |
	(element attributes includesKey: #scolor) 
		ifTrue: [ color := element attributes at: #scolor ]
		ifFalse: [
			color := element color.
			element attributes at: #scolor put: color ].
	element trachelShape color: (color alpha:0.2).

