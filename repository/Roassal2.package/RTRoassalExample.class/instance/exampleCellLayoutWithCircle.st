sources
exampleCellLayoutWithCircle
	| view els |
	view := RTView new.
	els := RTEllipse new size: #yourself; elementsOn: ((1 to: 20) collect: [ :v | 50 atRandom ]).
	view addAll: els.
	
	RTCellLayout new lineItemsCount: 5; on: view elements.
	view @ RTDraggableView.
	^ view