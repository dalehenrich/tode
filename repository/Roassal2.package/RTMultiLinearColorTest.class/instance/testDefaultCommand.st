tests
testDefaultCommand

	| n |
	n := RTMultiLinearColor new.
	self assert: n command notNil.
	self assert: (n command rtValue: 0.3) equals: 0.3.