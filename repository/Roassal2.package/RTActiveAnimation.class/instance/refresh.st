refreshing
refresh 
	(Time now asMilliSeconds - lastRefresh asMilliSeconds) > intervalInMilliseconds
		ifTrue: [ blockToExecute value. lastRefresh := Time now. ].
	view ifNotNil: [ view canvas signalUpdate ].