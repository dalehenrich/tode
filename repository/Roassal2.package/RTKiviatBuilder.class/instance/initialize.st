initialization
initialize
	super initialize.

	self configureView: view.	
	self defaultAxisSize.
	
	highlight := #activated.
	polygons := #desactivated.
	axisTitle := #desactivated.
	
	axisBuilt := false.
	
	axisTitles := OrderedCollection new.

	objects := OrderedCollection new.
	
	kiviatNodes := OrderedCollection new.
	kiviatMetrics := OrderedCollection new.

