composing
testComposing
	| s1 s2 e v  |
	s1 := RTLabel new.
	s2 := RTBox new.
	e := RTElement on: 'hello'.
	e + s1 + s2.
	v := RTView new.
	v add: e.
	
	self assert: v canvas numberOfShapes = 2.

	self assert: v canvas shapes first class == TRLabelShape.
	self assert: v canvas shapes second class == TRBoxShape.
	

"	self assert: c shape2 extent = (5@5).
	self assert: c shape1 width > 10.
"	