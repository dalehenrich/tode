sources
exampleTimeLineOfRoassal

| d popup v |
"Time line of code in Roassal"
"We compute the number of methods created for each day. We keep the information in a dictionary"
d := Dictionary new.
RTObject withAllSubclasses do: [ :c |
	c rtmethods do: [ :m |
		d at: m ageInDaysAsInteger ifAbsentPut: [ 0 ].
		d at: m ageInDaysAsInteger put: (d at: m ageInDaysAsInteger) + 1 ].
].


popup := RTPopup text: [:assoc | assoc value asString, ' methods added on day ', assoc key asString ].
v := RTView new.
v addAll: (RTEllipse elementsOn: d associations) @ popup.
RTMetricNormalizer new
	elements: v elements;
	normalizeX: #key min: 0 max: 500;
	normalizeSize: #value min: 5  max: 30;
	normalizeColor: #value;
	alphaColor: 0.3.

"We add a line from the left most element to the right most element"
v add: ((RTLine new color: Color lightGray) edgeFrom: v elements leftMostElement to: v elements rightMostElement).

"It make sense to only drag horizontally"
v @ RTHorizontalDraggableView.

"We add a small legend"
v canvas addFixedShape: (TRLabelShape new text: 'Each circle is a day. Size of the circle indicates the number of methods produced that day').
TRConstraint stickAtTheBottomOfTheWindow: v canvas fixedShapes last.

	^ v