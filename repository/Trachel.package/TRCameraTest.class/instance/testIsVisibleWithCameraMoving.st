visibility
testIsVisibleWithCameraMoving
	| c s |
	c := TRCanvas new.
	s := TREllipseShape new size: 50.
	c addShape: s.
	
	c camera translateBy: 200 @ 200.

	self assert: s position equals: 0 @ 0.
	self assert: s isVisible.
	
	"Outside the canvas"
	s translateBy: -100 @ -100.
	self deny: s isVisible.
	