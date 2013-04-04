evaluation
scheduleToEvaluate: aBlock
	"Evaluate aBlock, typically to create a new scheduled window. Make it work in
	both Morphic and MVC. In Morphic, just evaluate aBlock, but in MVC, put it in
	a queue for evaluation within a control loop. This method may be sent from
	a process running independent of MVC controller scheduling.
	
	Newer Squeak images implement #addDeferredUIMessage in the current
	project, eliminating the need for an #isMorphic test. This mechanism is not
	available for older images or for Pharo."

	CommandShell isMorphic
		ifTrue: [WorldState addDeferredUIMessage: aBlock]
		ifFalse: [self activeController ifNotNil: [activeController addDeferredUIMessage: aBlock]]