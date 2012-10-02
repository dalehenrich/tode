class initialization
initialize
    "super initialize.
	self initialize"

    self
        at: #'basic'
            forClass: 'TZStack'
            put: [ :stack :aStream :indent | 
                    | currentFrameIndex |
                    currentFrameIndex := stack currentFrameIndex.
                    1 to: stack indexed size do: [ :frameIndex | 
                        | stackFrame |
                        stackFrame := stack at: frameIndex.
                        frameIndex = currentFrameIndex
                            ifTrue: [ aStream nextPutAll: '==> ' ].
                        stackFrame printOn: aStream indent: indent ] ];
        at: #'basic'
            forClass: 'TZStackFrame'
            put: [ :proxy :aStream :indent | 
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
                        cr ];
        at: #'basic'
            forClasses: #('TZProxyError' 'TZProxyBreakpoint')
            put: [ :proxy :aStream :indent | 
                    proxy header printOn: aStream.
                    (proxy stack at: 1) printOn: aStream ]