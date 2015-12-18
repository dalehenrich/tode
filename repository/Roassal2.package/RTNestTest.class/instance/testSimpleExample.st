tests
testSimpleExample

	| view el shape inner |
	view := RTView new.
	el := (RTBox new color: (Color purple alpha: 0.3)) element.
	
	shape := RTBox new color: (Color purple alpha: 0.3).
	inner := (shape elementOn: #inner).

	view add: el.
	view add: inner.

	RTNest
		new 
		layout: RTGridLayout new;
		on: el nest: (RTGroup with: inner).

	self assert: el position = (0 @ 0).
	self assert: inner position = ((1 / 2) @ (1 / 2)).

	el translateTo: 100 @ 50.
	self assert: el position = (100 @ 50).
	self assert: inner position =  ((201/2)@(101/2)).

	self assert: el trachelShape hasCallback.

	"This may change later"
	self deny: inner trachelShape hasCallback.
	