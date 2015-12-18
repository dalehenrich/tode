tests - composing
testComposedCompositedShape

	| s1 s2 e v |
	s1 := RTCompositeShape new.
	s2 := RTCompositeShape new.
	
	s1 add: (RTBox new color: Color blue; size: 20).
	s1 add: (RTBox new color: Color red; size: 20).
	s1 vertical.

	s2 add: s1.
	s2 add: (RTBox new color: Color green; size: 20).
	s2 vertical.
	
	e := s2 element.
	
	"The element has to be added to the view in order to have the #vertical layout applied"
	v := RTView new.
	v add: e.

	self assert: e height equals: 60