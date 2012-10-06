rendering
renderWith: aTextAttribute on: aStream indent: indent
    aStream
        tab: indent;
        nextPut: self leadingChar;
        nextPutAll: ' sz:';
        nextPutAll: self proxySize printString.
    self className
        ifNotNil: [ 
            aStream
                space;
                nextPutAll: (Text string: self className attribute: TextEmphasis bold) ].
    aStream
        nextPut: self trailingChar;
        space;
        nextPutAll: (Text string: self proxyPrintString attribute: aTextAttribute)