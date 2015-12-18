hooks
renderIn: aView
	|countryElems routeElems|
	countryElems := self renderCountries: aView.
	cityElements := self renderCities: aView.
	routeElems := self renderRoutes: aView.
	routeElems do: [ :e | e trachelShape pushBack ].
	countryElems do: [ :e | e trachelShape pushBack ].
	aView @ RTDraggableView.