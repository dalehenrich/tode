composite shape
testCompositeShape

	| s e |
	s := RTCompositeShape new.
	s add: RTBox new.
	e := s element.
	
	e update