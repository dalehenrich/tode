as yet unclassified
buildRoutesUsingNames: cityNames
	|elements routeElems|
	elements := mapBuilder view elements.
	routeElems := OrderedCollection new.
	routes do: [ :r |
		| route c1 c2 |
		c1 := elements detect: [ :e | (cityNames rtValue: e model) = (r key) ] ifNone: [ self cityNotFoundError: r key ].
		c2 := elements detect: [ :e | (cityNames rtValue: e model) = (r value)] ifNone: [ self cityNotFoundError: r value ].
		route := RTRoute from: c1 to: c2.
		route mapBuilder: mapBuilder.
		route edge + (shape copy).
		popup isNil ifFalse: [ route edge @ (RTPopup text: popup) ].
		routeElems add: route edge.
	].
	^ routeElems.