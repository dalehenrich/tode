private
fromOurSpaceToTile: aPoint
	"Convert our boundaries into the osm space (as set by the zoom level)."

	^ ((self fromOurSpaceToCameraSpace: aPoint) + (self equatorLength / 2))
		// (self equatorLength / (2 raisedTo: osmZoomLevel))