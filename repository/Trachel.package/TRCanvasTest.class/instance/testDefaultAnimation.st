animations
testDefaultAnimation
	self deny: canvas hasAnimation.
	self assert: canvas numberOfAnimations = 0