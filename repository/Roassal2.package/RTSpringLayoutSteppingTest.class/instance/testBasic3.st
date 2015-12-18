tests
testBasic3

	| v l |
	l := RTSpringLayoutStepping new.
	self assert: l nodes isEmpty.

	v := RTView new.
	v addAll: (RTBox elementsOn: (1 to: 2)).	
		
	l view: v.
	l layout: RTForceBasedLayout new.
	self assert: l nodes size = 2
	
	