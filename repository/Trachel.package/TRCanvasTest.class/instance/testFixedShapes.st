fixed shape
testFixedShapes

	| s1 s2 |
	s1 := TRBoxShape new from: 10 @ 20 extent: 50 @ 40.
	s2 := TRBoxShape new from: 10 @ 20 extent: 50 @ 40.
	canvas addShape: s1; addShape: s2.
	
	self assert: s1 isNotFixed.
	self assert: s2 isNotFixed.
	
	s2 setAsFixed.
	self assert: s1 isNotFixed.
	self deny: s2 isNotFixed.
	
	s2 setAsNotFixed.
	self assert: s1 isNotFixed.
	self assert: s2 isNotFixed.
