tests
testVerticalLineLayoutOnGroups
	| line1 line2 el1 el2 |
	view := RTView new.
	line1 := RTBox new size: #yourself; elementsOn: #(30).
	line2 := RTBox new size: #yourself; elementsOn: #(50).
	view addAll: line1; addAll: line2.
	self assert: view elements size equals: 2.
	RTVerticalLineLayout new 
		gapSize: 0; 
		on: (Array with: line1 with: line2).
	el1 := line1 first.
	el2 := line2 first.
	
	self assert: el1 height equals: 30.
	self assert: el2 height equals: 50.
	self assert: el1 position equals: 15 @ 15.
	self assert: el2 position equals: 25 @ 55.
	self assert: el1 encompassingRectangle left equals: el2 encompassingRectangle left.
	self assert: el1 encompassingRectangle bottom <= el2 encompassingRectangle top.