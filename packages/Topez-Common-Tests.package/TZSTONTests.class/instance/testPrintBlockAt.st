testing
testPrintBlockAt
    | obj x |
    obj := self proxyObject1.
    self
        assert:
            (x := obj printString)
                =
                    '[1 sz:2 cls: 21 ProxyObject1] proxyObject1
 iv1			[2 sz:0 cls: 22 ProxyObject2] proxyObject2
#1 [3 sz:0 cls: 23 ProxyObject3] proxyObject3
'.
    TZProxyObject
        at: #'test'
        forClasses: #('ProxyObject1')
        put: [ :proxy :aStream :indent | 
            aStream nextPutAll: 'Hello world'.
            proxy header printOn: aStream ].
    obj := self proxyObject1.
    self
        assert:
            (x := obj printBlockNamed: #'test')
                =
                    'Hello world[1 sz:2 cls: 21 ProxyObject1] proxyObject1
'