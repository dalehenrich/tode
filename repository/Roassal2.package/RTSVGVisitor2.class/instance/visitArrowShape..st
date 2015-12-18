visitor
visitArrowShape: arrowShape
	
	| e ap |
	e := arrowShape element.
	stream nextPutAll: '
		{type: "simplearrow", id: "';
		nextPutAll: (self nameFor: arrowShape);
		nextPutAll: ('", fromid: <1p>, toid: <2p>,' 
		expandMacrosWith:  (self nameFor: e from trachelShape) with: (self nameFor: e to trachelShape) ).
	self addColor: arrowShape strokePaint.
	ap := e shape class = RTCompositeShape 
		ifTrue: [ e shape allShapes first ] 
		ifFalse: [ e shape ].
	stream nextPutAll: ' width: ', arrowShape width asString;
		nextPutAll: ', size: ', arrowShape mySize asString, ', ap: ';
		nextPutAll: ap attachPoint class name;
		nextPutAll: ', base: ', arrowShape baseSize asString;
		nextPutAll: '},'.
	