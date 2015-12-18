initialization
initialize
	super initialize.
	self editLabelShape: true.
	self updateMorphExtent: true.
	events := OrderedCollection new.