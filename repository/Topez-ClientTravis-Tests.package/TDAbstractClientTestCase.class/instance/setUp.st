running
setUp
	super setUp.
	self canRunTests
		ifFalse: [ self error: 'cannot run tests without a session description' ]