visitor
visitDiamondShape: diamondShape
	| aid color bColor w s svgE|
	aid := self getDecorationId: diamondShape.
	color := diamondShape color.
	bColor := diamondShape strokePaint.
	w := diamondShape width.
	s := diamondShape mySize.
	(markers contains: aid)
		ifFalse: [  
			svgE := RTSVGDiamondMarker new id: aid fillColor: color borderColor: bColor width: w size: s.
			svgE addOn: stream using: self. 
			markers add: aid. 
			]
		
	