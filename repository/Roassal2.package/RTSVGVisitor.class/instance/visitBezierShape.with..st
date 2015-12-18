visitor
visitBezierShape: aBezierShape with: aLineDecoration
	|points svgE|
	points:= aBezierShape points copy.
	points := points collect: [ :p | self alignPoint: p].
	svgE := RTSVGBezierLine new element: (aBezierShape) points: points width: (aBezierShape width) color: (aBezierShape strokePaint) decoration: aLineDecoration.
	svgE addOn: stream using: self. 