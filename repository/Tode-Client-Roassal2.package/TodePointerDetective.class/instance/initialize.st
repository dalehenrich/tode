initialization
initialize
	super initialize.
	view := self defaultView.
	builder := self defaultBuilder.
	self nodesMap: WeakKeyDictionary new.
	self initBuilder.
