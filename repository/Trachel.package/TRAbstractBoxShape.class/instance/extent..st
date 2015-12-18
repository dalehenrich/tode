geometry
extent: newExtent
	| oldExtent |
	newExtent = rectangle extent ifTrue: [ ^ self ].
	oldExtent := rectangle extent.
	rectangle := (0@0 - (newExtent / 2)) extent: newExtent.
	self resetPath.
	(oldExtent = (0 @ 0)) ifFalse: [ 
		self triggerCallbacksForNewExtent: newExtent oldExtent: oldExtent ].
