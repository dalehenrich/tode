visibility
testIsVisible
	| c s |
	c := TRCanvas new.
	s := TREllipseShape new size: 50.
	c addShape: s.
	
	self assert: c extent equals: 500 @ 500.

	self assert: s position equals: 0 @ 0.
	self assert: s isVisible.
	
	"Outside the canvas"
	s translateTo: 600 @ 600.
	self deny: s isVisible.
	
	"Inside the canvas"
	s translateBy: -400 @ -400.
	self assert: s isVisible.
	
	"Inside the canvas"
	s translateTo: -200 @ -200.
	self assert: s isVisible.
	
	"Outside the canvas"
	s translateTo: -400 @ -400.
	self deny: s isVisible.