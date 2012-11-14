public gci calls
rawReceiverNB: receiver perform: aString withArgs: argsArray
    | address |
    self setSession.
    address := self library addressOfArrayOfOopsForObjects: argsArray.
    self library
        apiGciNbPerform: (self asOopType: (self library oopFor: receiver))
        a: aString
        a: address asInteger
        a: argsArray size.
    ^ self getNbResultAsOop