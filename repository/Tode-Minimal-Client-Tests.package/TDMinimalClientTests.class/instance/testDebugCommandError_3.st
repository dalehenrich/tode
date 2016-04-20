tests - error handling
testDebugCommandError_3
	| cmdResult |
	self client debugMode: true.
	[ cmdResult := self client evaluate: 'foo `3+4`'.
	self assert: cmdResult = 'Aborted...' ]
		on: TDInteractiveChooseExceptionHandling
		do: [ :ex | 
			self assert: false.	"proceed for an exception will result in an infinite loop methinks"
			ex proceed ]