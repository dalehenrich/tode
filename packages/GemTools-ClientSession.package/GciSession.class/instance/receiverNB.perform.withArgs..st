public gci calls
receiverNB: receiver perform: aString withArgs: argsArray
    | result address |
    self setSession.
    address := self library addressOfArrayOfOopsForObjects: argsArray.
    self library
        apiGciNbPerform: (self asOopType: receiver)
        a: aString
        a: address asInteger
        a: argsArray size.
    result := self getNbResultAsOop.
    ^ self library localFor: result