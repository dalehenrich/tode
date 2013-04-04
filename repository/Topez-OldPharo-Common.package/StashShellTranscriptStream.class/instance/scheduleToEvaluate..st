evaluation
scheduleToEvaluate: aBlock
	"Evaluate aBlock, typically to create a new scheduled window. Make it work in
	both Morphic."

	WorldState addDeferredUIMessage: aBlock