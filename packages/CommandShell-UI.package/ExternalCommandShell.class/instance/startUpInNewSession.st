initialize-release
startUpInNewSession
	"Image has been restarted, so the references to standard input, output
	and error are no longer valid. Reinitialize to make things right."

	self setNonblockingInput.
	self setStdioStreams.
	self isRunning
		ifTrue: [self stop; start]