examples
exampleDili
	"This example puts a name on Dili and let the background be moved around."

	"self exampleDili"

	| view map e p |
	view := RTView new.
	map := RTOSM new
		extent: 300 @ 300;
		ratio: 10.
	e := map elementOn: 'OSM'.
	view add: e @ RTDraggable.
	p := map latLonToRoassal: (self downloadCityCoordinatesFor: 'Dili').
	view add: ((RTLabel new text: 'Dili') element @ RTHighlightable translateTo: p).
	view canvas addMenu: 'In' callback: [ RTZoomInMove on: view ].
	view canvas addMenu: 'Out' callback: [ RTZoomOutMove on: view ].
	view @ RTDraggableView.
	view open