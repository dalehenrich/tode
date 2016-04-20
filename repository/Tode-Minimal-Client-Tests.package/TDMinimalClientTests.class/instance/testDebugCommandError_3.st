tests - error handling
testDebugCommandError_3
	| cmdResult |
	self client
		debugMode: true;
		interactive: true.
	[ cmdResult := self client evaluate: 'eval `(3+4) halt`'.
	self assert: cmdResult asString equals: '[58 sz:0 SmallInteger] 7' ]
		on: TDInteractiveChooseExceptionHandling
		do: [ :ex | ex proceed ]	"Use proceed to continue through halt"