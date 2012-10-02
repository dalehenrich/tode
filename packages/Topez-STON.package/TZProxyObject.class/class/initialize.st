class initialization
initialize
    "super initialize.
	self initialize"

    self
        at: #'basic'
            forClass: 'TZStack'
            put: [ :proxy :aStream :indent | 
                    | currentFrame stack indexed |
                    currentFrame := proxy named at: #'currentFrame'.
                    stack := proxy indexed.
                    indexed := proxy indexed.
                    1 to: indexed size do: [ :frameIndex | 
                        | stackFrame |
                        stackFrame := indexed at: frameIndex.
                        frameIndex = currentFrame
                            ifTrue: [ aStream nextPutAll: '==> ' ].
                        Transcript
                            cr;
                            show: frameIndex printString , ' ' , currentFrame printString.
                        stackFrame printOn: aStream indent: indent ] ];
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