sources
exampleNesting2

| v shape es |
v := RTView new.
shape := RTCompositeShape new.
shape add: RTLabel new.
shape add: RTBox new.
es := shape elementsOn: RTShape withAllSubclasses.

v addAll: es.

RTNest new
	for: es
	inShape: #second
	add: [ :group :model | 
		group addAll: ((RTBox new color: Color blue) elementsOn: model rtmethods).
		RTGridLayout on: group.
	].

RTFlowLayout new on: es.
es @ RTPopup @ RTDraggable.
^ v