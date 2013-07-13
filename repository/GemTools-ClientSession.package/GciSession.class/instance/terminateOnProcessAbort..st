private gci calls
terminateOnProcessAbort: error 

	self receiverNB: error context  performNoDebug: #terminate withArgs: #(). 
