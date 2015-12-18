tests
testNumberOfColors2
	| n |
	n := RTMultiLinearColor new.
	n colors: (Array with: Color gray with: Color blue).
	self assert: n numberOfColors equals: 2