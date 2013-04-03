tests
testListMethod
    | result x |
    result := self runListMethod.
    self
        assert:
            (x := result asString withSqueakLineEndings)
                =
                    'on: anObject
    | objectClass |
    objectClass := anObject class.
    indexedSize := objectClass isVariable
        ifTrue: [ anObject size ]
        ifFalse: [ 0 ].
    namedSize := objectClass allInstVarNames size.
    size := namedSize + indexedSize.
    printString := [ anObject asTZString withSeparatorsCompacted ]
        on: Error
        do: [ :ignored | ''error printing'' ].
    className := objectClass name asString'