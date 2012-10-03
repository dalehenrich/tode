testing
testPrintBlockPushPopPop
    | originalKeys keys |
    originalKeys := TZProxyObject printBlocks.
    TZProxyObject
        at: #'test'
        forClasses: #('ProxyObject1')
        put: [ :proxy :aStream :indent | 
            aStream nextPutAll: 'Hello world'.
            proxy header printOn: aStream ].
    TZProxyObject
        at: #'test'
        forClasses: #('ProxyObject1')
        push: [ :proxy :aStream :indent | aStream nextPutAll: 'I been pushed' ].
    TZProxyObject pop: #'test' forClasses: #('ProxyObject1').
    keys := TZProxyObject printBlocks.
    self assert: originalKeys size = keys size.
    originalKeys do: [ :key | self assert: (keys includes: key) ]