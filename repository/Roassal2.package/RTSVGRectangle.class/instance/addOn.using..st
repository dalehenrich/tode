adding
addOn: stream using: aSVGVisitor
	| closings |
	aSVGVisitor names at: self element put: self id.
	closings := self addEmbeddingInteractions: aSVGVisitor.
	self openDef: stream.
	self addPosition: stream.
	self addWidth: (self width) height: (self height) into: stream.
	self startStyle: stream.
	self addFillColor: stream.
	self addFillOpacity: stream.
	((self strokeWidth) > 0 and: (self strokeColor) ~= nil)
		ifTrue: [ 
			self addStrokeColor: stream.
			self addStrokeWidth: stream ].	
	self closeTag: stream.
	self startClass: stream.
	self addContainedInteractions: aSVGVisitor.
	self closeTag: stream.
	self closeDef: stream.
	closings do: [ :c | stream nextPutAll: c ].
	self addExternalInteractions: aSVGVisitor