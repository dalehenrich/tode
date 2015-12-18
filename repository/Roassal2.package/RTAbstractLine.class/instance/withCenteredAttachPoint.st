attach point
withCenteredAttachPoint
	| ap |
	ap := RTCenteredAttachPoint new.
	self attachPoint: ap.
	^ ap