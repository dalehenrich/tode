printing
basicPrintOn: aStream indent: indent
    aStream
        tab: indent;
        nextPut: self leadingChar;
        nextPutAll: oop printString;
        nextPutAll: ' sz:';
        nextPutAll: size printString;
        nextPutAll: ' cls: ';
        nextPutAll: classOop printString;
        space;
        nextPutAll: className asString;
        nextPut: self trailingChar;
        space;
        nextPutAll: printString;
        cr