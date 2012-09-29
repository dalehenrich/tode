public gci calls
isCallInProgress

	self setSession.
	^self library apiGciCallInProgress.
	