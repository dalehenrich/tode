tests
testIsAbstract

	self deny: RTGridLayout isAbstract.
	self assert: RTGridLayout superclass isAbstract.