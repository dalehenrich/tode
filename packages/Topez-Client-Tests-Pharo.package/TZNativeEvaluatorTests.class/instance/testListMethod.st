testing
testListMethod
    | result x |
    result := self evaluator
        evaluate: 'set class ' , self class name asString;
        evaluate: 'list method: evaluator'.
    self
        assert:
            (x := result asString)
                =
                    'evaluator
    evaluator ifNil: [ evaluator := TZNativeEvaluator new ].
    ^ evaluator'