fixed elements
testDefault

	self deny: RTElement new isFixed.
	self assert: (RTElement new setAsFixed; isFixed).
	self deny: (RTElement new setAsNotFixed; isFixed).