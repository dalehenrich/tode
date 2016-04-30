actions
closeAndResume: aReturnValue
	self resuming: true.
	self close.
	resumeResult := aReturnValue.
	clientProcess resume