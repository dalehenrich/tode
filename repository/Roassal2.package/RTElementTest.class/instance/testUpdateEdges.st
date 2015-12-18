creating
testUpdateEdges

	| e1 e2 l v |
	e1 := RTBox elementOn: 1.
	e2 := RTBox elementOn: 1.
	l := RTLine edgeFrom: e1 to: e2.
	v := RTView new.
	v add: e1; add: e2; add: l.
	
	e2 translateTo: 50 @ 50.
	
	self assert: l trachelShape from equals: 0 @ 0.
	self assert: l trachelShape to equals: 50 @ 50.

	e1 updateEdgesOFF.
	e1 translateTo: 10 @ 10.
	self assert: l trachelShape from equals: 0 @ 0.
	self assert: l trachelShape to equals: 50 @ 50.
