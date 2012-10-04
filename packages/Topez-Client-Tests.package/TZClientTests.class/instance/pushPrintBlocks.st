printBlock handling
pushPrintBlocks
    TZObject
        at: #'basic'
            forClass: 'TZHeaderObject'
            push: [ :proxy :aStream :indent | 
                    aStream
                        tab: indent;
                        nextPut: proxy leadingChar;
                        nextPutAll: proxy className asString;
                        nextPut: proxy trailingChar;
                        space;
                        nextPutAll: proxy proxyPrintString;
                        cr ];
        at: #'error'
            forClass: 'TZHeaderObject'
            put: [ :proxy :aStream :indent | 
                    aStream
                        tab: indent;
                        nextPut: proxy leadingChar;
                        nextPutAll: proxy className asString;
                        nextPut: proxy trailingChar;
                        space;
                        nextPutAll: proxy proxyPrintString;
                        cr ];
        at: #'breakpoint'
            forClass: 'TZHeaderObject'
            put: [ :proxy :aStream :indent | 
                    aStream
                        tab: indent;
                        nextPut: proxy leadingChar;
                        nextPutAll: proxy className asString;
                        nextPut: proxy trailingChar;
                        space;
                        nextPutAll: proxy proxyPrintString;
                        cr ]