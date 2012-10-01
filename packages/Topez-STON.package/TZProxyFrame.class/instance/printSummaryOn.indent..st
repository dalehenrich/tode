printing
printSummaryOn: aStream indent: indent
    aStream
        tab: indent;
        nextPutAll: (self named at: #'frameIndex') proxyPrintString;
        space;
        nextPutAll: (self named at: #'inClass') className;
        nextPutAll: ' >> ';
        nextPutAll: (self named at: #'selector') proxyPrintString;
        tab: 2;
        nextPutAll: '@' , (self named at: #'stepPoint') proxyPrintString;
        nextPutAll: ' line ';
        nextPutAll: (self named at: #'stepPointLineNumber') proxyPrintString;
        cr