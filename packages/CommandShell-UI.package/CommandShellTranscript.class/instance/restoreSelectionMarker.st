command prompt
restoreSelectionMarker
	"Restore selection marker in MVC"

	| c |
	CommandShell isMorphic
		ifFalse:
			[c := self activeController.
			self scheduleToEvaluate: [c initializeSelection]]
