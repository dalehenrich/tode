tests
testCreate
	
	| quadrants points |
	points :=  Array with: 0@0 with: 0@5 with: 5@0 with: 5@5.
	
	nodes := points collect: [ :pos | RTBox element translateTo: pos ].
	quad := RTQuadTree withAll: nodes.
	
	quadrants := quad nodes.
	
	self assert: (quadrants at: 1) node position = (0@0).
	self assert: (quadrants at: 2) node position = (5@0).
	self assert: (quadrants at: 3) node position = (0@5).
	self assert: (quadrants at: 4) node position = (5@5)