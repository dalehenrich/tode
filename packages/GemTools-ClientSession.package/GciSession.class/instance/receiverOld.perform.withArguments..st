Server
receiverOld: anObject perform: aString withArguments: anArray
    | ans address |
    self setSession.
    address := self library addressOfArrayOfOopsForObjects: anArray.
    ans := self
        processResult:
            (self library
                apiGciPerform: anObject asOopType
                a: aString asString
                a: address asInteger
                a: anArray size).
    ^ ans