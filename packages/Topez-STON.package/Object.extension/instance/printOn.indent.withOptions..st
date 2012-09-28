*topez-ston
printOn: aStream indent: indent withOptions: options
    aStream
        tab: indent;
        nextPutAll: self printString;
        cr