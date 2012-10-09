testing
testListClassSelectors
    | result x |
    result := self evaluator
        evaluate: 'set class TZTopezNativeEvaluatorTests';
        evaluate: 'list cselectors'.
    self assert: (x := result asString) = 'classTestMethod'