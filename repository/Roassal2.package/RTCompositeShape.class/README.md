A RTCompositeShape describes a composite shape. 

The bounds of the element depends therefore on the composition. Consider the following example:
-=-=-=-=-=-=-=-=-=-=-=-=
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
-=-=-=-=-=-=-=-=-=-=-=-=

Doing a layout does not produce overlap of names.

Shapes composed in a RTCompositeShape may be relayouted after one of them has changed its size. Consider the following example:
-=-=-=-=-=-=-=-=-=-=-=-=
	s := RTCompositeShape new.
	b1 := RTBox new color: Color green.
	b2 := RTBox new color: Color blue; size: 20.
	b3 := RTLabel new.
	s add: b1.
	s add: b2.
	s add: b3.
	s horizontal.
	s setAutomaticRelayout.
	
	e := s elementOn: 'click to expand'.
	view := RTView new.
	view add: e.
	
	e @ RTDraggable.
	e @ RTPopup.
	
	e when: TRMouseClick do: [ :ev |
		e trachelShape shapes second extent: 45 @ 45.
		e trachelShape shapes third text: 'hello'.
		view signalUpdate.
	].
	
	view open
-=-=-=-=-=-=-=-=-=-=-=-=
 