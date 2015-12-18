private
computeOsmZoomLevel
	"The osm zoom level."

	^ (((self pixelLength * canvas camera scale) ln / 2 ln) rounded max: 0) min: 18