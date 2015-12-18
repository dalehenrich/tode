tests
testVerticalAndChangingElementSize

	| s b1 b2 e view |
	s := RTCompositeShape new.
	b1 := RTBox new color: Color green.
	b2 := RTBox new color: Color blue; size: 20.
	s add: b1.
	s add: b2.
	s vertical.
	s setAutomaticRelayout.
	
	e := s element.
	view := RTView new.
	view add: e.

	"No resize has been done"
	self assert: (view canvas shapes collect: #encompassingRectangle) first equals: ((-2.5@ -12.5) corner: (2.5@ -7.5)).
	self assert: (view canvas shapes collect: #encompassingRectangle) second equals: ((-10.0@ -7.5) corner: (10.0@12.5)).
	
	"We resize the second box"
	e trachelShape shapes second extent: 5 @ 5.
"	e trachelShape resetInnerShapes; vertical; relayout."
	self assert: (view canvas shapes collect: #encompassingRectangle) first equals: ((-2.5@ -2.5) corner: (2.5@2.5)).
	self assert: (view canvas shapes collect: #encompassingRectangle) second equals: ((-2.5@2.5) corner: (2.5@7.5)).