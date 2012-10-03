proxy
print: proxy on: aStream indent: indent
    <TZProxy: #'basic'>
    aStream
        tab: indent;
        nextPutAll: proxy frameIndex proxyPrintString;
        space;
        nextPutAll: proxy inClass className;
        nextPutAll: ' >> ';
        nextPutAll: proxy selector proxyPrintString;
        tab: 2;
        nextPutAll: '@' , proxy stepPoint proxyPrintString;
        nextPutAll: ' line ';
        nextPutAll: proxy stepPointLineNumber proxyPrintString;
        cr