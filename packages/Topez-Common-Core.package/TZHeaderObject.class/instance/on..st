initialize-release
on: anObject
    | objectClass |
    size := anObject.
    namedSize := anObject class allInstVarNames size.
    indexedSize := size - namedSize.
    printString := [ anObject asTZString ]
        on: Error
        do: [ :ignored | 'error printing' ].
    objectClass := anObject class.
    className := objectClass name asString