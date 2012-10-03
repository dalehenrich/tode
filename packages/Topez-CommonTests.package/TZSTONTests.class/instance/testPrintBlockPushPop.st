testing
testPrintBlockPushPop
    | obj x |
    obj := self proxyObject1.
    TZProxyObject
        at: #'test'
        forClasses: #('ProxyObject1')
        put: [ :proxy :aStream :indent | 
            aStream nextPutAll: 'Hello world'.
            proxy header printOn: aStream ].
    self
        assert:
            (x := obj printBlockNamed: #'test')
                =
                    'Hello world[1 sz:2 cls: 21 ProxyObject1] proxyObject1
'.
    TZProxyObject
        at: #'test'
        forClasses: #('ProxyObject1')
        push: [ :proxy :aStream :indent | aStream nextPutAll: 'I been pushed' ].
    self assert: (x := obj printBlockNamed: #'test') = 'I been pushed'.
    TZProxyObject pop: #'test' forClasses: #('ProxyObject1').
    self
        assert:
            (x := obj printBlockNamed: #'test')
                =
                    'Hello world[1 sz:2 cls: 21 ProxyObject1] proxyObject1
'