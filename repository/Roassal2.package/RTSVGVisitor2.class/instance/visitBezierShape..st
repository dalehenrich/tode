visitor
visitBezierShape: aBezierShape
	| e shape |
	e := aBezierShape element.
	shape := (e shape class = RTCompositeShape) ifTrue: [ shape := e shape allShapes first ] ifFalse: [ e shape ].
	stream nextPutAll: '
		{type: "bezier", id: "';
		nextPutAll: (self nameFor: aBezierShape);
		nextPutAll: ('", fromid: <1p>, toid: <2p>,' 
		expandMacrosWith:  (self nameFor: e from trachelShape) with: (self nameFor: e to trachelShape) ).
	self addColor: aBezierShape strokePaint.
	
	shape class = RTBezierLine ifTrue: [ 
		stream nextPutAll:  'ides: ['.
		(shape controllingElements rtValue:e) do: [ :el | 
			stream nextPutAll: '"', (self nameFor: el trachelShape), '", '] ].
	
	stream nextPutAll: '], width: ', aBezierShape width asString, ', ap: ';
		nextPutAll: shape attachPoint class name;
		nextPutAll: '},'.
	