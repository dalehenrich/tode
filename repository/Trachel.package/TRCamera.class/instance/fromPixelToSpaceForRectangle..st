convertion
fromPixelToSpaceForRectangle: aRectangle

	^ (self fromPixelToSpace: aRectangle topLeft) corner: (self fromPixelToSpace: aRectangle bottomRight)