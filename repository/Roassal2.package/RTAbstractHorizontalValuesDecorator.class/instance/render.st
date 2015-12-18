drawing
render	
	| position offset tickSize lb e |
	offset := 0 @ 30.
	tickSize := 5.

	values do: [ :aValue |
		position := builder getPixelPositionOf: aValue @ 0.
		lb := self label: (labelConversion rtValue: aValue) asString on: position + offset.
		lb rotateByDegrees: labelRotation.
		
		self shape line color: Color gray.
		e := self lineFrom: position to: position + (0 @ tickSize).
		TRConstraint move: lb below: e.
		lb translateBy: (lb width / -2 @ 0) + (5 @ 0).
		 ]
		