visitor
visitEllipseShape: anEllipse	
	| box |
	box := anEllipse basicEncompassingRectangle.
	stream nextPutAll: '
		{type: "ellipse", id: "';
		nextPutAll: (self nameFor: anEllipse);
		nextPutAll: ('", rx: <1p>, ry: <2p>,' expandMacrosWith:  (box width / 2) rounded with: (box height/2) rounded ).
	self addBorderColor: anEllipse strokePaint.
	self addBorderWidth: anEllipse.
	self addColor: anEllipse color.
	self addInteractions: anEllipse element.
	self addMatrix: anEllipse matrix.