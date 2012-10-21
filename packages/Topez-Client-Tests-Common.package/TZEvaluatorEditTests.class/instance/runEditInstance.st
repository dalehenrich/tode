standard tests
runEditInstance
    ^ self evaluator
        evaluate:
            'instance
3+4
%
edit instance'