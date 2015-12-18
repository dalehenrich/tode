action
buildCities: someCities
	|elements|
	elements := self elementsOn: someCities.
	elements do: [ :e |
		|geoPosition w h|
		w := e trachelShape encompassingRectangle width.
		h := e trachelShape encompassingRectangle height.
		geoPosition := (cities at: (name rtValue: e model)).
		e translateTo: (mapBuilder translateGeoPositionToPixels: geoPosition) * (mapBuilder scale).
		popup isNotNil ifTrue: [ e @ (RTPopup text: popup) ]].
	^ elements