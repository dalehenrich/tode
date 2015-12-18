attach point
withVerticallAttachPoint
	| ap |
	ap := RTVerticalAttachPoint new.
	self attachPoint: ap.
	^ ap