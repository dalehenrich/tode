visualization
gridView
	| view |
	view := RTView new.
	view addAll: (pairs collect: [ : pair | self elementOn: pair For: view ]).
	RTGridLayout new 
		gapSize: 0;
		lineItemsCount: self gridSize;
		on: view elements.
	view @ RTDraggableView.

	
"	zoomIn := self zoomInButtonOn: view.
	zoomOut := self zoomOutButtonOn: view.
"	
"	ROHorizontalLineLayout on: { zoomIn . zoomOut }.
"	"view @ (ROMiniMap new targetView: stack)."
	view open.