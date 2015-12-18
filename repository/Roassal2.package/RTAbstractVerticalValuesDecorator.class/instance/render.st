drawing
render	
	| position offset tickSize |
	offset := -30 @ 0.
	tickSize := 5.

	values do: [ :aValue |
		position := builder getPixelPositionOf: 0 @ aValue.
		self label: (labelConversion rtValue: aValue) asString on: position + offset.
		
		self shape line color: Color gray.
		self lineFrom: position to: position - (tickSize @ 0) ]
		