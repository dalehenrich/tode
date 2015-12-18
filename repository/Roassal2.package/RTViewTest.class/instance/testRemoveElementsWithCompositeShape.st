tests
testRemoveElementsWithCompositeShape

	| s1 s2 c el1 el2 |
	s1 := RTBox new.
	s2 := RTEllipse new.
	c := RTCompositeShape new.
	c add: s1; add: s2.
	el1 := c element.
	el2 := c element.
	self assert: view numberOfElements equals: 0.
	self assert: view canvas shapes size equals: 0.
	view add: el1.
	self assert: view numberOfElements equals: 1.
	self assert: view canvas shapes size equals: 2.
	view add: el2.
	self assert: view numberOfElements equals: 2.
	self assert: view canvas shapes size equals: 4.
	
	view removeElements: (RTGroup with: el1).
	self assert: view numberOfElements equals: 1.
	self assert: view canvas shapes size equals: 2.
	
	view removeElements: (RTGroup with: el2).
	self assert: view numberOfElements equals: 0.
	self assert: view canvas shapes size equals: 0.
