bitmap
testBitmapIncludesPoint

	| s c |
	s := TRBitmapShape new form: (Form extent: 20 @ 20 depth: 32).
	c := TRCanvas new.
	c addShape: s.
	
	self assert: (s includesPoint: 0 @ 0).
	self assert: (s includesPoint: -9 @ -9).
	self assert: (s includesPoint: 9 @ 9).
	self deny: (s includesPoint: 19 @ 19).