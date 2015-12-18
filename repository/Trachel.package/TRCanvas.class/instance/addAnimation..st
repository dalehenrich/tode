animations
addAnimation: anAnimation
	animations add: anAnimation.
	anAnimation addedIn: self.
	anAnimation start.
	self signalUpdate