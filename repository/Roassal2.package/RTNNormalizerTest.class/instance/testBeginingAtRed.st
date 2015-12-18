identity
testBeginingAtRed

	| n |
	n := RTNIdentityNormalizer beginingAtRed.
	self assert: n nextColor = Color red