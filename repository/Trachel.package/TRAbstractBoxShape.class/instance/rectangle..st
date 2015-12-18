geometry
rectangle: aRectangle
	rectangle := aRectangle.
	self resetPath.
	
	"(oldExtent = (0 @ 0)) ifFalse: [ 
		self triggerCallbacksForNewExtent: newExtent oldExtent: oldExtent ].
"