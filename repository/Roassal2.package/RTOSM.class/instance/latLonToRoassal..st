accessing
latLonToRoassal: aPoint
	"aPoint is lat @ lon. Don't forget it is inverted compared to x, y coordinates."

	^ (self lonToRoassal: aPoint y) @ (self latToRoassal: aPoint x)