tests
testBasic
	| s e1 e2 edge |
	s := RTArrowedLine new.
	e1 := RTBox element.
	e2 := RTBox element.
	edge := s edgeFrom: e1 to: e2.
	self assert: edge from equals: e1.
	self assert: edge to equals: e2.