initialize-release
on: anObject
    oop := anObject asOop.
    indexedSize := anObject class isVariable
        ifTrue: [ anObject size ]
        ifFalse: [ 0 ].
    namedSize := anObject class allInstVarNames size.
    size := namedSize + indexedSize.
    printString := anObject printString.
    classOop := anObject class asOop.
    className := anObject class name asString