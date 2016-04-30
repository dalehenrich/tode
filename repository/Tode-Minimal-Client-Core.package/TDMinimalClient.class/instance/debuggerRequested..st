exception handling
debuggerRequested: returnValue
	[ self session send: #openDebugger to: self todeServerOopType.
	^ returnValue ]
		on: TDMinimalDebuggerContinueFromDebuggerNotification
		do: [ :ex | ^ ex returnValue ]