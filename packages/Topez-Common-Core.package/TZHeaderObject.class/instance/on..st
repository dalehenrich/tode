initialize-release
on: anObject
    | objectClass |
    objectClass := anObject isBehavior
        ifTrue: [ anObject ]
        ifFalse: [ anObject class ].
    indexedSize := objectClass isVariable
        ifTrue: [ anObject size ]
        ifFalse: [ 0 ].
    namedSize := anObject class allInstVarNames size.
    size := namedSize + indexedSize.
    printString := [ anObject asTZString withSeparatorsCompacted ]
        on: Error
        do: [ :ignored | 'error printing' ].
    className := objectClass name asString