drawing
drawTile: aPoint on: athensCanvas with: newTiles
	"Draw a single tile at the right position."
	
	| paint |
	(tiles
		at: (Array with: aPoint x with: aPoint y with: osmZoomLevel)
		ifAbsent: [ self getTile: aPoint ])
		ifNotNil: [ :aTile | 
			athensCanvas pathTransform
				restoreAfter: [ 
					athensCanvas pathTransform
						translateBy: (self fromOSMSpaceToOurSpace: aPoint * 256);
						scaleBy: (self remainderZoom: osmZoomLevel).
					athensCanvas setShape: aTile boundingBox.
					paint := athensCanvas cacheAt: aTile ifAbsentPut: [ aTile asAthensPaintOn: athensCanvas ].
					athensCanvas setPaint: paint.
					athensCanvas draw.
					newTiles
						at: (Array with: aPoint x with: aPoint y with: osmZoomLevel)
						put: aTile ] ]