tests
testDifferentSizes
	| view el innerElement1 innerElement2 |
	view := RTView new.
	el := (RTBox new color: Color red) element.
	innerElement1 := (RTBox new size: 10) element.
	innerElement2 := (RTBox new size: 20) element.
	el translateTo: 100 @ 50.
	RTNest
		new 
		layout: RTGridLayout new;
		on: el nest: (RTGroup with: innerElement1 with: innerElement2).

	view add: el.
	view add: innerElement1.
	view add: innerElement2.

	self assert: el position = (100 @ 50).
	self assert: el trachelShape width = 45.
	self assert: el trachelShape height = 30.

	self assert: innerElement1 position y = 45.
	self assert: el position y = 50.
	self assert: innerElement2 position y = 50.
	self assert: 50 = el position y.