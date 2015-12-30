initialization
initialize
	super initialize.
	builder := self defaultBuilder.
	colorConditionBlocks := OrderedIdentityDictionary new.
	self initBuilder.
