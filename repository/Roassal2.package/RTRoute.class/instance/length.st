as yet unclassified
length
	length isNil ifTrue: [
		|coords1 coords2|
		coords1 := mapBuilder translatePixelsToGeoPosition: edge from position / (mapBuilder scale).
		coords2 := mapBuilder translatePixelsToGeoPosition: edge to position / (mapBuilder scale).
		length := (mapBuilder geoDistanceBetween: coords1 and: coords2) asInteger.
	].
	^ length