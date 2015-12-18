attach point
withShorterDistanceAttachPoint
	| ap |
	ap := RTShorterDistanceAttachPoint new.
	self attachPoint: ap.
	^ ap.