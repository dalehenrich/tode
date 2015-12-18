visualization
viewMatrix
	"display the matrix view"
	| view |
	view := RTView new.
	view @ RTDraggableView.
	view addAll:
		(pairs collect: [ : pair |
			self
				elementOn: pair 
				For: view ]).
	RTGridLayout new 
		gapSize: 0;
		lineItemsCount: self gridSize;
		on: view elements.
	view @ RTDraggableView.

	
	
"	view @ (ROMiniMap new targetView: stack).
"	view open.