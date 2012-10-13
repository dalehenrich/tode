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
    objectClass := anObject isBehavior
        ifTrue: [ anObject ]
        ifFalse: [ anObject class ].
    indexedSize := anObject class isVariable
        ifTrue: [ anObject size ]
        ifFalse: [ 0 ].
    namedSize := anObject class allInstVarNames size.
    size := namedSize + indexedSize.
    printString := [ anObject asTZString withSeparatorsCompacted ]
        on: Error
        do: [ :ignored | ''error printing'' ].
    className := objectClass name asString'