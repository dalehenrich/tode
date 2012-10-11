running
tearDown
    super tearDown.
    TZObject printBlocks pop: #'test' forClasses: #('ProxyObject1' 'ProxyObject2' 'ProxyObject3')