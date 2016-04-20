exception handling
logStackRequested: returnValue
	self session send: #logExceptionStack to: self todeServerOopType.
	^ returnValue