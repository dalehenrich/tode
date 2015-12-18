tests
testBeforeAddingToAView

	| e1 e2 v |
	e1 := RTBox element.
	e2 := RTShapeBuilder new cross element.
	e1 translateTo: 50 @ 50.
	e2 translateTo: 50 @ 50.
	
	self assert: e1 position equals: 50 @ 50.
	self assert: e2 position equals: 50 @ 50.
	
	v := RTView new.
	v add: e1.
	v add: e2.
	
	self assert: e1 position equals: 50 @ 50.
	self assert: e2 position equals: 0 @ 0.
