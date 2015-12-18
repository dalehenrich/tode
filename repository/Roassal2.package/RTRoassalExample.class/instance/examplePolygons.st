sources
examplePolygons

| clss v ver d composedShape e s |
clss := RTShape withAllSubclasses.

v := RTView new.
v @ RTDraggableView.
clss do: [ :cls | 
	s := RTPolygon new.
	ver := OrderedCollection new.
	d := 0.
	(cls rtmethods sortedAs: #numberOfLinesOfCode) do: [ :m |
		ver add: (Point r: m numberOfLinesOfCode * 5 degrees: d).
		d := d + (360 / cls rtmethods size).
	 ].
	s vertices: ver.
	
	composedShape := RTCompositeShape new.
	composedShape add: s.
	composedShape add: (RTEllipse new color: (Color red)).
	e := composedShape elementOn: cls.
	e @ RTPopup @ RTDraggable.
	v add: e ].
RTFlowLayout on: v elements.

	^ v