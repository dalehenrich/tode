initialization
initialize
	super initialize.
	shapes := OrderedCollection new.
	layout := #noLayout.
	
	"If one of the shape changes its size, should we relayout. By default no"
	automaticallyUpdateLayout := false