running
tearDown
    super tearDown.
    TZObject pop: #'test' forClasses: #('ProxyObject1' 'ProxyObject2' 'ProxyObject3')