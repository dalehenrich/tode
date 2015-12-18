drawing
drawOn: athensCanvas
	| newTiles start end |
	newTiles := Dictionary new.
	self updateOsmZoomLevel.
	semaphore
		critical: [ 
			athensCanvas pathTransform
				restoreAfter: [ 
					athensCanvas pathTransform
						translateBy: canvas camera position;
						scaleBy: 1 / canvas camera scale asFloat.
					athensCanvas
						clipBy: self translatedRectangle
						during: [ 
							start := self fromOurSpaceToTile: self translatedRectangle topLeft.
							end := self fromOurSpaceToTile: self translatedRectangle bottomRight.
							start x to: end x do: [ :xi | start y to: end y do: [ :yi | self drawTile: xi @ yi on: athensCanvas with: newTiles ] ].
							copyright drawOn: athensCanvas ] ].
			tiles := newTiles ]