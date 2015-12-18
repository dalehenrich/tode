visitor
visitLineShape: aLine
	|startingPoint endingPoint svgE|
	startingPoint := self alignPoint: (aLine from).
	endingPoint := self alignPoint: (aLine to).
	svgE := RTSVGLine new element: (aLine) from: startingPoint to: endingPoint width: 1 color: (aLine strokePaint).
	svgE addOn: stream using: self. 