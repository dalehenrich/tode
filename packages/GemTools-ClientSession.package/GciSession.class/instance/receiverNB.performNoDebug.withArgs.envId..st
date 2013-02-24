public gci calls
receiverNB: receiver performNoDebug: aSymbol withArgs: argsArray envId: envId
  | result |
  self library
    critical: [ :lib | 
      | address |
      lib apiGciSetSessionId: self getSessionNumber.
      address := lib addressOfArrayOfOopsForObjects: argsArray.
      lib
        apiGciNbPerformNoDebug: (self asOopType: receiver)
        a: aSymbol asString
        a: address asInteger
        a: argsArray size
        a: envId ].
  result := self getNbResultAsOop.
  ^ self library localFor: result