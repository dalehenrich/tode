Private
readArguments

	| argsSize |
	argsSize := self unsignedLongAt: 56 + self maxMessageSize.
	args := Array new: argsSize.
	1 to: argsSize do: [:j | 
		| start |
		start := j - 1 * 4 + 16 + self maxMessageSize.
		args
			at: j
			put: (library localFor: (self oopTypeAt: start)).
	].
