adding
addOn: stream using: aSVGVisitor
	self openDef: stream.
	self addMarkerOptions: stream.
	self closeDefWithContent: stream.
	self openInnerDef: stream.
	self addPath: stream.
	self startStyle: stream.
	self addFillColor: stream.
	self addStrokeColor: stream.
	self addStrokeWidth: stream.
	self closeTag: stream.
	self closeDef: stream.
	self closeFullDef: stream.