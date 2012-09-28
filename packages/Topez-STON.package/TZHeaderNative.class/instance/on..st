initialize-release
on: anObject
    | objectClass |
    oop := '--'.
    size := anObject class isVariable
        ifTrue: [ anObject size ]
        ifFalse: [ 0 ].
    namedSize := anObject class allInstVarNames size.
    indexedSize := size - namedSize.
    printString := [ anObject printString withSeparatorsCompacted ]
        on: Error
        do: [ :ignored | 'error printing' ].
    objectClass := anObject class.
    classOop := '--'.
    className := objectClass name asString