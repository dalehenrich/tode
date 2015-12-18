sources
exampleSimpleBezier
 
	| view element |
	view := RTView new.
	element := (RTSVGPath new
		path: 'M600,800 C625,700 725,700 750,800 S875,900 900,800 z';
		fillColor: Color blue) element.
	view add: element.
	^ view
	