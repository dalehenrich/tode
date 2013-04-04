initialize-release
start

	self isRunning ifTrue: [self stop].
	self setNonblockingInput.
	self isRunning: true.
	self startHandlingInterruptSignal.
	self cliShell addDependent: self.
	self cliShell outputStream cr; nextPut: Character lf.
	self cliShell notifyPrompt.
	self enableInputProcessing
