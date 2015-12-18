lines
testCenterOnALine

	| c l |
	c := TRCanvas new.
	
	l := TRLineShape new from: 50 @ 50 to: 120 @ 100.
	
	c addShape: l.
	
	self assert: l center = (85 @ 75)
	