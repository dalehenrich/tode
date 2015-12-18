running
tearDown
	super tearDown.
	ui ifNotNil: [ :aUI | ui := nil. aUI delete. ].