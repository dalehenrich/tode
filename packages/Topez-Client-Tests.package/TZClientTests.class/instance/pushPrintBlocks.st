printBlock handling
pushPrintBlocks
    TZObject
        at: #'basic'
            forClass: 'TZHeaderGemStone'
            push: [ :proxy :aStream :indent | 
                    aStream
                        tab: indent;
                        nextPut: proxy leadingChar;
                        nextPutAll: proxy className asString;
                        nextPut: proxy trailingChar;
                        space;
                        nextPutAll: proxy proxyPrintString ];
        at: #'error'
            forClass: 'TZHeaderGemStone'
            put: [ :proxy :aStream :indent | 
                    aStream
                        tab: indent;
                        nextPut: proxy leadingChar;
                        nextPutAll: proxy className asString;
                        nextPut: proxy trailingChar;
                        space;
                        nextPutAll: proxy proxyPrintString ];
        at: #'breakpoint'
            forClass: 'TZHeaderGemStone'
            put: [ :proxy :aStream :indent | 
                    aStream
                        tab: indent;
                        nextPut: proxy leadingChar;
                        nextPutAll: proxy className asString;
                        nextPut: proxy trailingChar;
                        space;
                        nextPutAll: proxy proxyPrintString ]