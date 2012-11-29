*topez-common-core
tzNodeDisplayOn: aStream
    aStream
        nextPutAll: '[';
        nextPutAll: (Reflection oopOf: self) printString;
        nextPutAll: ' sz:';
        nextPutAll: (Reflection sizeOf: self) printString;
        space;
        nextPutAll: (Text string: (Reflection classOf: self) name asString attribute: TextEmphasis bold);
        nextPutAll: ']';
        space;
        nextPutAll:
                (Text
                        string:
                            ([ self printString ]
                                on: Error
                                do: [ :ignored | 'error printing' ])
                        attribute: (TextColor color: Color blue))