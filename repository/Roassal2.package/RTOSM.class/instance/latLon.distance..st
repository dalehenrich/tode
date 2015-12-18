accessing
latLon: aPoint distance: d
	"Given a latLon point, convert d in meter to the coordinates of the projection (i.e. Mercator deformation outside the equator)."

	^ d / 1000.0 * self ratio / aPoint x degreesToRadians cos