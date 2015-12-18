adding
countries: objects named: aBlockOrSymbol
	countries := OrderedCollection new.
	objects do: [ :o | countries add: o ].
	countryNames := aBlockOrSymbol.
	 