initialization
initialize
	super initialize.
	shapeBuilder rectangle 
		fillColor: Color white;
		borderColor: Color gray.
	popup := RTPopup new.
	inset := self defaultInset.
	extent := self defaultExtent.
	elements := OrderedCollection new.
	rootNodes := OrderedCollection new