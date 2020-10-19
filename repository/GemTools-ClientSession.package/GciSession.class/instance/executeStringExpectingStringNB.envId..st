public gci calls
executeStringExpectingStringNB: aString envId: envId
	self class gsCursor
		showWhile: [ 
			self library
				critical: [ :lib | 
					lib apiGciSetSessionId: self getSessionNumber.
					lib
						apiGciNbExecuteStrDbg_: aString
						a: self library oopNil
						a: 1 "GCI_PERFORM_FLAG_ENABLE_DEBUG"
						a: envId ].
			^ self getNbResultAsString ]