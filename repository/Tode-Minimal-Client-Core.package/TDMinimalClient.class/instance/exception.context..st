exception handling
exception: anExceptionOopType context: aContextOopType
	self session
		send: #exception:process:
		to: self todeServerOopType
		withArgs:
			{anExceptionOopType.
			aContextOopType}