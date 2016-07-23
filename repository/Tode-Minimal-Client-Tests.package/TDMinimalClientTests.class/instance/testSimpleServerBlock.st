tests - server blocks
testSimpleServerBlock
	self assert: (self client onServerDo: [ 3 + 4 ]) = 7