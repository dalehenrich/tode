tests
testColor

	| v box s e |
	v := RTView new.
	box := RTBox new.
	s := RTCompositeShape new.
	s add: box.
	s color: Color red.
	e := s element.
	v add: e.
	
	self assert: e trachelShape shapes first color equals: Color red