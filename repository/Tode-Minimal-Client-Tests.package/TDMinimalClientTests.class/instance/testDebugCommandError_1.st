tests - error handling
testDebugCommandError_1
	| cmdResult |
	self client debugMode: true.
	[ cmdResult := self client evaluate: 'foo `3+4`'.
	self assert: cmdResult = 'Aborted...' ]
		on: TDInteractiveChooseExceptionHandling
		do: [ :ex | ex abort ].
