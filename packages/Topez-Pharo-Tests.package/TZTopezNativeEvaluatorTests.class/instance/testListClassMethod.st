testing
testListClassMethod
    | result x |
    result := self evaluator
        evaluate: 'set class ' , self class name asString;
        evaluate: 'list classmethod: classTestMethod'.
    self assert: (x := result asString) = 'classTestMethod
    "hello, boyd"

    ^ self'