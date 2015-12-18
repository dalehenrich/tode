actions
stop
	"Stop/pausing the timer "
	
	active ifTrue: [
		elapsedCycles := self elapsedCycles.
		active := false.
	].
