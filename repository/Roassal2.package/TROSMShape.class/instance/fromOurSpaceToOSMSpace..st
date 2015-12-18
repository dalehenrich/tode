private
fromOurSpaceToOSMSpace: aPoint
	"Convert our boundaries into the osm space (as set by the zoom level)."

	^ ((self fromOurSpaceToCameraSpace: aPoint) + (self equatorLength / 2))
		// (self equatorLength / 256 / (2 raisedTo: osmZoomLevel))