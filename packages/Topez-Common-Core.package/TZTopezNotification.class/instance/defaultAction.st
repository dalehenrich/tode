exceptiondescription
defaultAction
    | evaluator |
    evaluator := self exceptionProxy topez evaluator.
    evaluator exception: self exceptionProxy.
    (evaluator class commands at: #'edit')
        value: evaluator
        value: self exceptionProxy topez
        value:
            {'edit'.
            'stack'}