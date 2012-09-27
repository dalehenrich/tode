Library
setSession

	number == nil ifTrue: [ ^self error: 'Session no longer logged in.'].
	self library apiGciSetSessionId: number.
	