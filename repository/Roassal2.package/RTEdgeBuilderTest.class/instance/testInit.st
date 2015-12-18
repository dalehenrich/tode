tests
testInit
	| eb |
	eb := RTEdgeBuilder new.
	self deny: eb shouldAllowRepetition.
	eb allowRepetition.
	self assert: eb shouldAllowRepetition.