attach point
withHorizontalAttachPoint
	| ap |
	ap := RTHorizontalAttachPoint new.
	self attachPoint: ap.
	^ ap