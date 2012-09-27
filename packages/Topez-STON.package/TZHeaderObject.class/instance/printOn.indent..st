printing
printOn: aStream indent: indent
    "[120628225 sz:5 cls: 66817 Array] anArray"

    aStream
        tab: indent;
        nextPut: $[;
        nextPutAll: oop printString;
        nextPutAll: ' sz:';
        nextPutAll: size printString;
        nextPutAll: ' cls: ';
        nextPutAll: classOop printString;
        space;
        nextPutAll: className asString;
        nextPut: $];
        space;
        nextPutAll: printString;
        cr