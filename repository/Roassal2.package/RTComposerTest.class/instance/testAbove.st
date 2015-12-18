tests
testAbove
	| e1 e2 |
	e1 := RTBox element.
	view add: e1.
	composer group: #first.
	self assert: e1 position equals: (0 @ 0).

	e2 := RTBox element.
	view add: e2.
	composer group: #second. 
	composer move: #second above: #first.

	self assert: e1 position equals: (0 @ 0).	
	self assert: e1 position x equals: e2 position x.
	self assert: e2 position y equals: -25.0.