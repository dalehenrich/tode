accessing
evaluator
    evaluator 
        ifNil: [ 
            evaluator := TZGsEvaluator new.
            evaluator sessionDescription: self sessionDescription ].
    ^ evaluator