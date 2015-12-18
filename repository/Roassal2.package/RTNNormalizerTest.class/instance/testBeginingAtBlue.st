identity
testBeginingAtBlue

	| n |
	n := RTNIdentityNormalizer beginingAtBlue.
	self assert: n nextColor = Color blue