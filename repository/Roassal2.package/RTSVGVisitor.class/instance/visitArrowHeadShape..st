visitor
visitArrowHeadShape: arrowHeadShape
	| aid color bColor w s svgE|
	aid := self getDecorationId: arrowHeadShape.
	color := arrowHeadShape color.
	bColor := arrowHeadShape strokePaint.
	w := arrowHeadShape width.
	s := arrowHeadShape mySize.
	(markers contains: aid)
		ifFalse: [  
			svgE := RTSVGArrowHeadMarker new id: aid fillColor: color borderColor: bColor width: w size: s.
			svgE addOn: stream using: self. 
			markers add: aid. 
			]
		
	