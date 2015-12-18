initialization
initialize
	super initialize.
	self createSurface.
	shouldRefresh := false.
	session := Smalltalk session.