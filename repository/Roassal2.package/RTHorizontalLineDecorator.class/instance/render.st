drawing
render	
	| from to |
	values do: [ :aValue |
		from := builder getPixelPositionOf: builder minX @ aValue.
		to := builder getPixelPositionOf: builder maxX @ aValue.
		self lineFrom: from to: to ]
		
	