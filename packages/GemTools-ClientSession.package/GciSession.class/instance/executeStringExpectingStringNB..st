public gci calls
executeStringExpectingStringNB: aString
  self class gsCursor
    showWhile: [ 
      self library
        critical: [ :lib | 
          lib apiGciSetSessionId: self getSessionNumber.
          lib apiGciNbExecuteStr: aString a: self library oopNil ].
      ^ self getNbResultAsString ]