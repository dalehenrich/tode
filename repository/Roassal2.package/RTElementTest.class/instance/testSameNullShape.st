tests
testSameNullShape
	self assert: RTElement new shape == RTElement new shape.
	self assert: RTNoShape element shape == RTElement new shape.