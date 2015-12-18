private
osmZoomLevel
	^ osmZoomLevel ifNil: [ osmZoomLevel := self computeOsmZoomLevel ]