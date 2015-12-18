tests
testBasic

	| v e dragAndConstraint |
	v := RTView new.
	e := RTBox element.
	
	dragAndConstraint := RTConstrainedDraggable new.
	dragAndConstraint rectangle: [ :someElement | 10 @ 10 corner: 200 @ 200 ].
	e @ dragAndConstraint.
	
	self assert: (dragAndConstraint rectangle value: nil) equals: (10 @ 10 corner: 200 @ 200).
	e translateBy: 5 @ 5. 
	
	self assert: (dragAndConstraint transformDistance: 10 forElement: e) equals: 10.
	dragAndConstraint constraintIfNecessary: e.
	