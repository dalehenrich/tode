visitor
visitArcShape: aShape
	aShape topLeft ifNil: [ aShape computeRectangle ].
	stream nextPutAll: '
		{type: "arc", id: "';
		nextPutAll: (self nameFor: aShape);
		nextPutAll: ('", ir: <1p>, er: <2p>,' expandMacrosWith: aShape innerRadius 
			with: aShape externalRadius );
		nextPutAll: (' aAngle: <1p>, bAngle: <2p>,' expandMacrosWith: aShape alphaAngle
			with: aShape betaAngle );
		nextPutAll: (' o: {x: <1p>, y: <2p>},' expandMacrosWith: aShape topLeft x
			 with: aShape topLeft y);
		nextPutAll: (' c: {x: <1p>, y: <2p>},' expandMacrosWith: aShape bottomRight x
			 with: aShape bottomRight y).
	self addColor: aShape color.
	self addInteractions: aShape element.
	self addMatrix: aShape matrix.
