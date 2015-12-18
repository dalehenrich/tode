tests
testAddingAnimation
	| c |
	c := RTView new canvas.
	c addAnimation: (RTLinearMove to: 50 @ 50 during: 2 on: RTBox element).
	self assert: c hasAnimation.
	self assert: c numberOfAnimations = 1