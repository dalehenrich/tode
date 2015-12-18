animations
zooming

	| v |
	v := RTView new.
	v add: (RTBox new size: 40) element @ RTHighlightable @ RTDraggable.

	v canvas addMenu: 'In' callback: [ RTZoomInMove on: v ].
	v canvas addMenu: 'Out' callback: [ RTZoomOutMove on: v ].
	v @ RTDraggableView.
	v open.
