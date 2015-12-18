accessing
elapsedCycles

	"Answer the total number of cycles passed during which timer was active since its first activation.
	For example, if timer's cycle length is 2 seconds, and its total active time is 3.5 seconds,
	a total number of elapsed cycles will be 3.5 / 2 = 1.75.
	
	Suspending timer (stopping then starting after a while) does not contributes to elapsedCycles, e.g.:
	for fresh timer with 4 seconds cycle, we start timer, run for 0.5 seconds, then stop it,
	wait for arbitrary amound of time, then start it again and run for extra 0.5 seconds,
	the measures elapsedCycles value will be equal to 1/4 .
	
	As you may guess, for non-repeating timer, the elapsed cycles value can never be
	greater than 1 (timer always stops at 1 and never advanced since then).
	
	Resetting timer sets elapsed cycles to zero.
	" 
	
	| cycles |
	active ifFalse: [  ^ elapsedCycles  ].

	cycles := elapsedCycles + (self elapsedTime / cycleLength).

	(repeat value not and: [ cycles  >= 1.0 ]) ifTrue: [ 
		active := false.
		^ elapsedCycles := 1.0
	].	
	^ cycles