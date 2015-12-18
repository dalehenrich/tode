tests
testScenario

	| v s2 s e |
	v := RTView new.

	s2 := RTCompositeShape new.
	s2 add: RTEllipse new.
	s2 add: RTEllipse new.
	s2 horizontal.

	s := RTCompositeShape new.
	s add: (RTLabel new text: 'hello').
	s add: s2.
	s vertical.

	e := s element.
	v add: e.
	v 
