visitor
visitLineShape: aLine
	
	| e ap |
	e := aLine element.
	
	e = nil ifTrue: [ ^ self ].
	e shape = nil ifTrue: [ ^ self ].
	
	stream nextPutAll: '
		{type: "line", id: "';
		nextPutAll: (self nameFor: aLine);
		nextPutAll: ('", fromid: <1p>, toid: <2p>,' 
		expandMacrosWith:  (self nameFor: e from trachelShape) with: (self nameFor: e to trachelShape) ).
	ap := e shape class = RTCompositeShape 
		ifTrue: [ e shape allShapes first ] 
		ifFalse: [ e shape ].
	self addColor: aLine color.
	stream nextPutAll: ' width: ', aLine width asString, ', ap: '.
	stream nextPutAll: ap attachPoint class name.
	stream nextPutAll: '},'.
	