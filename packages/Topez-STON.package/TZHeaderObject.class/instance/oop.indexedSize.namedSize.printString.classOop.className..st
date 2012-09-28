initialize-release
oop: iOop indexedSize: iSize namedSize: nSize printString: pString classOop: cOop className: cString
    oop := iOop.
    indexedSize := iSize.
    namedSize := nSize.
    size := namedSize + indexedSize.
    printString := pString.
    classOop := cOop.
    className := cString