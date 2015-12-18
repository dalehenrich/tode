visitor
visitBezierShape: aBezierShape
	|points svgE|
	points:= aBezierShape points copy.
	points := points collect: [ :p | self alignPoint: p].
	svgE := RTSVGBezierLine new element: (aBezierShape) points: points width: (aBezierShape width) color: (aBezierShape strokePaint).
	svgE addOn: stream using: self. 