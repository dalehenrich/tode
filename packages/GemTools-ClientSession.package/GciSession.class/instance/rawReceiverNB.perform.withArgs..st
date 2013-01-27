public gci calls
rawReceiverNB: receiver perform: aSymbol withArgs: argsArray
  self class gsCursor
    showWhile: [ 
      self library
        critical: [ :lib | 
          | address |
          lib apiGciSetSessionId: self getSessionNumber.
          address := lib addressOfArrayOfOopsForObjects: argsArray.
          lib
            apiGciNbPerform: (self asOopType: (lib oopFor: receiver))
            a: aSymbol asString
            a: address asInteger
            a: argsArray size ].
      ^ self getNbResultAsOop ]