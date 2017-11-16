private
continue: contextOop replacingTopOfStackWithOop: valueOop
	"Continue execution in the external Gem following an exception,
	 replacing the top of the stack with the specified object.
	 It is an error to specify an oop not visible to the remote Gem."

	self _errorIfCallInProgress.
	self _gciLibrary
		GciNbContinueWith_: contextOop 
		_: valueOop
		_: 0
		_: nil.
	^self 
		waitForResult;
		lastResult.
