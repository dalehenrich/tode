standard tests
runInstanceSelfRef
    self runInstance.
    ^ self evaluator
        evaluate:
            'instance
self+4
%'