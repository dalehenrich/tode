private
readArguments

	| argsSize |
	argsSize := self unsignedLongAt: 101.
	args := Array new: argsSize.
	10 < argsSize ifTrue: [self error: 'Argument count too high!'].
	1 to: argsSize do: [:i | 
		args
			at: i
			put: (library localFor: (self oopTypeAt: i - 1 * 8 + 16 + 1)).
	].
