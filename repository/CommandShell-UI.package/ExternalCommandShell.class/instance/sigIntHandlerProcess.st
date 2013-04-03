interrupt handling
sigIntHandlerProcess
	"The interrupt handler process, for catching <ctl>C from the keyboard."

	^ [[self sigIntSema isNil
		ifTrue:
			[(Delay forMilliseconds: 1000) wait]
		ifFalse:
			[self sigIntSema wait.
			self doInterruptCharHandler]] repeat] fork

