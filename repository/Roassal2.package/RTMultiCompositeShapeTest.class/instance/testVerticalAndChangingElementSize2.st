tests
testVerticalAndChangingElementSize2

	| s b1 b2 e view |
	s := RTCompositeShape new.
	b1 := RTBox new color: Color green.
	b2 := RTBox new color: Color blue.
	s add: b1.
	s add: b2.
	s vertical.
	
	e := s element.
	view := RTView new.
	view add: e.
	
	"No resize has been done"
	self assert: (view canvas shapes collect: #encompassingRectangle) first equals: ((-2.5@ -4.5) corner: (2.5@0.5)).
	self assert: (view canvas shapes collect: #encompassingRectangle) second equals: ((-2.5@0.5) corner: (2.5@5.5)).
	
	"We resize the second box"
	e trachelShape shapes second extent: 5 @ 5.
	