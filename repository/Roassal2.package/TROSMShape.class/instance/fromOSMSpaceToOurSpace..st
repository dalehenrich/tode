private
fromOSMSpaceToOurSpace: aPoint
	"Convert a point in OSM space (zoom level) into our space."

	^ self
		fromCameraSpaceToOurSpace: aPoint * self equatorLength / (2 raisedTo: osmZoomLevel) / 256 - (self equatorLength / 2)