sources
exampleLabelledEncapsulating
| classes allClassElements v es enclosing label g1 back |
classes := RTShape withAllSubclasses.
allClassElements := OrderedCollection new.

v := RTView new.

classes do: [ :cls | 
	es := RTBox elementsOn: cls rtmethods.
	es @ RTPopup.
	
	back := (RTBox new color: Color blue) element.
	RTNest new 
		layout: RTGridLayout new;
		on: back nest: es.

	enclosing := (RTBox new color: Color transparent) element.
	label := (RTLabel new text: #name) elementOn: cls.
	g1 := RTGroup withAll: (Array with: label with: back).
	RTNest new 
		layout: RTVerticalLineLayout new alignCenter;
		on: enclosing nest: g1.

	enclosing @ RTDraggable.

	v add: enclosing.
	v add: back.
	v addAll: es.
	v add: label.
	
	allClassElements add: enclosing.
].
RTFlowLayout on: allClassElements.

	^ v