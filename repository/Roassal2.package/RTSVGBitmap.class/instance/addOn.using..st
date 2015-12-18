adding
addOn: stream using: aSVGVisitor
	| closings |
	aSVGVisitor names at: self element put: self id.
	closings := self addEmbeddingInteractions: aSVGVisitor.
	self openDef: stream.
	self addPosition: stream.
	self addWidth: (self box width rounded) height: (self box height rounded) into: stream.
	self addForm: stream.
	self startClass: stream.
	self addContainedInteractions: aSVGVisitor.
	self closeTag: stream.
	self closeDef: stream.
	closings do: [ :c | stream nextPutAll: c ].
	self addExternalInteractions: aSVGVisitor