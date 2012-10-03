initialize-release
on: anObject
    | objectClass |
    oop := Reflection oopOf: anObject .
    size := Reflection sizeOf: anObject.
    "namedSize := Reflection namedSizeOf: anObject. ---> BUG #42522"
    namedSize := anObject class allInstVarNames size.
    indexedSize := size - namedSize.
    printString := [anObject printString] on: Error do: [:ignored | 'error printing'].
    objectClass := Reflection classOf: anObject.
    classOop := Reflection oopOf: objectClass.
    className := objectClass name asString