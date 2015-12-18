tests
testRectangle
	| points |
	points := Array with:  0@5 with: 5@0 with: 10@5 with: 5@5.
	nodes := points collect: [ :e | RTBox element translateTo: e ].
	quad := RTQuadTree withAll: nodes.
	
	self assert: quad origin = (0@0).
	self assert: quad corner = (10@10)