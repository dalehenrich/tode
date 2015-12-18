util
unhighlight: element
	| shape |
	(self isHighlighted: element) ifFalse: [ ^ self ].
	shape := element trachelShape.
	shape color: (element attributes at: #oldColor).
	element attributes removeKey: #oldColor. 
	element trachelShape signalUpdate