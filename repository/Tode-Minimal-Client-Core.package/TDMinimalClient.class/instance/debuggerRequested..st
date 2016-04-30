exception handling
debuggerRequested: returnValue
	[ ^ self session send: #openDebugger to: self todeServerOopType ]
		on: TDMinimalDebuggerContinueFromDebuggerNotification
		do: [ :ex | ^ ex returnValue ]