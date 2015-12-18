convertion
distanceFromPixelToSpace: aPoint
	^ (aPoint / self scale) asFloatPoint
	"^ AthensAffineTransform new scaleBy: (1 / self scale) asFloat; translation: aPoint; transform: aPoint"