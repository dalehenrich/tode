public gci calls
receiverNB: receiver performNoDebug: aString withArgs: argsArray
  | result |
  self library
    critical: [ :lib | 
      | address |
      lib apiGciSetSessionId: self getSessionNumber.
      address := lib addressOfArrayOfOopsForObjects: argsArray.
      lib
        apiGciNbPerformNoDebug: (self asOopType: receiver)
        a: aString
        a: address asInteger
        a: argsArray size
        a: 0 ].
  result := self getNbResultAsOop.
  ^ self library localFor: result