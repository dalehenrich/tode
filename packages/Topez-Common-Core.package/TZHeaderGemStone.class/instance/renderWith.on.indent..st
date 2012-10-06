rendering
renderWith: aTextAttribute on: aStream indent: indent
    aStream
        tab: indent;
        nextPut: self leadingChar;
        nextPutAll: self proxyOop printString;
        nextPutAll: ' sz:';
        nextPutAll: self proxySize printString.
    self classOop
        ifNotNil: [ 
            aStream
                nextPutAll: ' cls: ';
                nextPutAll: self classOop printString ].
    self className
        ifNotNil: [ 
            aStream
                space;
                nextPutAll: (Text string: self className attribute: TextEmphasis bold) ].
    aStream
        nextPut: self trailingChar;
        space;
        nextPutAll: (Text string: self proxyPrintString attribute: aTextAttribute)