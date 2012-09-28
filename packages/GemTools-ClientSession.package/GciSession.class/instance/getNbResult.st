Non-Blocking
getNbResult
    "The call that initiated the non-blocking call will be one of three types:
		1. expecting nothing--e.g., GciNbAbort();
		2. expecting a Boolean--e.g., GciNbCommit();
		3. expecting an OopType--e.g., GciNbExecuteStr().
	Because we don't know how the answer should be interpreted, we simply
	return it as an Integer."

    | assoc result error actionArgs i continueWith |
    i := 0.
    [ 
    assoc := self library nbEnd.
    assoc key < 2 ]
        whileTrue: [ 
            i := i + 5 min: 50.
            self nbSleep: i ].
    result := assoc value.
    (error := self getAndClearLastError) isNil
        ifTrue: [ ^ result ].
    GsRuntimeError new
        session: self;
        tag: error;
        signal