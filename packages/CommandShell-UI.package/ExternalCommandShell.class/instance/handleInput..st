input processing
handleInput: str 

	| rs line |
	self lineBuffer nextPutAll: str.
	[self lineBuffer contents includes: Character lf]
		whileTrue: [rs := ReadStream on: lineBuffer contents.
			self lineBuffer: nil.
			line := rs upTo: Character lf.
			self cliShell command: line.
			self lineBuffer nextPutAll: rs upToEnd]