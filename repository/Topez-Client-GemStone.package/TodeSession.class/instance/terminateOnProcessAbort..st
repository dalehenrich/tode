private gci calls
terminateOnProcessAbort: error 

	[super terminateOnProcessAbort: error ] 
		on: GsRuntimeExceptionNotification 
		do:[:expected | "error thrown when processing the main gci process ... it's okay" ].
