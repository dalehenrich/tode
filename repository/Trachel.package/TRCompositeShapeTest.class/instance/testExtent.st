tests
testExtent

	self assert: box1 extent equals: (20 @ 20).
	self assert: box2 extent equals: (30 @ 30).	
	multiShape extent: 25 @ 25.
	self assert: box1 extent equals: (25 @ 25).
	self assert: box2 extent equals: (25 @ 25).	
