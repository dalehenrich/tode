Library
abort

	self setSession.
	self library apiGciAbort.
	self jadeServer transactionBoundary: #abort.

	