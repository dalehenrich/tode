printing
printOn: aStream indent: indent withOptions: options
    "[120628225 sz:5 cls: 66817 Array] anArray"

    aStream tab: indent.
    options displayOops
        ifTrue: [ 
            aStream
                nextPut: $[;
                nextPutAll: oop printString;
                nextPutAll: ' sz:';
                nextPutAll: size printString;
                nextPutAll: ' cls: ';
                nextPutAll: classOop printString;
                space;
                nextPutAll: className asString;
                nextPut: $];
                space ].
    aStream
        nextPutAll: printString;
        cr