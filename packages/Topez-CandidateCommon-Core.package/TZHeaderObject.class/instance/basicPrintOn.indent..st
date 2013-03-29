printing
basicPrintOn: aStream indent: indent
    aStream
        tab: indent;
        nextPut: self leadingChar;
        space;
        nextPutAll: ' sz:';
        nextPutAll: size printString;
        nextPutAll: ' cls: ';
        nextPutAll: className asString;
        nextPut: self trailingChar;
        space;
        nextPutAll: printString