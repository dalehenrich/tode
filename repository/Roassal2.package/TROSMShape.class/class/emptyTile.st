resources
emptyTile
	^ EmptyTile
		ifNil: [ EmptyTile := ((StringMorph contents: 'Loading...') center: 127 @ 127) imageFormForRectangle: (0 @ 0 extent: 256 @ 256) ]