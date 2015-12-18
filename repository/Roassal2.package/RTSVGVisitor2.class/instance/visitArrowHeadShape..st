visitor
visitArrowHeadShape: arrowShape

	
	| e ap |
	e := arrowShape element.
	stream nextPutAll: '
		{type: "headarrow", id: "';
		nextPutAll: (self nameFor: arrowShape);
		nextPutAll: ('", fromid: <1p>, toid: <2p>,' 
		expandMacrosWith:  (self nameFor: e from trachelShape) with: (self nameFor: e to trachelShape) ).
	self addColor: arrowShape color.
	self addBorderColor: arrowShape strokePaint.
	ap := e shape class = RTCompositeShape 
		ifTrue: [ e shape allShapes first ] 
		ifFalse: [ e shape ].
	stream nextPutAll: ' width: ', arrowShape width asString;
		nextPutAll: ', size: ', arrowShape mySize asString, ', ap: ';
		nextPutAll: ap attachPoint class name;
		nextPutAll: ', base: ', arrowShape baseSize asString;
		nextPutAll: '},'.
	
	
	"| aid color bColor w s svgE|
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
			]"
		"TODO"
	