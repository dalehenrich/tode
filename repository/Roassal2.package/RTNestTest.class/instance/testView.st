tests
testView

	| v n |
	self assert: RTNest new view isNil.
	
	v := RTView new.
	
	n := RTNest new.
	n view: v.

	self assert: n view equals: v