running
tearDown
	super tearDown.
	session ifNotNil: [ session logout ]