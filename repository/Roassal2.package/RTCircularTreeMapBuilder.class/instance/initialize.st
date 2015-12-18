initialization
initialize
	super initialize.
	shapeBuilder circle
		fillColor: Color white;
		borderColor: Color gray.
	popup := RTPopup new.
	baseradius := self defaultBase.
	elements := OrderedCollection new.
	rootNodes := OrderedCollection new.