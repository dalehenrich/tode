Server
receiverNB: anObject perform: aString withArguments: anArray
    | ans address result |
    self setSession.
    address := self library addressOfArrayOfOopsForObjects: anArray.
    self library
        apiGciNbPerform: (anObject asOopTypeWith: self library oopTypeClass)
        a: aString asString
        a: address asInteger
        a: anArray size.
    result := self getNbResultAsOop.
    ans := self library localFor: result.
    ^ ans