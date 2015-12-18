tests
testRemoving

	| s e v |
	s := RTCompositeShape new.
	s add: RTLabel new.
	s add: RTBox new.
	e := s element.
	
	v := RTView new.
	v add: e.
	self assert: v numberOfElements equals: 1.
	
	e remove.
	self assert: v numberOfElements equals: 0.