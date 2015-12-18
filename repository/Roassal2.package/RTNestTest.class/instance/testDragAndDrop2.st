composed shape
testDragAndDrop2
	| v shape e inner |
	v := RTView new.
	shape := RTBox new.
	
	e := shape element.
	
	inner := (RTBox new color: Color blue) element.
	RTNest new on: e nest: (RTGroup with: inner).
		
	self assert: e position equals: 0 @ 0.
	self assert: inner position equals: 0 @ 0.	
		
	e translateBy: 5 @ 5.
	self assert: e position equals: 5 @ 5.
	self assert: inner position equals: 5 @ 5