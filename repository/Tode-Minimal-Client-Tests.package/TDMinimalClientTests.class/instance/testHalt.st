tests - error handling
testHalt
	self assert: false.	"probably need same treatment as debugging command error ... have a special notification that might not be needed ... general error ... 

can use proceed with halt!"
	self client debugMode: false.
	self client evaluate: 'eval `(3+4) halt`'.
	self client evaluate: 'eval `(3+4) foo`'