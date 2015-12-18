tests
testVerticalLineLayoutOnElements
	| el1 el2 |
	view := RTView new.
	el1 := RTBox new size: #yourself; elementOn: 30.
	el2 := RTBox new size: #yourself; elementOn: 50.
	view add: el1; add: el2.
	self assert: view elements size equals: 2.
	RTVerticalLineLayout new 
		gapSize: 0; 
		on: view elements.
	self assert: el1 height equals: 30.
	self assert: el2 height equals: 50.
	self assert: el1 position equals: 15 @ 15.
	self assert: el2 position equals: 25 @ 55.
	self assert: el1 encompassingRectangle left equals: el2 encompassingRectangle left.
	self assert: el1 encompassingRectangle bottom <= el2 encompassingRectangle top.