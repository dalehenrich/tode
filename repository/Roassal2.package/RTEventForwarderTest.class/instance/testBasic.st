tests
testBasic
	| v e |
	v := RTView new.
	e := RTBox element.
	e @ RTEventForwarder.
	v add: e.
	
	self assert: v canvas camera position equals: 0 @ 0.