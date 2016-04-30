actions
closeAndResume: aReturnValue
	self resuming: true.
	self close.
	resumeResult := aReturnValue.
	self openedOnUIProcess
		ifTrue: [ UIManager default resumeUIProcess: clientProcess ]
		ifFalse: [ clientProcess resume ]