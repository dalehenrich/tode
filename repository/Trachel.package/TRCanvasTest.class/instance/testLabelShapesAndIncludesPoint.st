label
testLabelShapesAndIncludesPoint

	| label rec |
	label := TRLabelShape new.
	label text: 'hello'.
	
	rec := label encompassingRectangle.
	self assert: (label includesPoint: rec topLeft).
	self assert: (label includesPoint: (rec bottomLeft - (0 @ 1))).
	self assert: (label includesPoint: rec topRight - (1 @ 0)).
	self assert: (label includesPoint: rec bottomRight - (1 @ 1)).