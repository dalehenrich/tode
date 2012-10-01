public gci calls
receiverNB: receiver performNoDebug: aString withArgs: argsArray
    | result address |
    self setSession.
    address := self library addressOfArrayOfOopsForObjects: argsArray.
    self library
        apiGciNbPerformNoDebug: (self asOopType: receiver)
        a: aString
        a: address asInteger
        a: argsArray size
        a: 0.
    result := self getNbResultAsOop.
    ^ self library localFor: result