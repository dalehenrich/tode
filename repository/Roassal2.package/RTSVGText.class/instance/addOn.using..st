adding
addOn: stream using: aSVGVisitor
	| closings |
	aSVGVisitor names at: self element put: self id.
	closings := self addEmbeddingInteractions: aSVGVisitor.
	self openDef: stream.
	self addPosition: stream.
	self startStyle: stream.
	self addFillColor: stream.
	self closeTag: stream.
	self startTransform: stream.
	self addRotation: self angle point: (self x@self y) into: stream.
	self closeTag: stream.
	self startClass: stream.
	self addContainedInteractions: aSVGVisitor.
	self closeTag: stream.
	self closeDefWithContent: stream.
	self addStringWithFont: self content fontSize: self fontSize into: stream.
	self closeFullDef: stream.
	closings do: [ :c | stream nextPutAll: c ].
	self addExternalInteractions: aSVGVisitor