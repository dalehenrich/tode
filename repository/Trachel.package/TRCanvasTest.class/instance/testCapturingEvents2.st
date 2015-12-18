events
testCapturingEvents2
	| s1 s2 |
	 
	s1 := (TRBoxShape new size: 10).
	s2 := (TRBoxShape new size: 10).
	canvas addShape: s1.
	canvas addShape: s2. 
	self assert: (canvas shapeForPosition: 0 @ 0) == s2