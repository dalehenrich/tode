tests
testTrachelShape

	self assert: RTBox element trachelShape notNil.
	self assert: RTBox element trachelShape class == TRBoxShape.

	self assert: (RTElement new + RTBox) trachelShape notNil.