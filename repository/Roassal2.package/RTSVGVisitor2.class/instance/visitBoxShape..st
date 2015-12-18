visitor
visitBoxShape: aBox
	
	| box |
	box := aBox basicEncompassingRectangle.
	stream nextPutAll: '
		{type: "box", id: "';
		nextPutAll: (self nameFor: aBox);
		nextPutAll: ('", w: <1p>, h: <2p>, ' expandMacrosWith:  box width with: box height ).
	self addBorderColor: aBox strokePaint.
	self addBorderWidth: aBox.
	self addColor: aBox color.
	self addInteractions: aBox element.
	self addMatrix: aBox matrix.