class initialization
initialize
    "super initialize.
	self initialize"

    self
        at: #'error'
            forClass: 'TZHeaderObject'
            put: [ :proxy :aStream :indent | proxy renderWith: (TextColor color: Color red) on: aStream indent: indent ];
        at: #'breakpoint'
            forClass: 'TZHeaderObject'
            put: [ :proxy :aStream :indent | proxy renderWith: (TextColor color: Color magenta) on: aStream indent: indent ];
        at: #'basic'
            forClass: 'TZHeaderObject'
            put: [ :proxy :aStream :indent | proxy renderWith: (TextColor color: Color blue) on: aStream indent: indent ];
        at: #'basic'
            forClass: 'TZStack'
            put: [ :stack :aStream :indent | 
                    | currentFrameIndex |
                    currentFrameIndex := stack currentFrameIndex.
                    1 to: stack indexed size do: [ :frameIndex | 
                        | stackFrame |
                        stackFrame := stack at: frameIndex.
                        frameIndex = currentFrameIndex
                            ifTrue: [ 
                                aStream
                                    nextPutAll:
                                        (Text
                                            string: '==> '
                                            attributes:
                                                {(TextEmphasis bold).
                                                (TextColor red)}) ].
                        stackFrame renderText: #'basic' on: aStream indent: indent ] ];
        at: #'basic'
            forClass: 'TZStackFrame'
            put: [ :proxy :aStream :indent | 
                    aStream
                        tab: indent;
                        nextPutAll: proxy frameIndex proxyPrintString;
                        space;
                        nextPutAll: (Text string: proxy inClass className attribute: TextEmphasis bold);
                        nextPutAll:
                                (Text
                                        string: ' >> '
                                        attributes:
                                            {(TextEmphasis bold).
                                            (TextColor gray)});
                        nextPutAll:
                                (Text
                                        string: proxy selector proxyPrintString
                                        attributes:
                                            {(TextEmphasis bold).
                                            (TextColor blue)});
                        tab: 2;
                        nextPutAll: '@' , proxy stepPoint proxyPrintString;
                        nextPutAll: ' line ';
                        nextPutAll: proxy stepPointLineNumber proxyPrintString;
                        cr ];
        at: #'basic'
            forClasses: #('TZProxyError' 'TZProxyBreakpoint')
            put: [ :proxy :aStream :indent | 
                    proxy header renderText: proxy renderAttribute on: aStream.
                    (proxy stack at: 1) renderTextOn: aStream ]