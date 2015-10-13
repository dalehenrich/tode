class initialization
startUp: resuming
	super startUp: resuming.
	resuming
		ifTrue: [ windowProperties ifNotNil: [ self initializeWindowBounds: windowProperties caculateWindowBounds ] ]