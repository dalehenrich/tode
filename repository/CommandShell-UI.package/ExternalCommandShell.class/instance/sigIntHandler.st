accessing
sigIntHandler
	"The interrupt handler process, for catching <ctl>C from the keyboard."

	^ sigIntHandler ifNil: [sigIntHandler := self sigIntHandlerProcess]