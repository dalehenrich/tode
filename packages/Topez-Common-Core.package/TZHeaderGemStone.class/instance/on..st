initialize-release
on: anObject
    | reflection objectClass |
    reflection := Smalltalk at: #'Reflection'.	"make lint happy"
    oop := reflection oopOf: anObject.
    size := reflection sizeOf: anObject.	"namedSize := Reflection namedSizeOf: anObject. ---> BUG #42522"
    namedSize := anObject class allInstVarNames size.
    indexedSize := size - namedSize.
    printString := [ anObject asTZString ]
        on: Error
        do: [ :ignored | 'error printing' ].
    objectClass := reflection classOf: anObject.
    classOop := reflection oopOf: objectClass.
    className := objectClass name.	"converting to String exposes the string to gc"
    anObject tzStoreNativeLiteralInHeader: self	"see if any literals can be passed through in native slot"