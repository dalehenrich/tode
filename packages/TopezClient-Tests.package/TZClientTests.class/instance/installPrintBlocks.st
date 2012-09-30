private
installPrintBlocks
    "don't want to see oops in printStrings, because they are not constant"

    TZHeaderObject printBlocks
        at: #'basic'
        put: [ :proxy :aStream :indent | 
            aStream
                tab: indent;
                nextPut: proxy leadingChar;
                nextPutAll: proxy className asString;
                nextPut: proxy trailingChar;
                space;
                nextPutAll: proxy proxyPrintString;
                cr ]