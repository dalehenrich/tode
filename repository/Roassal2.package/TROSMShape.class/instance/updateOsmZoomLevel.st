private
updateOsmZoomLevel
	"Get the osm zoom level. Do something if we need to change the zoom level, like flushing the tile cache."

	osmZoomLevel := self computeOsmZoomLevel