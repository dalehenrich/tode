overrides
startUp: resuming
	"self startUp: true"
	
	resuming ifTrue: [Current := nil].
	