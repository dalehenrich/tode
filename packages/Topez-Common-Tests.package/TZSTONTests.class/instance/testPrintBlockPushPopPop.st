testing
testPrintBlockPushPopPop
    | originalKeys keys |
    originalKeys := TZProxyGemStone printBlocks.
    TZProxyGemStone printBlocks
        at: #'test'
        forClasses: #('ProxyObject1')
        put: [ :proxy :aStream :indent | 
            aStream nextPutAll: 'Hello world'.
            proxy header printOn: aStream ].
    TZProxyGemStone printBlocks
        at: #'test'
        forClasses: #('ProxyObject1')
        push: [ :proxy :aStream :indent | aStream nextPutAll: 'I been pushed' ].
    TZProxyGemStone printBlocks pop: #'test' forClasses: #('ProxyObject1').
    keys := TZProxyGemStone printBlocks.
    self assert: originalKeys size = keys size.
    originalKeys do: [ :key | self assert: (keys includes: key) ]