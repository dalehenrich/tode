private gci calls
logStackRequested: exceptionDescription
	self topez logStack.
	Error signal: 'GemStone Server error: ' , exceptionDescription.
	^ nil