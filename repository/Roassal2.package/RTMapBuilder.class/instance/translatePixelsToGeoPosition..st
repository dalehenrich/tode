utility
translatePixelsToGeoPosition: point
	"From https://github.com/thebyrd/world-news"
	
	| xFactor xoffset yFactor yoffset |
	
	xFactor := 2.6938.
	xoffset := 465.4.
	
	yFactor := -2.6938.
	yoffset := 227.066.
	
	^ (point y - yoffset / yFactor) @ (point x - xoffset / xFactor)