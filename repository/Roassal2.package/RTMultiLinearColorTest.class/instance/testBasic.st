tests
testBasic

	| n |
	n := RTMultiLinearColor new.
	self assert: (n rtValue: 0.0) equals: Color red