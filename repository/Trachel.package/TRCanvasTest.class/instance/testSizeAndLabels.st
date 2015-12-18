label
testSizeAndLabels

	| c l1 l2 |
	c := TRCanvas new.
	l1 := TRLabelShape new fontSize: 10.
	l2 := TRLabelShape new fontSize: 15; position: 20 @ 20.
	c addShape: l1.
	c addShape: l2.
	
	self assert: l1 font ~~ l2 font
	