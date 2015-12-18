drawing
render	 
	| min max |
	min := builder getPixelPositionOf: builder minX @ builder minY.
	max := builder getPixelPositionOf: builder maxX @ builder maxY.

	self lineFrom: min to: max