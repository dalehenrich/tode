Non-Blocking
getNbResult
	"The call that initiated the non-blocking call will be one of three types:
		1. expecting nothing--e.g., GciNbAbort();
		2. expecting a Boolean--e.g., GciNbCommit();
		3. expecting an OopType--e.g., GciNbExecuteStr().
	Because we don't know how the answer should be interpreted, we simply
	return it as an Integer."

	| assoc result error actionArgs i cursor continueWith |
	i := 0.
	[
		assoc := self library nbEnd.
		assoc key < 2.
	] whileTrue: [
		i := i + 5 min: 50.
		self nbSleep: i.
	].
	result := assoc value.
	(error := self getAndClearLastError) isNil ifTrue: [^result].
	(self isCompileError: error) ifTrue: [
		GsCompileError new
			session: self;
			tag: error;
			signal.
	].
	cursor := Sensor currentCursor.
	actionArgs := error number == 2336
		ifTrue: [
			GsClientForwarderSendNotification new
				session: self;
				tag: error; 
				signal]
		ifFalse: [
			error number == 4100
				ifTrue: [
					"Session is invalid ... session died out from under us, so clean up session and throw the error"
					self release ].
			GsRuntimeError new
				session: self;
				tag: error;
				signal].
	[cursor show] fork.
	actionArgs isArray
		ifTrue: [ 
			((actionArgs at: 1) == #resume)
				ifTrue: [ continueWith := self library oopFor: (actionArgs at: 2) ]
				ifFalse: [ ^actionArgs halt: 'incorrect return value from GsRuntimeError handler']]
		ifFalse: [
			actionArgs = #'resume' 
				ifTrue: [ continueWith := self library oopIllegal asOop ]
				ifFalse: [ ^actionArgs halt: 'incorrect return value from GsRuntimeError handler'] ].
	self library 
		apiGciNbContinueWith: error context asOopType
		a:  (self library oopTypeClass fromInteger: continueWith)
		a:  1.
	^self getNbResult