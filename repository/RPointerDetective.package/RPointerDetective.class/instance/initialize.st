initialization
initialize
	super initialize.
	view := self defaultView.
	builder := self defaultBuilder.
	colorConditionBlocks := OrderedIdentityDictionary new.
	self nodesMap: WeakKeyDictionary new.
	self initBuilder.
	self initLegend.
