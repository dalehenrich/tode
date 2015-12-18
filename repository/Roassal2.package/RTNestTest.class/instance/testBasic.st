tests
testBasic
	| view el el2 |
	view := RTView new.
	el := (RTBox new color: Color red) element.
	el2 := RTBox element.
	el translateTo: 100 @ 50.
	RTNest
		new 
		layout: RTGridLayout new;
		on: el nest: (Array with: el2).

	view add: el.
	view add: el2.
	
	self assert: el position asIntegerPoint = (100 @ 50).
	self assert: el2 position asIntegerPoint = (100 @ 50).

	self assert: el trachelShape width = 15.
	self assert: el trachelShape height = 15.
	
	self assert: el2 trachelShape width = 5.
	self assert: el2 trachelShape height = 5.