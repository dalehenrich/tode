util
set: element color: aColor
	| shape |
	shape := element shape.
	(element attributes includesKey: #oldColor)
		ifFalse: 
			[ element attributes at: #oldColor put: element trachelShape color.
				element trachelShape
					 color: aColor;
					 signalUpdate ]