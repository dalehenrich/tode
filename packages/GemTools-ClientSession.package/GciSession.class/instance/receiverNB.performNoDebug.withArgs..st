public gci calls
receiverNB: receiver performNoDebug: aString withArgs: anArray
    | result address argsArray |
    self setSession.
    argsArray := anArray collect: [ :each | self asOopType: each ].
    address := self library addressOfArrayOfOopsForObjects: argsArray.
    self library
        apiGciNbPerformNoDebug: (self asOopType: receiver)
        a: aString
        a: address asInteger
        a: argsArray size
        a: 0.
    result := self getNbResultAsOop.
    ^ self library localFor: result