sources
exampleVeryBasic
 
	| view element |
	view := RTView new.
	element := (RTSVGPath new
		path: 'M 100 100 L 300 100 L 200 300 z';
		fillColor: Color green) element.
	element @ RTDraggable.
	view add: element.
	^ view
	