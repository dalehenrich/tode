private gci calls
logStackRequested: exceptionDescription
	Transcript
		cr;
		show: '========>Server Stack: ';
		cr.
	[ self topez logStack ]
		on: GsRuntimeExceptionNotification
		do: [ :ex | Transcript show: 'Error during logStack: ' , ex description ].
	Transcript
		cr;
		show: '========>Client Stack: ';
		cr.
	Error signal: 'GemStone Server error: ' , exceptionDescription.
	^ nil