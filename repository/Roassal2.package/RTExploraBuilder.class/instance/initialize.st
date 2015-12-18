initialization
initialize
	super initialize.
	nextId := 0.
	popUp := false.
	dragChildren := false.
	nodes := OrderedCollection new.
	lastAddedNodes := OrderedCollection new.
	nodeListeners := OrderedCollection new.
	lineShape := self defaultLineShape.
	self configureView: view.
	self initializeNodes.
	self defaultLayout.