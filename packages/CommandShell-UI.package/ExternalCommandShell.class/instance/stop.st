initialize-release
stop

	self disableInputProcessing.
	self stopHandlingInterruptSignal.
	cliShell ifNotNil: [cliShell removeDependent: self].
	self isRunning: false