should be drawn
testShouldBeDrawn

	self assert: (TRBoxShape new from: 0 @ 0 to: 10 @ 20) shouldBeDrawn.
	self deny: (TRBoxShape new from: 200 @ 0 to: 10 @ 0) shouldBeDrawn.
	self deny: (TRBoxShape new from: 200 @ 0 to: 200 @ 0) shouldBeDrawn.
	self deny: (TREllipseShape new from: 0 @ 0 to: 0 @ 0) shouldBeDrawn.
	self assert: (TREllipseShape new from: 10 @ 0 to: 50 @ 50) shouldBeDrawn