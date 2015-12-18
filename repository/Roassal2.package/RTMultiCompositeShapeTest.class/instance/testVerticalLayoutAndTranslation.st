tests
testVerticalLayoutAndTranslation

	| v s e positions b1 b2 tb1 tb2 |
	v := RTView new.
	b1 := RTBox new color: Color red; size: 16.
	b2 := RTBox new color: Color blue; size: 16.
	s := RTCompositeShape new.
	s add: b1.
	s add: b2.
	s vertical.

	e := s element.
	v add: e @ RTDraggable.

	self assert: e trachelShape shapes second position equals: 0 @ 8.0.
	
	self assert: (e trachelShape offsets asArray) equals: (Array with: (0 @ 0) with: (0 @ 16.0)).

	tb1 := e trachelShape shapes first.
	tb2 := e trachelShape shapes second.
	self assert: (e trachelShape offsetOf: tb1) equals: 0 @ 0.
	self assert: (e trachelShape offsetOf: tb2) equals: 0 @ 16.0.

	positions := (e trachelShape shapes collect: #position) asArray.	
	self assert: positions equals: (Array with: (0 @ -8) with: (0 @ 8)).

	e translateTo: 0 @ 0.
	
	positions := (e trachelShape shapes collect: #position) asArray.
	self assert: positions equals: (Array with: (0 @ -8) with: (0 @ 8)).
	