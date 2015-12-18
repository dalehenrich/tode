accessing
extent: newExtent
	| oldExtent |
	oldExtent := self extent.
	(oldExtent = (0 @ 0)) ifTrue: [ ^ self ].
	matrix scaleBy: newExtent / oldExtent.
	self triggerCallbacksForNewExtent: newExtent oldExtent: oldExtent.
