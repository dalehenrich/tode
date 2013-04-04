tests
testCurrentEngine
    | x |
    self assert: ((x := self topez currentEngine proxyClassName asString)  = 'TZEngine')