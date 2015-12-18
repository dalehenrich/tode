tests
testAddingABoxAndEllipse

	| view el1 el2 |
	view := RTView new.
	el1 := (RTBox new extent: 40 @ 20; color: Color purple) element.
	el1 translateTo: 50 @ 40.
	el2 := (RTEllipse new extent: 40 @ 20; color: Color blue) element.
	el2 translateTo: 150 @ 40.
	view add: el1; add: el2.
	
	self assert: el1 position = (50 @ 40).
	self assert: el1 encompassingRectangle = ((30@30) corner: (70@50))