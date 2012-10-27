standard tests
runInstanceSelfRef
    self runInstance.
    ^ self evaluator
        evaluate:
            'inspect
self+4
%'