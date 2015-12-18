hooks
render	
	| from to lineIdentifiers |
	lineIdentifiers := builder lineIdentifiers.
	identifiers do: [ :id |
		values add: (lineIdentifiers indexOf: id)
	].

	values do: [ :aValue |
		from := builder getPixelPositionOf: builder minX @ aValue.
		to := builder getPixelPositionOf: builder maxX @ aValue.
		self lineFrom: from to: to ]
		
	