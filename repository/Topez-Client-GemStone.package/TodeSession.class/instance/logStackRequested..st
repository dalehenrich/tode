private gci calls
logStackRequested: exceptionDescription
	Transcript
		cr;
		show: '========>Server Stack: ';
		cr.
	[ self topez logStack ]
		on: GsRuntimeExceptionNotification
		do: [ :ex | Transcript show: 'Error during logStack: ' , ex description ].
	self shell clientDebugMode
		ifTrue: [ 
			"https://github.com/GsDevKit/GsDevKit_home/issues/32"
			Transcript
				cr;
				show: '========>Client Stack: ';
				cr.
			Error signal: 'GemStone Server error: ' , exceptionDescription ]
		ifFalse: [ 
			Transcript cr.
			Exit signalFailure: 'GemStone Server error: ' , exceptionDescription ].
	^ nil