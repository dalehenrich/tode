accessing
evaluator
    evaluator ifNil: [ evaluator := TZNativeEvaluator new ].
    ^ evaluator