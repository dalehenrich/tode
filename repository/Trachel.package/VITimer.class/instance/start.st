actions
start
	"Activate (start or resume) the timer.
	Ignored if timer is already active"
	
	active ifFalse: [
		startTime := self currentTime.
		active := true.
	].
