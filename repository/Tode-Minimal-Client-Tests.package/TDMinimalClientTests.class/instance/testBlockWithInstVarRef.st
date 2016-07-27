tests - server blocks
testBlockWithInstVarRef
	severBlockInstVar := 3.
	self
		should: [ self assert: (self client onServerDo: [ severBlockInstVar + 4 ]) = 7 ]
		raise: Error