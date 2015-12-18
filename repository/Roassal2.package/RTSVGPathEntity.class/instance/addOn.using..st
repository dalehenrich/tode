adding
addOn: stream using: aSVGVisitor
	| closings |
	aSVGVisitor names at: self element put: self id.
	closings := self addEmbeddingInteractions: aSVGVisitor.
	self openDef: stream.
	self addPath: stream.
	self startStyle: stream.
	self addFillColor: stream.
	self addFillOpacity: stream.
	self addStrokeColor: stream.
	self addStrokeWidth: stream.	
	self closeTag: stream.
	self startTransform: stream.
	self addTranslation: self center into: stream.
	self  addScale: self scale into: stream. 
	self closeTag: stream.
	self startClass: stream.
	self addContainedInteractions: aSVGVisitor.
	self closeTag: stream.
	self closeDef: stream.
	closings do: [ :c | stream nextPutAll: c ].
	self addExternalInteractions: aSVGVisitor