public gci calls
receiverNB: receiver performNoDebug: aString withArgs: anArray
    | result address |
    self setSession.
    address := self library addressOfArrayOfOopsForObjects: anArray.
    self library
        apiGciNbPerformNoDebug: (self asOopType: receiver)
        a: aString
        a: address asInteger
        a: anArray size
        a: 0.
    result := self getNbResultAsOop.
    ^ self library localFor: result