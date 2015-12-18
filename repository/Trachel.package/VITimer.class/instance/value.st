accessing
value
	"Answer the current timer value.
	The value is normalized in range between 0 and 1
	relative to cycle length and elapsed time since timer started, e.g.
	if cycle length is 0:01:00
	and elapsed time is 0:00:30,
	the value will be 0.5 (half of a minute).
	For repeating timer the value goes from 0 to 1, then repeats over.
	For non-repeating timer, when value reaching 1, timer stops.
	If timer is inactive, answer the phase of cycle where it was stopped.
	"
	| cycles |

	active ifFalse: [ 
		^ repeat 
			ifTrue: [ elapsedCycles fractionPart ]
			ifFalse: [ elapsedCycles min: 1.0 ]
	].

	cycles := self elapsedCycles.
	active ifFalse: [
		 "non-repeating timer was stopped" 
		^ 1.0
	].	
	 
	^  cycles fractionPart.
