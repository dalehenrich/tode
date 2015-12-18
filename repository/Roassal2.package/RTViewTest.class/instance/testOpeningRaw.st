opening
testOpeningRaw

	| window |
	window := view openRaw.
	self assert: window notNil.
	window delete.