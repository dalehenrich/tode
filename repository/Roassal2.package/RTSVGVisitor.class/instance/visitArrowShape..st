visitor
visitArrowShape: arrowShape
	| aid bColor w s svgE|
	aid := self getDecorationId: arrowShape.
	bColor := arrowShape strokePaint.
	w := arrowShape width.
	s := arrowShape mySize.
	(markers contains: aid)
		ifFalse: [ 
			svgE := RTSVGArrowMarker new id: aid fillColor: nil borderColor: bColor width: w size: s.
			svgE addOn: stream using: self. 
			markers add: aid. 
			]
		
	