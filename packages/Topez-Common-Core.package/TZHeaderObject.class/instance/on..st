initialize-release
on: anObject
    | objectClass |
    objectClass := anObject class.
    size := objectClass isVariable
        ifTrue: [ anObject size ]
        ifFalse: [ 0 ].
    namedSize := anObject class allInstVarNames size.
    indexedSize := size - namedSize.
    printString := [ anObject asTZString ]
        on: Error
        do: [ :ignored | 'error printing' ].
    className := objectClass name asString