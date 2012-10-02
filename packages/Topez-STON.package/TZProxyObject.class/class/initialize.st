class initialization
initialize
    "super initialize.
	self initialize"

    self
        at: #'basic'
            forClass: 'TZStackFrame'
            put: [ :proxy :aStream :indent | 
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
                        cr ];
        at: #'basic'
            forClasses: #('TZProxyError' 'TZProxyBreakpoint')
            put: [ :proxy :aStream :indent | 
                    proxy header printOn: aStream.
                    (proxy stack indexed at: 1) printOn: aStream ]