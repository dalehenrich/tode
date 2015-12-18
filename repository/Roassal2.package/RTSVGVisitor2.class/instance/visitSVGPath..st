visitor
visitSVGPath: aSVGPath
	| r c |
	r := aSVGPath basicEncompassingRectangle.
	c := aSVGPath color.
	c ifNil: [ c:= Color transparent ].
	stream nextPutAll: '
		{type: "path", id: "';
		nextPutAll: (self nameFor: aSVGPath);
		nextPutAll: '", d:"';
		nextPutAll: aSVGPath pathString;
		nextPutAll: ('", o: {x: <1p>, y: <2p>}' expandMacrosWith: r origin x with: r origin y);
		nextPutAll: (', c: {x: <1p>, y: <2p>},' expandMacrosWith: r corner x with: r corner y).
	
	self addBorderColor: aSVGPath strokePaint.
	self addBorderWidth: aSVGPath.
	
	self addColor: c.
	self addInteractions: aSVGPath element.
	self addMatrix: aSVGPath matrix.