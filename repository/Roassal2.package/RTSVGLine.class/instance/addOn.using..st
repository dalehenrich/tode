adding
addOn: stream using: aSVGVisitor
	| closings from to|
	from := aSVGVisitor names at: self element element from trachelShape.
	to := aSVGVisitor names at: self element element to trachelShape.
	self id: from , '_' , to.
	closings := self addEmbeddingInteractions: aSVGVisitor.
	self openDef: stream.
	self addPosition: stream.
	self startStyle: stream.
	self addStrokeColor: stream.
	self addStrokeOpacity: stream.
	self addStrokeWidth: stream.
	self closeTag: stream.
	self decoration ifNotNil: [ self addMarker: stream ].
	self startClass: stream.
	self addContainedInteractions: aSVGVisitor.
	self closeTag: stream.
	self closeDef: stream.
	closings do: [ :c | stream nextPutAll: c ].
	self addExternalInteractions: aSVGVisitor