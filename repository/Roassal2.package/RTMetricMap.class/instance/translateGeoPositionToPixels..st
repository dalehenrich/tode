utility
translateGeoPositionToPixels: point
	"From https://github.com/thebyrd/world-news"
	
	| longitud latitud xFactor xoffset yFactor yoffset |
	latitud := point x.
	longitud := point y.
	
	xFactor := 2.6938.
	xoffset := 465.4.
	
	yFactor := -2.6938.
	yoffset := 227.066.
	^ ((longitud * xFactor) + xoffset) @ ((latitud * yFactor) + yoffset)