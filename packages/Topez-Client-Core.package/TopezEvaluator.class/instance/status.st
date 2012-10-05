accessing
status
    status
        ifNil: [ 
            status := TZEvaluatorStatus new
                evaluator: self;
                yourself ].
    ^ status