convertion
fromSpaceToPixelForRectangle: aRectangle

	^ (self fromSpaceToPixel: aRectangle topLeft) corner: (self fromSpaceToPixel: aRectangle bottomRight)