tests
testListClassMethod
    | result x |
    result := self runListClassMethod.
    self
        assert:
            (x := result asString withSqueakLineEndings)
                =
                    'on: anObject
    ^ self new
        on: anObject;
        yourself'