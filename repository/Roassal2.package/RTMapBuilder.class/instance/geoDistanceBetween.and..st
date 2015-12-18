utility
geoDistanceBetween: aPoint and: anotherPoint
	"http://www.movable-type.co.uk/scripts/latlong.html"
	| R lat1 lat2 lon1 lon2 dLat dLon a c |
	R := 6371.
	lat1 := aPoint x degreesToRadians.
	lat2 := anotherPoint x degreesToRadians.
	lon1 := aPoint y degreesToRadians.
	lon2 := anotherPoint y degreesToRadians.	
	dLat := (lat2 - lat1).
	dLon := (lon2 - lon1).
	
	a := ((dLat / 2) sin squared) + (((dLon / 2) sin squared) * (lat1 cos) * (lat2 cos)).
	c := 2 * (a sqrt arcTan: (1 - a) sqrt).
	
	^ R * c