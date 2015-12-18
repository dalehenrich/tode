events
testSharedAnnouncerAndComposedShapes

	| e s1 s2 v |
	s1 := RTBox new.
	s2 := RTEllipse new.
	
	e := (s1 + s2) element.
	v := RTView new.
	v add: e.
	self assert: e announcer == e trachelShape shapes first announcer.
	self assert: e announcer == e trachelShape shapes second announcer.
	