initialize-release
shutdownInOldSession
	"The VM is about to shut down."

	self disableInputProcessing.
	self stopHandlingInterruptSignal
