accessing
evaluator
    evaluator 
        ifNil: [ 
            evaluator := TopezEvaluator new.
            evaluator sessionDescription: self sessionDescription ].
    ^ evaluator