examples
example
	"This example center the view on lat 0, lon 0."

	"self example"

	| v s e |
	v := RTView new.
	s := RTOSM new.
	e := s element.
	v add: e.
	v add: (RTBox new size: 40) element @ RTHighlightable @ RTDraggable.
	v canvas addMenu: 'In' callback: [ RTZoomInMove on: v ].
	v canvas addMenu: 'Out' callback: [ RTZoomOutMove on: v ].
	v @ RTDraggableView.
	v open