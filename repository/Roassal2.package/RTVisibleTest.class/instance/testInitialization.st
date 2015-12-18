tests
testInitialization

	| v |
	v := RTVisible new.
	v visibleBlock rtValue: RTElement new.
	v invisibleBlock rtValue: RTElement new.
	self assert: v visibleBlock notNil.
	self assert: v invisibleBlock notNil.