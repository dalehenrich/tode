sources
exampleInnerShapes

	| v shape es methodElements |
	v := RTView new.
	v @ RTDraggableView.

	shape := RTCompositeShape new.
	shape add: RTLabel new.
	shape add: (RTBox new color: (Color blue alpha: 0.3)).
	shape vertical.
	
	es := shape elementsOn: RTShape withAllSubclasses.
	v addAll: es.

	es do: [ :e | 
		methodElements := RTBox new elementsOn: e model rtmethods.
		RTGridLayout on: methodElements.
		v addAll: methodElements.
		RTNest new
			on: e 
			inShape: #second 
			nest: methodElements.
	].

	RTFlowLayout on: es.
	es @ RTDraggable.
^ v