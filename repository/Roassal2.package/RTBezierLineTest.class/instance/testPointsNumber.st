tests
testPointsNumber

	| v e e1 e2 e3 e4 l1 l2 |
	v := RTView new.
	e1 := RTBox element.
	e2 := RTBox element.
	e3 := RTBox element.
	e4 := RTBox element.
	e := Array with: e1 with: e2 with: e3 with: e4.
	e2 translateBy: (100@0).
	e3 translateBy: (200@0).
	e4 translateBy: (300@0).
	l1 := RTBezierLine new controllingElements: (Array with: e3 with: e4); edgeFrom: e1 to: e2. "well defined"
	l2 := RTBezierLine new controllingElements: e; edgeFrom: e1 to: e4. "wrongly defined"
	v add: e1; add: e2; add: l1; add: l2.
	self assert: l1 trachelShape points size = 4.
	self assert: l2 trachelShape points size = 4.