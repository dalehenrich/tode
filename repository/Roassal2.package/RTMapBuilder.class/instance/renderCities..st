hooks
renderCities: aView
	|elems|
	elems := cityBuilder buildCities: cities.
	aView addAll: elems.
	^ elems