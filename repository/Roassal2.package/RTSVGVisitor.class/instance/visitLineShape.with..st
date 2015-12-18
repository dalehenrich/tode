visitor
visitLineShape: aLine with: aLineDecoration
	|startingPoint endingPoint svgE|
	startingPoint := self alignPoint: (aLine from).
	endingPoint := self alignPoint: (aLine to).
	svgE := RTSVGLine new element: (aLine) from: startingPoint to: endingPoint width: 1 color: (aLine strokePaint) decoration: aLineDecoration.
	svgE addOn: stream using: self. 