tests
testOnTheLeftOf
	| e1 e2 |
	e1 := RTBox element.
	view add: e1.
	composer group: #first.
	self assert: e1 position equals: (0 @ 0).

	e2 := RTBox element.
	view add: e2.
	composer group: #second. 
	composer move: #second onTheLeftOf: #first.

	self assert: e1 position equals: (0 @ 0).	
	self assert: e1 position y equals: e2 position y.
	self assert: e2 position x equals: -25.5.