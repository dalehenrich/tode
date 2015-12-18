tests
testRemoveWithEdges

	| view e1 e2 l1 l2 |
	view := RTView new.
	e1 := RTBox element.
	e2 := RTBox element.
	l1 := RTLine edgeFrom: e1 to: e2.
	l2 := RTLine edgeFrom: e2 to: e1.
	view add: l1; add: l2; add: e1; add: e2.
	
	e1 remove.
	e2 remove.