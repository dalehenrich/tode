public gci calls
rawReceiverNB: receiver perform: aSymbol withArgs: argsArray envId: envId
  self class gsCursor
    showWhile: [ 
      self library
        critical: [ :lib | 
          | address |
          lib apiGciSetSessionId: self getSessionNumber.
          address := lib addressOfArrayOfOopsForObjects: argsArray.
          lib
            apiGciNbPerformNoDebug: (self asOopType: (lib oopFor: receiver))
            a: aSymbol asString
            a: address asInteger
            a: argsArray size
            a: 1 "GCI_PERFORM_FLAG_ENABLE_DEBUG"
            a: envId ].
      ^ self getNbResultAsOop ]