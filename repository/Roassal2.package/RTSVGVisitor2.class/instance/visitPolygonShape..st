visitor
visitPolygonShape: aPolygon
	| r c |
	r := aPolygon encompassingRectangle.
	c := aPolygon color.
	c ifNil: [ c:= Color transparent ].
	
	stream nextPutAll: '
		{type: "polygon", id: "';
		nextPutAll: (self nameFor: aPolygon);
		nextPutAll: ('", o: {x: <1p>, y: <2p>}' expandMacrosWith: r origin x with: r origin y);
		nextPutAll: (', c: {x: <1p>, y: <2p>}, p: "' expandMacrosWith: r corner x with: r corner y).
	
	aPolygon vertices do: [ :p |
		stream nextPutAll: ('<1p>,<2p> ' expandMacrosWith: p x with: p y).
		 ].
	stream nextPutAll: '",'.
	self addBorderColor: aPolygon strokePaint.
	self addBorderWidth: aPolygon.
	self addColor: c.
	self addInteractions: aPolygon element.
	self addMatrix: aPolygon matrix.