proxy
print: proxy on: aStream indent: indent
    <TZProxyMethod>
    aStream
        tab: indent;
        nextPutAll: (proxy named at: #'frameIndex') proxyPrintString;
        space;
        nextPutAll: (proxy named at: #'inClass') className;
        nextPutAll: ' >> ';
        nextPutAll: (proxy named at: #'selector') proxyPrintString;
        tab: 2;
        nextPutAll: '@' , (proxy named at: #'stepPoint') proxyPrintString;
        nextPutAll: ' line ';
        nextPutAll: (proxy named at: #'stepPointLineNumber') proxyPrintString;
        cr