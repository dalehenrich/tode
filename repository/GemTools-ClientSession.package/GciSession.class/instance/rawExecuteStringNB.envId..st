public gci calls
rawExecuteStringNB: aString envId: envId
  self class gsCursor
    showWhile: [ 
      self library
        critical: [ :lib | 
          lib apiGciSetSessionId: self getSessionNumber.
          lib apiGciNbExecuteStr: aString a: self library oopNil a: envId ].
      ^ self getNbResultAsOop ]