tests - composing
testExtentCompositedShape

	| s1  e v |
	s1 := RTCompositeShape new.
	
	s1 add: (RTBox new color: Color blue; size: 20).
	s1 add: (RTBox new color: Color red; size: 20).
	s1 vertical.
	e := s1 element.
	v := RTView new.
	v add: e.
	
	self assert: e height equals: 40