tests
testExclusiveAnimations2

	| v a1 a2 e |
	v := RTView new.
	e := RTBox element.
	a1 := RTResizeMove new toExtent: 20 @ 20 during: 0.4 on: e.
	a2 := RTResizeMove new toExtent: 50 @ 50 during: 0.4 on: RTBox element.
	
	v addAnimation: a1.
	v addAnimation: a2.
	
	self assert: v animations size = 2