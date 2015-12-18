tests
testAlignRight

	| v box box2 s |
	v := RTView new.
	box := RTBox new.
	box2 := RTBox new.
	s := RTCompositeShape new.
	s add: box.
   s add: box2.
	s alignRight.
	self assert: s allShapes equals: (Array with: box with: box2)