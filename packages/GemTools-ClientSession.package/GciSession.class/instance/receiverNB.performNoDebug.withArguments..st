Server
receiverNB: anObject performNoDebug: selector withArguments: anArray
    | ans address result |
    self setSession.
    address := self library addressOfArrayOfOopsForObjects: anArray.
    self library
        apiGciNbPerformNoDebug: (anObject asOopTypeWith: self library oopTypeClass)
        a: selector asString
        a: address asInteger
        a: anArray size
        a: 0.
    result := self getNbResultAsOop.
    ans := self library localFor: result.
    ^ ans